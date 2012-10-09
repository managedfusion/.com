using System;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Text;
using System.Security.Cryptography;
using System.Web;
using System.Web.Configuration;
using System.Collections.Specialized;

/// <summary>
/// Summary description for PaymentNotificationHandler
/// </summary>
public class PaymentNotificationHandler : IHttpHandler
{
	#region IHttpHandler Members

	public bool IsReusable
	{
		get { return true; }
	}

	public void ProcessRequest(HttpContext context)
	{
		// read the original IPN post
		string formValues = Encoding.ASCII.GetString(context.Request.BinaryRead(context.Request.ContentLength));
		string requestFormValues = formValues + "&cmd=_notify-validate";

		// create the pay pal request
		HttpWebRequest payPalRequest = (HttpWebRequest)WebRequest.Create("https://www.paypal.com/cgi-bin/webscr");
		payPalRequest.Method = "POST";
		payPalRequest.ContentType = "application/x-www-form-urlencoded";
		payPalRequest.ContentLength = requestFormValues.Length;

		// write the request back IPN strings
		using (StreamWriter writer = new StreamWriter(payPalRequest.GetRequestStream(), Encoding.ASCII))
		{
			writer.Write(requestFormValues);
			writer.Close();
		}

		// send the request to pay pal
		using (HttpWebResponse payPayResponse = (HttpWebResponse)payPalRequest.GetResponse())
		{
			// get the response from pay pal
			using (Stream payPalResponseStream = payPayResponse.GetResponseStream())
			{
				// read the response from pay pal
				using (StreamReader reader = new StreamReader(payPalResponseStream, Encoding.UTF8))
				{
					try
					{
						string ipnStatus = reader.ReadToEnd();
						ulong testProductId = Convert.ToUInt64(context.Request.Form["item_number"]);

							using (MailMessage message = new MailMessage())
							{
								message.To.Add(WebConfigurationManager.AppSettings["AdminEmail"]);
								message.From = new MailAddress(WebConfigurationManager.AppSettings["ErrorEmail"], "Managed Fusion Support");

								message.Body = String.Empty;
								foreach (string key in context.Request.Params.Keys)
									message.Body += String.Format("{0}: {1}" + Environment.NewLine, key, context.Request.Params[key]);

								message.Subject = ipnStatus + " IPN";

								SmtpClient smtp = new SmtpClient();
								smtp.Send(message);
							}
					}
					catch (Exception exc)
					{
						using (MailMessage message = new MailMessage())
						{
							message.To.Add(WebConfigurationManager.AppSettings["AdminEmail"]);
							message.From = new MailAddress(WebConfigurationManager.AppSettings["ErrorEmail"], "Managed Fusion Support");

							message.Body = exc.ToString();
							message.Body += Environment.NewLine + "-------------------------------------------------------------------------" + Environment.NewLine;
							foreach (string key in context.Request.Params.Keys)
								message.Body += String.Format("{0}: {1}" + Environment.NewLine, key, context.Request.Params[key]);

							message.Subject = "Error: " + exc.Message;

							SmtpClient smtp = new SmtpClient();
							smtp.Send(message);
						}
					}
					finally
					{
						reader.Close();
						payPalResponseStream.Close();
						payPayResponse.Close();
					}
				}
			}
		}
	}

	#endregion
}

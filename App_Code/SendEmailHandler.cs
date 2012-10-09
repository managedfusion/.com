using System;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;

public class SendEmailHandler : IHttpHandler
{
	#region IHttpHandler Members

	public bool IsReusable
	{
		get { return true; }
	}

	public void ProcessRequest(HttpContext context)
	{
		if (context.Request.Form["javascript-enabled"] != "true")
			context.Response.Redirect(HttpStatusCode.Found, "http://spammerbegone.com");
		else {
			using (MailMessage message = new MailMessage())
			{
				string contactName = context.Request.Form["contact-name"];
				string contactEmail = context.Request.Form["contact-email"];

				message.To.Add(new MailAddress(WebConfigurationManager.AppSettings["InfoEmail"], "Managed Fusion"));
				message.To.Add(new MailAddress(contactEmail, contactName));
				message.From = new MailAddress(WebConfigurationManager.AppSettings["NoReplyEmail"], "Managed Fusion No Reply");
				message.ReplyTo = new MailAddress(contactEmail, contactName);

				message.Subject = "Web Site Information Request";
				message.IsBodyHtml = false;
				message.Body = "sent-at:" + Environment.NewLine + DateTime.Now.ToString("F") + Environment.NewLine + Environment.NewLine;
				message.Body += "sent-from:" + Environment.NewLine + "managedfusion.com" + Environment.NewLine + Environment.NewLine;

				foreach (string id in context.Request.Form.AllKeys)
					message.Body += id + ":" + Environment.NewLine + context.Request.Form[id] + Environment.NewLine + Environment.NewLine;

				SmtpClient smtp = new SmtpClient();
				smtp.Send(message);
			}

			// redirect to form
			context.Response.Redirect(HttpStatusCode.SeeOther, "/thank-you.aspx");
		}
	}

	#endregion
}
<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Error Occured" %>

<script type="text/C#" runat="server">
	protected override void OnPreInit(EventArgs e)
	{
		Response.StatusCode = 500;
		Response.StatusDescription = "Internal Server Error";
		
		base.OnPreInit(e);
	}
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<h1>Error Occured</h1>
<p>The website administrator has been alerted of this error.</p>
</asp:Content>
<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Page Not Found" %>

<script type="text/C#" runat="server">
	protected override void OnPreInit(EventArgs e)
	{
		Response.StatusCode = 404;
		Response.StatusDescription = "Not Found";
		
		base.OnPreInit(e);
	}
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<h1>Page Not Found</h1>
<p>The website administrator has been alerted of this missing page.</p>
</asp:Content>

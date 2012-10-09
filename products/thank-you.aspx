<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Products > Thank You" %>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="mainContent">

<h1>Thank You</h1>
<p>Thank you for your purchase.  You will receive an e-mail with your registration code in your e-mail box, of the e-mail you used to purchase this product.</p>

</asp:Content>

<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="postMainContent">
<!-- Google Code for purchase Conversion Page -->
<script language="javascript" type="text/javascript">
<!--
	var google_conversion_id = 1064792038;
	var google_conversion_language = "en_US";
	var google_conversion_format = "1";
	var google_conversion_color = "666666";
	if (1) {
	  var google_conversion_value = 1;
	}
	var google_conversion_label = "purchase";
//-->
</script>
<script language="javascript" type="text/javascript" src="http://www.googleadservices.com/pagead/conversion.js"></script>
<noscript>
	<img height="1" width="1" alt="Google Ad Services" src="http://www.googleadservices.com/pagead/conversion/1064792038/imp.gif?value=1&label=purchase&script=0" />
</noscript>
</asp:Content>

<%-- 
<div style="display:none;">
<form id="utmform" name="utmform">
<textarea id="utmtrans" rows="2" cols="30">
UTM:T|[order-id]|[affiliation]|[total]|[tax]|[shipping]|[city]|[state]|[country] 
UTM:I|[order-id]|[sku/code]|[productname]|[category]|[price]|[quantity]
</textarea>
</form>

<script type="text/javascript">
	__utmSetTrans();
</script>
</div>
 --%>
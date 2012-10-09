<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Products" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="subMenuContent">
	<ul id="sub-navigation">
		<li><a href="/products/url-rewriter/" rel="subsection">Url Rewriter</a></li>
		<li><a href="download.aspx" rel="download">Download</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="mainContent">
<h1>Products</h1>

<ul id="products">

<li>
<a id="url-rewriter"></a>
<div class="header-links"><span class="link-break">[</span><a href="download.aspx#url-rewriter" title="Download Managed Fusion Url Rewriter" rel="download">Download</a><span class="link-break">]</span></div>
<h2>Url Rewriter</h2>
<p>Managed Fusion Url Rewriter is a powerful URL manipulation engine based on the <a href="http://httpd.apache.org/docs/2.0/mod/mod_rewrite.html">Apache mod_rewrite</a> extention.  It is designed specifically for ASP.NET and runs on Microsoft's Internet Information Server (IIS) and Mono XPS Server and is fully supported in IIS 7.0.  Managed Fusion Url Rewriter gives you the freedom to go beyond the standard URL schemes and develop your own scheme.</p>
<p><a href="/products/url-rewriter/">Find Out More</a></p>
</li>

</ul>

</asp:Content>

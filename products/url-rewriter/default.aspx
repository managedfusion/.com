<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Products > Url Rewriter" %>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="preMainContent">
	<div id="side-navigation">
		<ul>
			<li><a href="http://www.dotnetkicks.com/kick/?url=http://managedfusion.com/products/url-rewriter/"><img src="http://www.dotnetkicks.com/Services/Images/KickItImageGenerator.ashx?url=http://managedfusion.com/products/url-rewriter/&bgcolor=FF6A00&cfgcolor=FFFFFF&cbgcolor=3778A3" border="0" alt="kick it on DotNetKicks.com" /></a></li>
			<li><a href="default.aspx" rel="index">Overview</a></li>
<%--		<li><a href="features.aspx">Features</a></li>
			<li><a href="examples.aspx">Examples</a></li>--%>
			<li><a href="documentation.aspx">Documentation</a></li>
			<li><a href="release-notes.aspx" rel="notes">Release Notes</a></li>
			<li><a href="http://www.codeplex.com/urlrewriter/Release/ProjectReleases.aspx" rel="download">Download</a></li>
			<li><a href="license.aspx" rel="license">License</a></li>
<%--		<li><a href="/products/purchase.aspx#url-rewriter" rel="buy">Purchase</a></li>--%>
		</ul>
	</div>
	
	<a href="/products/download.aspx#url-rewriter" rel="download"><img class="button" src="/images/download-url-rewriter.png" alt="Download Now: a FREE 5 rule evaluation" /></a>
	<!-- <a href="/products/purchase.aspx#url-rewriter" rel="buy"><img class="button" src="/images/purchase-now-paypal.png" alt="Purchase Now: using PayPal" /></a> -->
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="mainContent">
<h1>Url Rewriter</h1>
<p>Managed Fusion URL Rewriter is a powerful URL manipulation engine based on the <a href="http://httpd.apache.org/docs/2.0/mod/mod_rewrite.html">Apache mod_rewrite</a> 
	extension. It is designed, from the ground up to bring all the features of 
	Apache mod_rewrite to IIS 6.0 and IIS 7.0. Managed Fusion Url Rewriter works 
	with ASP.NET on Microsoft&#39;s Internet Information Server (IIS) 6.0 and Mono XPS 
	Server and is fully supported, for all languages, in IIS 7.0, including ASP.NET 
	and PHP. Managed Fusion Url Rewriter gives you the freedom to go beyond the 
	standard URL schemes and develop your own scheme.</p>

<p>URL Rewriter provides web site owners with the ability to replace URL paths and querystring into links that your users can easily remember 
	without the need for bookmarks. As an added benefit your web site becomes search engine friendly, which means higher page ranking from the search engines, 
	and should result in better lead generation.</p>
	
<h2>Advantages</h2>

<ul>
	<li>Developed by my company but unlimited <strong>FREE use for everybody</strong>.</li>
	<li>Full .NET 2.0, 3.0, and 3.5 support.</li>
	<li>Full support for IIS 6.0 and IIS 7.0 (including integrated pipelines).</li>
	<li>Fully functional Proxy and Reverse Proxy integrated in at no extra cost.</li>
	<li>Full support for Mono XPS, and the integrated Visual Studio Web Development Server, two things that ISAPI_Rewrite and Ionic Rewriter cannot claim.</li>
	<li>Create short URLs that are easy for your users to remember.</li>
	<li>Structure your site for search engine readability.</li>
	<li>Hide the implementation of your URL from the URL that is displayed to the user.</li>
	<li>Provides easy implementation for standardizing your web site to help in SEO efforts.</li>
	<li>Block hot linking of your sites content, very useful for sites that steal your images and consume your bandwidth for their gain.</li>
	<li>Proxy content of one site into directory on another site.</li>
	<li>Create a gateway server that brings together all your companies proprietary web application under one standardized schema through the proxy feature.</li>
	<li>Create dynamic host-header based sites using a single physical site.</li>
	<li>Change your ASP.NET file extensions to other extensions (i.e. .html).  This also helps in migrating old CGI technology to ASP.NET, without changing your URL structure.</li>
	<li>Return a browser-dependent content even for static files.</li>
</ul>

<h2>How does it work?</h2>

<p>Managed Fusion Url Rewriter is an HttpModule for the Microsoft ASP.NET Web 
	Framework, or IIS 7.0 Integrated Pipeline. All rules are managed in a plain text 
	using Apache mod_rewrite syntax.&nbsp; </p>
				<p>These rules provide the web request a way to validate how the requesting friendly 
					URL should be handled. Managed Fusion Url Rewriter does its best to find a 
					matching rule for the friendly URL, if found, the request is rewritten to 
					something your application understands or an HTTP redirect, to a different url, 
					is sent back to the client depending on the actions given to the rule.</p>
				<p>The result is a friendly and clean URL that completely masks your file structure 
					from the client.</p>

<p><strong>Unlike other existing URL rewriting process, Managed Fusion Url Rewrite is entirely masking the old URL so ASP.NET Form Postbacks are fully supported by this component and it uses the common Apache mod_rewrite syntax that is so popular with PHP, Cold Fusion, and Ruby.</strong></p>

</asp:Content>
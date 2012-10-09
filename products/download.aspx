<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Products > Download" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="subMenuContent">
	<ul id="sub-navigation">
		<li><a href="/products/url-rewriter/" rel="subsection">Url Rewriter</a></li>
		<li><a href="download.aspx" rel="download">Download</a></li>
	</ul>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="mainContent">

<h1>Product Downloads</h1>

<ul id="products">

<li>
<a id="url-rewriter"></a>
<div class="header-links"><span class="link-break">[</span><a href="/products/url-rewriter/release-notes.aspx" rel="notes">Release Notes</a><span class="link-break">|</span><a href="http://www.codeplex.com/urlrewriter/Release/ProjectReleases.aspx" title="Download Managed Fusion Url Rewriter" onclick="pageTracker._trackPageview('/downloads/codeplex/url-rewriter.zip');">Download</a><span class="link-break">]</span></div>
<h2>Url Rewriter</h2>
<p>
<span class="date">Sunday, June 6, 2009</span><br />
<span class="info">Version 3.0</span><br />
<a href="http://www.codeplex.com/urlrewriter/Release/ProjectReleases.aspx" title="Download Managed Fusion Url Rewriter" onclick="pageTracker._trackPageview('/downloads/codeplex/url-rewriter.zip');">Download</a>
</p>
</li>

</ul>

</asp:Content>
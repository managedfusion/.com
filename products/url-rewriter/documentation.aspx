<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Products > Url Rewriter > Documentation" %>

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
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="mainContent">
<h1>Documentation</h1>

<ul id="products">

<li>
<h2>1. Getting Started</h2>

<ol>
<li><p>To get started with Managed Fusion Url Rewriter you need to integrate the following configuration settings
   in to your web.config file.</p>
   
<pre class="csharpcode">
    <span class="rem">&lt;!-- Integrate the following in to the &lt;configuration&gt; tag --&gt;</span>
    <span class="kwrd">&lt;</span><span class="html">configSections</span><span class="kwrd">&gt;</span>
        <span class="kwrd">&lt;</span><span class="html">section</span> <span class="attr">name</span><span class="kwrd">="managedFusion.rewriter"</span> <span class="attr">type</span><span class="kwrd">="ManagedFusion.Rewriter.Configuration.ManagedFusionRewriterSectionGroup"</span><span class="kwrd">/&gt;</span>
    <span class="kwrd">&lt;/</span><span class="html">configSections</span><span class="kwrd">&gt;</span>
    <span class="kwrd">&lt;</span><span class="html">managedFusion.rewriter</span> xmlns="http://managedfusion.com/xsd/managedFusion/rewriter"<span class="kwrd">&gt;</span>
        <span class="rem">&lt;!--</span>
<span class="rem">        This is just a minimal sample configuration file that shows how to declare</span>
<span class="rem">        the configuration sections.</span>
<span class="rem">        </span>
<span class="rem">        Because an XML Schema Definition (XSD) is generated for each configuration</span>
<span class="rem">        section, it should be trivial to edit these files because you have</span>
<span class="rem">        IntelliSense on the XML definition.</span>
<span class="rem">        --&gt;</span>
    <span class="kwrd">&lt;/</span><span class="html">managedFusion.rewriter</span><span class="kwrd">&gt;</span></pre>
    <h3>For IIS 5/6:</h3>
<pre class="csharpcode">
    <span class="rem">&lt;!-- Integrate the following in to the &lt;system.web&gt;/&lt;httpModules&gt; tag --&gt;</span>
    <span class="kwrd">&lt;</span><span class="html">system.web</span><span class="kwrd">&gt;</span>
        <span class="kwrd">&lt;</span><span class="html">httpModules</span><span class="kwrd">&gt;</span>
            <span class="kwrd">&lt;</span><span class="html">add</span> <span class="attr">name</span><span class="kwrd">="RewriterModule"</span> <span class="attr">type</span><span class="kwrd">="ManagedFusion.Rewriter.RewriterModule, ManagedFusion.Rewriter"</span><span class="kwrd">/&gt;</span>
        <span class="kwrd">&lt;/</span><span class="html">httpModules</span><span class="kwrd">&gt;</span>
    <span class="kwrd">&lt;/</span><span class="html">system.web</span><span class="kwrd">&gt;</span></pre>
    <h3>For IIS 7:</h3>
<pre class="csharpcode">
    <span class="rem">&lt;!-- Integrate the following in to the &lt;system.webServer&gt; tag --&gt;</span>
    <span class="kwrd">&lt;</span><span class="html">system.webServer</span><span class="kwrd">&gt;</span>
        <span class="kwrd">&lt;</span><span class="html">validation</span> <span class="attr">validateIntegratedModeConfiguration</span><span class="kwrd">="false"</span><span class="kwrd">/&gt;</span>
        <span class="kwrd">&lt;</span><span class="html">modules</span> <span class="attr">runAllManagedModulesForAllRequests</span><span class="kwrd">="true"</span><span class="kwrd">&gt;</span>
            <span class="kwrd">&lt;</span><span class="html">add</span> <span class="attr">name</span><span class="kwrd">="RewriterModule"</span> <span class="attr">type</span><span class="kwrd">="ManagedFusion.Rewriter.RewriterModule, ManagedFusion.Rewriter"</span><span class="kwrd">/&gt;</span>
        <span class="kwrd">&lt;/</span><span class="html">modules</span><span class="kwrd">&gt;</span>
        <span class="kwrd">&lt;</span><span class="html">handlers</span><span class="kwrd">&gt;</span>
            <span class="kwrd">&lt;</span><span class="html">add</span> <span class="attr">name</span><span class="kwrd">="RewriterProxyHandler"</span> <span class="attr">preCondition</span><span class="kwrd">="integratedMode"</span> <span class="attr">verb</span><span class="kwrd">="*"</span> <span class="attr">path</span><span class="kwrd">="RewriterProxy.axd"</span> <span class="attr">type</span><span class="kwrd">="System.Web.HttpForbiddenHandler, System.Web, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"</span><span class="kwrd">/&gt;</span>
        <span class="kwrd">&lt;/</span><span class="html">handlers</span><span class="kwrd">&gt;</span>
    <span class="kwrd">&lt;/</span><span class="html">system.webServer</span><span class="kwrd">&gt;</span></pre></li>
<li>And add the following files to your web application /bin directory.

   <ol style="list-style-type: lower-alpha">
		<li>ManagedFusion.Rewriter.dll</li>
   <li>ManagedFusion.Rewriter.pdb</li></ol></li>
  
<li>And create a rules file named 'ManagedFusion.Rewriter.rules' (which is just a plain text file)
   If you are converting your Apache rules over from .htaccess then you just need to copy everything between
   the &lt;IfModule mod_rewrite.c&gt; ... &lt;/IfModule&gt; tags in your .htaccess file.</li>
</ol>
<h2>2. Available Rules</h2>

<p>All the following rules defined at <a href="http://httpd.apache.org/docs/2.0/mod/mod_rewrite.html" target="_blank">http://httpd.apache.org/docs/2.0/mod/mod_rewrite.html</a> are supported.</p>

<ol><li>RewriteBase</li>
<li>RewriteCond</li>
<li>RewriteEngine</li>
<li>RewriteRule</li>
<li>RewriteLog</li>
<li>RewriteLogLevel</li>
</ol>

<h2>3. Enabling wildcards pages in IIS 5/6</h2>

<p>If you are using IIS 5 or 6 then you will want to enable wildcards to gain the full functionality of the Managed Fusion Url Rewriter, 
you can do so by adding a new application mapping to your websites IIS settings.  You should note that if you use the server built in 
to Visual Studio or you use IIS 7 you do not need to follow these directions.</p>

<p>** This solution works only if your website is using ASP.NET server pages and not mixing with other dynamic server pages such as ASP and PHP.</p>

<h3>The following instructions apply for IIS 5.</h3>

<ol><li>Open IIS and right-click on the website and select 'properties'.</li>
					<li>Click the 'Configuration' button under Application Settings section</li>
					<li>Click the 'Add' button to create a new application mapping</li>
					<li>Set the executable textbox to aspnet_isapi.dll file location. for .net 2.0, 3.0, 3.5: 
						<ul>
							<li>C:\Windows\Microsoft.NET\Framework\v2.0.50727\aspnet_isapi.dll</li>
						</ul>
					</li>
					<li>Set the extension textbox to .*  to map extension-less URLs and custom extensions to the ASP.NET ISAPI Process.</li>
					<li>Make sure the checkbox 'Check that file exists' is not checked.</li>
					<li>Press 'OK' to confirm and close all the windows.</li></ol>

<h3>The following instructions apply for IIS 6.</h3>

<ol><li>Open IIS and right-click on the website and select 'properties'. </li>
	<li>Click the 'Configuration' button under Application Settings section </li>
					<li>Click the 'Insert...' button to create a new wildcard mapping </li>
					<li>Set the executable textbox to aspnet_isapi.dll file location.
    for .net 2.0, 3.0, 3.5:<ul>
							<li>&nbsp;C:\Windows\Microsoft.NET\Framework\v2.0.50727\aspnet_isapi.dll </li>
						</ul>
					</li>
					<li>Make sure the checkbox 'Verify that file exists' is not checked. </li>
					<li>Press 'OK' to confirm and close all the windows.</li></ol>
</li>
</ul>
</asp:Content>
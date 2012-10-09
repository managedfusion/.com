<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Products > Url Rewriter > Release Notes" %>

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
<h1>Release Notes for Url Rewriter</h1>
<p>This page contains the release notes for the Managed Fusion URL Rewriter and Reverse Proxy which can be downloaded from <a href="/products/download.aspx#url-rewriter" title="Managed Fusion URL Rewriter Download Section" rel="download">our download section</a>.  If you have any questions please feel free to use the <a href="/info/contact-us.aspx">contact form</a>.</p>

<div class="date">Sunday, June 7, 2009</div>
<h2>Version 3.0</h2>
<ul>
	<li><strong>Breaking Change</strong> Configuration in the web.config has been reorganized.</li>
	<li>Major rewrite to the URL Rewriter to provide better performance and more reliable logging.</li>
	<li>Major update to the proxy handler, it is much faster, and provides an exact duplication of headers from the proxied server.</li>
	<li>Fixed many issues with the chunked encoding, so you are now able to proxy web based services, such as SVN.</li>
	<li>Full rewrite of the rule, condition, and flag handling system to provide better performance and more flexibility for developers.</li>
	<li>More extensibility points have been created for developers interested in creating their own handlers for rules, conditions, and flags.</li>
	<li>More extensive testing of internal mechanics of the rewriter.</li>
	<li>Added thread safety to the Apache rule set refresh.</li>
	<li>Added initial support for Microsoft UrlRewriter IIS 7 module, this will provided a starting point for extension of the Microsoft configuration to support proxying and other more advanced Apache features.</li>
</ul>

<div class="date">Sunday, February 1, 2009</div>
<h2>Version 2.5</h2>
<ul>
	<li>Major update to the proxy handler, it is not much faster, and provides an exact duplication of headers from the proxied server.</li>
	<li>Added full support for $N and %N support in conditions and rules now.</li>
	<li>Added contexts for condition, rule, and ruleset to make transfer of common data easier for implementations of the API.</li>
	<li>Added split between async and sync proxy handler, this can now be controlled through the web.config using useAsyncProxy.</li>
	<li>Fixed issue with transfer-encoding: chuncked.</li>
</ul>

<div class="date">Thrusday, November 6, 2008</div>
<h2>Version 2.2</h2>
<ul>
	<li>Added support for RewriteCond backreferences: These are backreferences of the form %N (1 <= N <= 9), which provide access to the grouped parts (again, in parentheses) of the pattern, from the last matched RewriteCond in the current set of conditions.</li>
	<li>Updated the logging output to be more readable.</li>
</ul>

<div class="date">Wednesday, July 30, 2008</div>
<h2>Version 2.1</h2>
<ul>
	<li>Added support for <em>nosubreq</em> or <em>NS</em> flag from the original mod_rewrite specification, this only works in IIS 7.0.</li>
	<li>Fixed a bug that poped up relating to cookies when dealing with the reverse proxy.</li>
	<li>Fixed an issue where the <em>Location</em> header on a reverse proxy response wasn't getting rewritten according to the proxy rule.</li>
</ul>


<div class="date">Wednesday, June 25, 2008</div>
<h2>Version 2.0.2</h2>
<ul>
	<li>Fixed a limitation for the proxy where the number of cookies were limited to the original number received.</li>
	<li>Fixed an issue where IIS 7.0 wasn't able to create a proxy request.</li>
</ul>

<div class="date">Monday, June 23, 2008</div>
<h2>Version 2.0.1</h2>
<ul>
	<li>Fixed an issue where certain rules, in the rewriter, created a loop in the logic, this effect IIS 7.0 only.</li>
</ul>

<div class="date">Sunday, March 30, 2008</div>
<h2>Version 2.0</h2>
<ul>
	<li>Advancements have been made so that alternate RuleSets (i.e. XML) can be used in the future.</li>
	<li>Async Proxy requests are now supported.</li>
	<li>Fixed problem with encoding of the Cookies in proxy requests.</li>
	<li>Windows 2008 and Vista SP1 have been verified to work.</li>
</ul>

<div class="date">Monday, February 18, 2008</div>
<h2>Version 1.3.2</h2>
<ul>
	<li>Fixed bug where the domain of the cookie wasn't being password correctly during a Proxy Request.</li>
</ul>

<div class="date">Friday, February 1, 2008</div>
<h2>Version 1.3.1</h2>
<ul>
	<li>Fixed bug with content-type check failure for the form tag rewriting filter.</li>
	<li>Created a more robust form filter for rewriting the action property on the form element.</li>
	<li>Fixed a couple minor bugs reported by users.</li>
</ul>

<div class="date">Wednesday, January 30, 2008</div>
<h2>Version 1.3</h2>
<ul>
	<li>Url Rewriter doesn't require a purchased copy for unlimited use.  It is now donation ware.</li>
	<li>Added support for modules.</li>
	<li>Added support for adding special HTTP headers to the response through the use of the <em>H</em> or <em>header</em> rule flag.</li>
</ul>

<div class="date">Saturday, January 12, 2008</div>
<h2>Version 1.2</h2>
<ul>
	<li>Fixed a bugs relating to special conditions (-d, -f, -F).</li>
	<li>Added <em>proxy</em> rule flag.</li>
	<li>Proxy and Reverse Proxy is now full supported through the use of the <em>P</em> or <em>proxy</em> RewriteCond rule flag.</li>
	<li>IIS 7.0 intigrated pipes is now fully supported.</li>
</ul>

<div class="date">Tuesday, December 4, 2007</div>
<h2>Version 1.1</h2>
<ul>
	<li>Fixed issue with raw URL not getting rendered correctly.</li>
	<li>Fixed <em>redirect</em> so that a realtive URL is used if the domains are the same.</li>
	<li>Special conditions (lexicographically precedes, follows, and equal, -d, -f, -s, -l, -F, -U) are now supported in CondPattern.</li>
	<li>Application level rules are now supported, through the <em>LoadApplicationRules</em> and <em>RefreshApplicationRules</em> events in RewriterModule.</li>
	<li>Intigrators can now use Application level rules with out needing to purchase a license.  This grants intigrators Unlimited rules for processing requests.</li>
	<li>RewriteBase is now fully supported.</li>
</ul>

<div class="date">Tuesday, October 9, 2007</div>
<h2>Version 1.0.1</h2>
<ul>
	<li>Running in a medium trust environment is now supported.</li>
	<li><em>ornext</em> is now supported for RewriteCond.</li>
	<li>RewriteLog and RewriteLogLevel is now supported.</li>
	<li>Web.config section is changed to align with standards.</li>
</ul>

<div class="date">Monday, August 24, 2007</div>
<h2>Version 1.0</h2>
<ul>
	<li>This is the initial release.</li>
	<li>Support for Apache mod_rewrite rules including RewriteEngine, RewriteCond, RewriteRule, and RewriteBase.</li>
	<li>Support for IIS 6.0, IIS 7.0, Intigrated ASP.NET Development Server in Visual Studio 2005 and 2008, Mono XPS Server.</li>
	<li>Support for .NET 2.0 and Mono.</li>
	<li>Works with any .NET hosting environment, including GoDaddy, WebHost4Life, and numerous others that allow you to define your own web.config file.</li>
</ul>
</asp:Content>
<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion" %>

<asp:Content ID="Content2" ContentPlaceHolderID="preMainContent" runat="server">
	<div id="company-news">
		<h2>Url Rewriter News</h2>
		<p>We are proud to announce the first release of Url Rewriter, a fully functioning Url Rewriting engine that contains full support for Apache mod_rewrite syntax. Url Rewriter provides .NET Web Applications with the ability to replace your querystring URLs into short, memorable and meaningful links.</p>
		<ul>
			<li><a href="/products/url-rewriter/">Learn More</a></li>
			<li><a href="/products/download.aspx#url-rewriter">Download</a></li>
			<li><a href="/products/url-rewriter/release-notes.aspx">Release Notes</a></li>
<%--		<li><a href="/products/purchase.aspx#url-rewriter">Purchase</a></li>--%>
		</ul>		
	</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="mainContent" runat="server">
		<h1>Welcome to Managed Fusion...</h1>

		<p id="about-company">... we are here to deliver world class professional solutions for you and your company.  At Managed Fusion we beleive in taking a holistic approach in fusing your technology, marketing, and design needs together in to a solution that works.</p>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="postMainContent" runat="server">
	<div id="columns">
	<div id="products-column" class="main-column">
		<h2>Products</h2>
		<p>Our products were born out of the necessity and the need to support our services division.  Because of the lack of support, in ASP.NET, for many of the common features web developers have come to know and love. Such as our popular <a href="/products/url-rewriter/">Url Rewriter</a> that is fully Apache mod_rewrite complient.</p>
		<p><a href="/products/">more</a></p>
	</div>

	<div id="services-column" class="main-column">
		<h2>Services</h2>
		<p>We provide Marketing, Technology, and Design services.  Specializing in search engine optimization (SEO) of your organizations website to help increase your page rank and traffic to your website.</p>
		<p><a href="/services/">more</a></p>
	</div>
	
	<div id="portfolio-column" class="main-column">
		<h2>About Us</h2>
		<p>Managed Fusion is a leading information technology consulting firm serving clients throughout the United States. Our clients are some of the best-run businesses in the world in manufacturing, distribution, retail, financial services and insurance industries. Managed Fusions' consultants and staff are experts in designing, building, marketing and delivering business-driven technology solutions.</p>
		<p><a href="/info/">more</a></p>
	</div>
	</div>
</asp:Content>

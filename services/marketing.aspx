<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Services > Marketing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<h1>Marketing</h1>
<p>The shift in marketing from traditional to new Web 2.0 methods can leave many firms lacking the resources to reach potential customers.  Managed Fusion understands that this is a problem, and that is why we offer many services that can help your company gain a compeditive advantage.</p>
<ul>
	<li>Online Marketing
	<ul>
		<li>Search Engine Marketing and Optimization</li>
		<li>Online Promotions and Contents</li>
		<li>Coupon Management</li>
		<li>Bannar Ad Design</li>
		<li>Affiliat Marketing</li>
	</ul></li>
	<li>Marketing Consulting</li>
</ul>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="subMenuContent">
	<ul id="sub-navigation">
		<li><a href="technology.aspx" rel="subsection">Technology</a></li>
		<li><a href="marketing.aspx" rel="subsection">Marketing</a></li>
		<li><a href="design.aspx" rel="subsection">Design</a></li>
	</ul>
</asp:Content>

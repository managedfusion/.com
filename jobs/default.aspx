<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<form id="send-email" method="post" action="/send-email.ashx">
<input type="hidden" id="authorized" name="authorized" value="" />

<h1>Join Managed Fusion</h1>

<label>To:</label>
<address>Managed Fusion, LLC
Phoenixville, PA 19460-3377
</address>

<label for="contact-name">Applicant's Name:</label><br />
<input type="text" id="contact-name" name="contact-name" class="input" /><br />

<label for="contact-email">E-Mail:</label><br />
<input type="text" id="contact-email" name="contact-email" class="input" /><br />

<label for="contact-phone">Phone Number:</label><br />
<input type="text" id="contact-phone" name="contact-phone" class="input" /><br />

<label for="career-type">Type of career seeking with Managed Fusion:</label><br />
<select id="career-type" name="career-type" class="input">
	<optgroup label="Business">
		<option value="business-sales">Business Development</option>
	</optgroup>
	<optgroup label="Technology">
		<option value="technology-csharp">C# Developer</option>
		<option value="technology-java">Java Developer</option>
	</optgroup>
	<optgroup label="Marketing">
		<option value="marketing-search-engine">Search Engine</option>
		<option value="marketing-print">Print</option>
	</optgroup>
	<optgroup label="Design">
		<option value="design-graphics">Graphics</option>
		<option value="design-web">Web</option>
	</optgroup>
</select><br />

<label for="contact-message">Why you would want to work at Managed Fusion:</label><br />
<textarea id="contact-message" name="contact-message" rows="3" cols="20" class="input"></textarea><br />

<button type="submit">Send Message</button>
</form>

<script type="text/javascript" src="/scripts/jquery-1.2.3.min.js"></script>
<script type="text/javascript" src="/scripts/form.js"></script>
</asp:Content>


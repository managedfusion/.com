<%@ Page Language="C#" MasterPageFile="~/Standard.Master" Title="Managed Fusion > Contact Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContent" runat="server">
<form id="send-email" method="post" action="/send-email.ashx">

<h1>Contact Managed Fusion</h1>

<label>To:</label>
<address>Managed Fusion, LLC
Phoenixville, PA
<a href="tel:4843020125">(484) 302-0125</a></address>

<label for="contact-name">From (Your Name):</label><br />
<input type="text" id="contact-name" name="contact-name" class="input" /><br />

<label for="contact-email">E-Mail:</label><br />
<input type="text" id="contact-email" name="contact-email" class="input" /><br />

<label for="contact-phone">Phone Number:</label><br />
<input type="text" id="contact-phone" name="contact-phone" class="input" /><br />

<label for="contact-message">Message:</label><br />
<textarea id="contact-message" name="contact-message" rows="3" cols="20" class="input"></textarea><br />

<button type="submit">Send Message</button>
</form>

<script type="text/javascript" src="/scripts/jquery-1.2.3.min.js"></script>
<script type="text/javascript" src="/scripts/form.js"></script>
</asp:Content>

$(document).ready(function() {
	
	$("#contact-name").blur(function () {
		RequiredInput($(this));
	});
	
	$("#contact-email").blur(function () {
		RequiredInput($(this));
	});
	
	$("#contact-message").blur(function () {
		RequiredInput($(this));
	});
	
	$("#send-email").submit(function () {
		$(this).prepend('<input type="hidden" name="javascript-enabled" value="true" />');
	
		return RequiredInput($("#contact-name"))
			&& RequiredInput($("#contact-email"))
			&& RequiredInput($("#contact-message"))
			&& CheckPhone($("#contact-phone"));
	});
});

function CheckPhone (input) {
	input.removeClass("error");
	
	if (input.val() == "000-000-0000")
		input.addClass("error");
		
	return input.val() != "000-000-0000";
}

function RequiredInput (input) {
	input.removeClass("error");

	if (input.val() == "")
		input.addClass("error");
		
	return input.val() != "";
}
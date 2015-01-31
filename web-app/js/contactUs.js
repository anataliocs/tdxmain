/**
 * Contact us Javascript
 */


function showContactUsDisabledSubmit() {
    $("#contactUsFormSuccessMsg").addClass("hidden");
    $("#contactUsFormFailureMsg").addClass("hidden");

    $("#btnContactUs").prop("disabled", "disabled");
    $("#btnContactUsIcon").removeClass("fa fa-paper-plane-o fa-2x").addClass("fa fa-spinner fa-spin fa-2x");
}

function clearContactUsDisabledSubmit() {
    $("#btnContactUs").removeAttr("disabled");
    $("#btnContactUsIcon").removeClass("fa fa-circle-o-notch fa-spin fa-2x").addClass("fa fa-paper-plane-o fa-2x");

    $("#contactUsFormSuccessMsg").removeClass("hidden").html("Message has been sent successfully.");
}

function showContactUsFailureMsg() {
    $("#contactUsFormFailureMsg").removeClass("hidden").html("There was an error sending the message.  Please try again.");
}
$("#form-pay-mp").submit(function( event ) {
	var $form = $(this);
	Checkout.createToken($form, mpResponseHandler);
	event.preventDefault();
	return false;
});

var mpResponseHandler = function(status, response) {
	var $form = $('#form-pay-mp');

	if (response.error) {
		alert("An error occurred");
	} else {
		var card_token_id = response.id;
		$form.append($('<input type="hidden" id="card_token_id" name="card_token_id"/>').val(card_token_id));
		$form.get(0).submit();
	}
}
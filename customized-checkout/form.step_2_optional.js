$("input[data-checkout='cardNumber']").bind("keyup",function() {
	var bin = $(this).val().replace(/ /g, '').replace(/-/g, '').replace(/\./g, '');
	
	if (bin.length == 6){
		Checkout.getPaymentMethod(bin, setPaymentMethodInfo);
	}
});

// Sets the obtained payment method info
function setPaymentMethodInfo(status, result) {
	$.each(result, function(p, r) {
		$.each(r.labels, function(pos, label){
			if (label == "recommended_method") {
				Checkout.getInstallments(r.id, parseFloat($("#amount").val()), setInstallmentInfo);
				Checkout.getCardIssuers(r.id, showIssuers);
				return;
			}
		});
	});
};

// Shows the available installments in 'installmentsOption'
function setInstallmentInfo(status, installments) {
	var html_options = "";
	for (i=0; installments && i<installments.length; i++) {
		html_options += "<option value='"+installments[i].installments+"'>"+installments[i].installments +" de "+installments[i].share_amount+" ("+installments[i].total_amount+")</option>";
	};
	$("#installmentsOption").html(html_options);
  };

function showIssuers(status, issuers) {
	var i,options = "<select data-checkout='cardIssuerId'><option value='-1'>Elige...</option>";
	for (i=0; issuers && i<issuers.length; i++) {
		options+="<option value='"+issuers[i].id+"'>"+issuers[i].name+" </option>";
	}
	options+="</select>";

	if(issuers.length>0){
		$("#issuersOptions").html(options);
	}else{
		$("#issuersOptions").html("");
		$("#issuersField").hide();
	}
};

$("#issuersOptions").change(function() {
	var bin = $("input[data-checkout='cardNumber']").val().replace(/ /g, '').replace(/-/g, '').replace(/\./g, '').slice(0,6);
	Checkout.getInstallmentsByIssuerId(bin, this.value, parseFloat($("#amount").val()), setInstallmentInfo);
});
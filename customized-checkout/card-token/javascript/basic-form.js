<script src="https://secure.mlstatic.com/checkout/custom/beta/sdk/v1/mercadopago.js"></script>  

<script type="text/javascript">

    // Sets your Publishable Key
    Mercadopago.setPublishableKey("PUBLISHABLE_KEY");
    
    // Obtains all available identification types for use in the form
    Mercadopago.getIdentificationTypes();
    
    // Helper for event handling
    function addEvent(el, eventName, handler){

        if (el.addEventListener) {
               el.addEventListener(eventName, handler);
        } else {
            el.attachEvent('on' + eventName, function(){
              handler.call(el);
            });
        }
    };

    // Executed when you submit the form
    var doSubmit = false;
    function doPay(event){
        event.preventDefault();

        if(!doSubmit){
            var $form = document.querySelector('#pay');
            
            Mercadopago.createToken($form, sdkResponseHandler);

            return false;
        }
    };

    // Handles the response when the SDK return the card token
    function sdkResponseHandler(status, response) {

        if (status != 200 && status != 201) {
           
            alert("Verify the data");
            
        }else{
            
            var form = document.querySelector('#pay');

            var card = document.createElement('input');
            card.setAttribute('name',"card");
            card.setAttribute('type',"hidden");
            card.setAttribute('value',response.id);

            form.appendChild(card);
            
            doSubmit=true;
            
            alert("card token: "+response.id);
            
            form.submit();
        }
    };
     
    // Obtains the "bin" (first six digits) of the credit card
    function getBin(){
        var ccNumber = document.querySelector('input[data-checkout="cardNumber"]');
        return ccNumber.value.replace(/ /g, '').replace(/-/g, '').replace(/\./g, '').slice(0,6);
        
    };

    // Try to guess what payment method are you trying to pay with
    function guessingPaymentMethod(event){
        var bin = getBin(),
            amount = document.querySelector('input[data-checkout=amount]').value;
        if(event.type == "keyup"){
             if (bin.length == 6){
                Mercadopago.getPaymentMethod({"bin":bin,"amount":amount},setPaymentMethodInfo);
             }
        }else{
            setTimeout(function () {
                if (bin.length >= 6){
                    Mercadopago.getPaymentMethod({"bin":bin,"amount":amount},setPaymentMethodInfo);
                }
            },100);
        }
    };

    // Sets payment method info
    function setPaymentMethodInfo(status, response){      
        if (status == 200) {
             // do somethings ex: show logo of the payment method
            var form = document.querySelector('#pay');

            if(document.querySelector("input[name=paymentMethodId]")==null){
                var paymentMethod = document.createElement('input');
                paymentMethod.setAttribute('name',"paymentMethodId");
                paymentMethod.setAttribute('type',"hidden");
                paymentMethod.setAttribute('value',response[0].id);    

                form.appendChild(paymentMethod);
            }else{
                document.querySelector("input[name=paymentMethodId]").value = response[0].id;
            }

        }

    };

    // Attach events
    addEvent(document.querySelector('input[data-checkout="cardNumber"]'),'keyup',guessingPaymentMethod);
    addEvent(document.querySelector('input[data-checkout="cardNumber"]'),'change',guessingPaymentMethod);
    addEvent(document.querySelector('#pay'),'submit',doPay);

</script>
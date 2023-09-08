let navbar = document.querySelector('.header .flex .navbar');
let profile = document.querySelector('.header .flex .profile');

document.querySelector('#menu-btn').onclick = () => {
   navbar.classList.toggle('active');
   profile.classList.remove('active');
}

document.querySelector('#user-btn').onclick = () => {
   profile.classList.toggle('active');
   navbar.classList.remove('active');
}

window.onscroll = () => {
   navbar.classList.remove('active');
   profile.classList.remove('active');
}
document.getElementById("pay").addEventListener("click", pay_now);

function pay_now(){
   var name=jQuery('#name').val();
   var amt=jQuery('#amt').val();
   
    jQuery.ajax({
          type:'post',
          url:'payment_process.php',
          data:"amt="+amt+"&name="+name,
          success:function(result){
              var options = {
                   "key": "rzp_test_oINEP0JvUwx905", 
                   "amount": amt*100, 
                   "currency": "INR",
                   "name": "The Bakery Shop",
                   "description": "Test Transaction",
                   "image": "images/logo.png",
                   "handler": function (response){
                      jQuery.ajax({
                          type:'post',
                          url:'payment_process.php',
                          data:"payment_id="+response.razorpay_payment_id,
                          success:function(result){
                              window.location.href="thank_you.php";
                          }
                      });
                   }
               };
               var rzp1 = new Razorpay(options);
               rzp1.open();
          }
      });
   
   
}
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Samaritan - Payment </title>
    <link rel = "icon" href = "content/img/samaritan.png" type = "text"> 
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="content/css/bootstrap.css">
    <link rel='stylesheet' type='text/css' href='content/css/payment.css'>

    <script type="text/javascript">
        
        function validDate() {
          var dValue = document.getElementById("cardExpiry").value;
          var result = false;
          dValue = dValue.split('/');
          console.log(dValue)
          if(dValue.length<2)
            return false;
          var pattern = /^\d{2}$/;

          if (dValue[0] < 1 || dValue[0] > 12)
              result = true;

          if (!pattern.test(dValue[0]) || !pattern.test(dValue[1]))
              result = true;

          if (dValue[2])
              result = true;

          return !result;
        }

    </script>

</head>

<body>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");


	if(session.getAttribute("username")==null)
		response.sendRedirect("login.jsp");
%>
    <!-- Main Container -->
    <div class="container ">
        <div class="row	" style="width: 75rem;font-size:0.9em;">
            <div class="col-12 col-md-4">
                <!-- Card box -->
                <div class="card card-default credit-card-box" >
                    <div class="card-header display-table">
                        <div class="row display-tr">
                            <h6 class="card-title display-td" style="font-weight: bold;">Payment Details</h6>
                            <span class="display-td">
                                <img class="img-fluid pull-right" src="content/img/cards.png">
                            </span>
                        </div>
                    </div>
                    <!-- Body Portion -->
                    <div class="card-body">
                        <form role="form" id="payment-form" onsubmit="return validDate()" action="Gotoreceipt" method="post">

                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="donationamount">DONATION AMOUNT IN RUPEES</label>
                                        <select name="pay" id="pay">
										  <option value="1000">1000</option>
										  <option value="2000">2000</option>
										  <option value="5000">5000</option>
										  <option value="10000">10000</option>
										  <option value="50000">50000</option>
										</select>
                                    </div>
                            </div>
   	                         </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="cardNumber">CARD NUMBER</label>
                                        <div class="input-group">
                                            <input type="numeric" class="form-control" name="cardNumber"
                                                pattern="[0-9]{14}"  placeholder="Enter Valid Card Number" required
                                                autofocus />
                                             <span class="input-group-addon" style="padding:8px;height:40px;border: 1px solid">
	                                        <i class="fa fa-id-card"></i>
	                                    </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-7 col-sm-12 col-md-7">
                                    <div class="form-group">
                                        <label for="cardExpiry">
                                        	<span>EXPIRATION DATE</span></label>
                                        <input type="text" class="form-control" pattern="^[0-9/]*$"  id="cardExpiry" name="cardExpiry" placeholder="MM / YY"
                                            autocomplete="cc-exp" required />
                                    </div>
                                </div>
                                <div class="col-5 col-sm-12 col-md-5 pull-right">
                                    <div class="form-group">
                                        <label for="cardCVC">CV CODE</label>
                                        <input type="numeric" class="form-control" pattern="[0-9]{3}" name="cardCVC" placeholder="CVC"
                                            autocomplete="cc-csc" required />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="cardholder">CARD HOLDER NAME</label>
                                        <input type="text" class="form-control" pattern="([^\s][A-z0-9Ã-Å¾\s]+)" name="cardholder" required/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label for="couponCode">PAN CARD NUMBER</label>
                                        In accordance with the Finance Act 2020, 80G Tax Exemption is received on providing PAN card details of the donor. Please share your PAN details below to receive the receipt. If not provided receipt will not be shared.
                                        <input type="text" class="form-control" name="pannumber" pattern="[A-Za-z]{5}\d{4}[A-Za-z]" required />
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-12">
                                    <button class="btn btn-success btn-block" type="submit">Donate</button>
                                </div>
                            </div>
                            <div class="row" style="display:none;">
                                <div class="col-12">
                                    <p class="payment-errors"></p>
                                </div>
                            </div>
                            <h7> Don't click back button or refresh the page</h7>
                        </form>
                    </div>
                    <!-- End of Body -->
                </div>
                <!-- End of Card -->
            </div>
        </div>
    </div>
<!-- End of Main Container -->
</body>

</html>


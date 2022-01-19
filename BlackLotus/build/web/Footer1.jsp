<%-- 
    Document   : Footer1
    Created on : Feb 14, 2020, 2:57:48 PM
    Author     : Fahik's PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>JSP Page</title>
        
        <script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />

    
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <style>
        *{
  margin:0px;
  padding: 0px;
  box-sizing: border-box;
}

.separator{
  margin-top: 10px;
}

.column {
  padding-top: 10px;
  padding-bottom: 10px;
  float: left;
  width: 25%;
  /* background: #bd081c; */
}


.clr{
  clear: both;
}
.footer-wrapper{
  width: 100%;
  height: auto;
  min-height: 20%;
  margin: 25px 0 0 0;
  background-image: url(footer-bg.jpg);
  background-position: bottom;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 60%;
  overflow: hidden;
  position: absolute;
  /* padding-top: 75px; */
  bottom: 0px;
}
.footer-social-icons{
  width: 100%;
  height: auto;
  margin:auto;
  margin-bottom: 10px;
}
.footer-social-icons ul{
  margin:0px;
  padding: 0px;
  text-align: center;
}
.footer-social-icons ul li{
  display: inline-block;
  margin-right: 2px;
  width: 36px;
  height: 36px;
  text-align: center;
}
.footer-social-icons ul li a{
  color: #fff;
  display: block;
  font-size: 22px;
  text-shadow: 0px 0px 5px rgba(0,0,0,0.75);
}
.footer-social-icons ul li a i{
  line-height: 36px;
}
.footer-social-icons ul li:nth-child(1){
    background: #3b5998;
}
.footer-social-icons ul li:nth-child(2){
    background: #1da1f2;
}
.footer-social-icons ul li:nth-child(3){
    background: #25d366;
}
.footer-social-icons ul li:nth-child(4){
    background: #c32aa3;
}
.footer-social-icons ul li:nth-child(5){
    background: #007bb5;
}
.footer-social-icons ul li:nth-child(6){
    background: #ff0000;
}
.footer-social-icons ul li:nth-child(7){
    background: #db4437;
}
.footer-social-icons ul li:nth-child(8){
    background: #00aff0;
}
.footer-social-icons ul li:nth-child(9){
    background: #09b83e;
}
.footer-social-icons ul li:nth-child(10){
    background: #bd081c;
}
.footer-mid-part{
  width: 100%;
  height: auto;
  margin: auto;
}
.footer-section-one{
  width: 100%;
  height: auto;
  margin: auto;
  margin-inline-start: 10px;
  padding: 20px 10px;
  background: rgba(255,255,255,.1);
}
.footer-section-two{
  width: 100%;
  height: auto;
  margin: auto;
  padding: 20px 20px;
}
.footer-section-three{
  width: 100%;
  height: auto;
  margin: auto;
  padding: 20px 20px;
  background: rgba(255,255,255,.1);
}
.footer-heading{
   width: 100%;
  height: auto;
  margin: auto;
}
.footer-heading h2{
  font-size: 14px;
  text-align: left;
  color: #fff;
  text-transform: uppercase;
  margin: 0px;
}
.footer-contact-box{
  width: 100%;
  height: auto;;
  /* margin: auto; */
  /* margin-top: 13px; */
}
.footer-contact-icon{
  width: 25px;
  height: 25px;
  float: left;
}
.footer-contact-icon i{
  color: #fff;
  font-size: 20px;
}
.footer-contact-text{
  width: 85%;
  height: auto;
  float: left;
  margin-left: 10px;
}
.footer-contact-text p{
  font-size: 14px;
  text-align: left;
  color: #fff;
  cursor: pointer;
}
.footer-contact-text p a{
  font-size: 14px;
  text-align: left;
  color: rgb(218, 218, 218);
  text-decoration: none;

}
.footer-contact-text p:hover{
  color: #f00;
}
.footer-contact-box:hover .footer-contact-icon i{
   color: #f00;
}
.footer-contact-box:hover .footer-contact-text p a{
  color: #f00;
}
.footer-link{
  width: 100%;
  height:auto;
  margin: auto;
  margin-top: 20px;
}
.footer-link ul{
  margin:0px;
  padding: 0px;
}
.footer-link ul li{
  list-style-type: none;
  text-align: center;
  padding-top: 5px;
}
.footer-link ul li a{
  font-size: 14px;
  color: #fff;
  text-decoration: none;
   text-transform: capitalize;;
}
.footer-link ul li a:hover{
  color: #f00;
}
.footer-section-two .footer-heading h2{
  text-align: center;
}
.footer-form{
  width: 100%;
  height: auto;
  margin: auto;
  margin-top: 20px;
}
.footer-form-box{
   width: 100%;
  height: auto;
  margin: auto;
  margin-top: 5px;
}
.footer-form-style{
  width: 100%;
  height: 20px;
  border-left: none;
  border-top: none;
  border-right: none;
  border-bottom:1px solid rgba(255,255,255,.1);
  background:transparent;
  font-size: 14px;
  text-align: left;
  padding: 0px 10px;
  color: #fff;
}
.footer-form-submit-style{
  width: 129px;
  height: 25px;
  font-size: 16px;
  text-align: center;
margin-left: 40px;
  color: #fff;
  text-transform: uppercase;
  background: rgba(255,255,255,.5);
  border:none;
  margin-top: 1px;
}
.footer-form-submit-style:active{
  background: #f00;
}
.footer-bottom{
  width: 100%;
  height: auto;
  margin: auto;
  /* margin-top: 10px; */
  /* margin-bottom: 10px; */
}
.footer-bottom{
  font-size: 14px;
  text-align: center;
  color: #fff;
  position: fixed;
  bottom: 0%;
}
.top-img{
  position: absolute;
  background: url(top-divder.png);
  top: -20px;
  left: 0px;
  width: 100%;
  height: 55px;
}
h1{
  font-size: 60px;
  text-align: center;
  text-transform: uppercase;
  padding-top: 30px;
}
h1 span{
  color: #f00;
}
/*RESPONSIVE CODE*/
@media only screen and (max-width: 1199px){
  .footer-wrapper{
    position: relative;
    background-attachment: scroll;
  }
  h1{
    font-size: 4vw!important;
    padding-top: 10px;
    padding-bottom: 10px;
  }
  .footer-section-one{
    padding: 12px;
  }
  .footer-social-icons ul li{
    /* margin-bottom: 5px; */
  }
}
    </style>
    </head>
    
    <body>
        
        <div class="footer-wrapper">
        <div class="footer-social-icons">
            <ul>
                <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-whatsapp"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-instagram"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-skype"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-wechat"></i></a></li>
                <li><a href="#" target="_blank"><i class="fa fa-pinterest"></i></a></li>
            </ul>
        </div>


        <div class="column">
            <div class="footer-section-one">

                <div class="boarder">
                    <div class="footer-contact-text">
                        <p>Address: Kelley A. Fleming 196 Woodside Circle Mobile, FL 36602</p>
                    </div>

                    <div class="clr"></div>
                    <div class="separator"></div>

                    <div class="footer-contact-box">
                        <div class="footer-contact-icon"><i class="fa fa-phone"></i></div>
                        <div class="footer-contact-text">
                            <p><a href="tel:+012-3456-789">+012-3456-789</a></p>
                        </div>
                        <div class="clr"></div>
                    </div>


                    <div class="footer-contact-icon"><i class="fa fa-phone"></i></div>
                    <div class="footer-contact-text">
                        <p><a href="tel:+012-3456-789">+012-3456-789</a></p>
                    </div>
                    <div class="clr"></div>
                    <div class="separator"></div>





                    <div class="footer-contact-icon"><i class="fa fa-envelope"></i></div>
                    <div class="footer-contact-text">
                        <p><a href="mailto:info@learningtutorialpoingt.com">info@learningtutorialpoingt.com</a></p>
                    </div>
                    <div class="clr"></div>


                    <div class="footer-contact-icon"><i class="fa fa-globe"></i></div>
                    <div class="footer-contact-text">
                        <p><a href="http://www.learningtutorialpoint.com">http://www.learningtutorialpoint.com</a></p>
                    </div>
                    <div class="clr"></div>



                </div>

            </div>
        </div>



        <div class="column">
            <!-- /////////////////////////////// -->




            <div class="footer-section-two">
                <div class="footer-heading">
                    <h2>Quick Link</h2>
                </div>
                <div class="footer-link">
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Web Services</a></li>
                        <li><a href="#">Graphic Design</a></li>
                        <li><a href="#">Web Marketing</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Training</a></li>
                        <li><a href="#">Contact Us</a></li>

                    </ul>
                </div>
            </div>


            <!-- /////////////////////// -->
        </div>
        <div class="column">
            <!-- /////////////////////////////// -->


            <div class="footer-section-two">
                <div class="footer-heading">
                    <h2>Our Services</h2>
                </div>
                <div class="footer-link">
                    <ul>
                        <li><a href="#">Linux Hosting</a></li>
                        <li><a href="#">Windows Hosting</a></li>
                        <li><a href="#">Domain Registration</a></li>
                        <li><a href="#">SEO Promotion</a></li>
                        <li><a href="#">Our Plans</a></li>
                        <li><a href="#">Latest Offers</a></li>
                        <li><a href="#">Sitemap</a></li>
                        <li><a href="#">Website Maintenance</a></li>

                    </ul>
                </div>
            </div>



            <!-- /////////////////////////////// -->



        </div>

        <div class="column">
            <!--  -->

            <div class="footer-section-three">
                <div class="footer-heading">
                    <h2>Get in touch</h2>
                </div>
                <div class="footer-form">
                    <form method="post" action="#">
                        <div class="footer-form-box">
                            <input type="text" class="footer-form-style" placeholder="Name">
                        </div>
                        <div class="footer-form-box">
                            <input type="text" class="footer-form-style" placeholder="Email">
                        </div>
                        <div class="footer-form-box">
                            <input type="text" class="footer-form-style" placeholder="Phone Number">
                        </div>
                        <div class="footer-form-box">
                            <input type="submit" class="footer-form-submit-style" value="SUBMIT">
                        </div>
                    </form>
                </div>

            </div>


            <!--  -->
        </div>
        <div class="footer-bottom">
            <p style="text-align: center; background: black; color: gray; font-size: 10px;">Copyright &copy; 2017 All Rights Reserved by <a href="index.html">Black Lotus</a>.</p>


        </div>
    </div>
    </body>
</html>

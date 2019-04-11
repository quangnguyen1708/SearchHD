<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Feedback Form</title>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
        <meta name="keywords" content="Flat Flash Contact Form  Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <link rel="stylesheet" type="text/css" media="screen" href="./css/Valid.css" />
        <script src="./JS/Validate.js"></script>
        <!--web-fonts-->
        <link href='//fonts.googleapis.com/css?family=Josefin+Sans:400,100,300,600,700' rel='stylesheet' type='text/css'>
        <!--web-fonts-->
    </head>
    <body style="background: url(./images/viewphongkhach.jpg);">
        <div style="margin-top: 10px; ">
            <%@include file="header.jsp" %>
        </div>
        <!---header--->
        <div class="header">
            <!-- <h1>Feedback Form</h1> -->
        </div>
        <!---header--->
        <!---main--->
        <div class="main">
            <div class="main-section">
                <div class="login-form" style=" background-color: rgba(255, 255, 255, 0.966);
                     box-shadow: 1px 1px 1px 1px rgb(247, 123, 74);">
                    <h2>Feedback Form</h2>
                    <p>Feel free to drop us a line and we'll get back to you in 24 hours min!</p>
                    <span></span>
                    <form method="POST" enctype="multipart/form-data" id="form" name="from" onsubmit="return Validate()">
                        <h4>your name</h4>
                        <input type="text" class="user" placeholder="Name" name="yname" >
                        <h4>your phone number</h4>
                        <input type="text" class="phone" placeholder="090.234.5678" name="phone" >
                        <h4>your email address</h4>
                        <input type="text" class="email" placeholder="Example@mail.com" name="mail">
                        <h4>your message</h4>
                        <textarea class="mess" placeholder="Message" name="messag"></textarea>
                        <!-- <input type="submit" class="btn" value="send your message" onclick="validateForm()"> -->
                        <button type="button" class="btn"  onclick="validateForm()">Send Your Message</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="footer">
            <p>&copy 2019 Flat Flash Feedback Form . All rights reserved | Design by Minh Quang Nguyễn</p>
        </div>

        <!---main--->
    </body>
</html>
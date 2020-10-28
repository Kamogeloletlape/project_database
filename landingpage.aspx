<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="landingpage.aspx.cs" Inherits="cmpg321.landingpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <title>ComHelp</title>
    <link rel="shortcut icon" type="image/png" href="Images/myFav.png">
    <link rel="stylesheet" type="text/css" href="Css/landingPage.css">
    <!--<link rel="stylesheet" type="text/css" href="nav.css">-->
</head>
<body>
    <section id="landingPage">
        <div id="loader"></div>
        <div class="banner" style="background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.8)),url('Images/background.png');">
            <ul id="navbar">
                <a href="signIn.html">Sign in</a>
            </ul>
        	<div class="hero-text">
                <br />
            	<p style="font-size:60px; font-weight: bold; animation: text 5s 1;">Where suppliers<span style="color: #eeff00">,</span> vendors and buyers meet<span style="color: #eeff00">.</span></p>
                <br />
                <br />
                <br />
                <br />
                <br />
                <div class="button" id="button-7"><a href="signUp.html">Get Started</a></div>
        	</div>
		</div>
    </section>
</body>
</html>    function loadNow(opacity) {


<script>
    var loader;
        if (opacity <= 0) {
            displayContent();
        }
        else {
            loader.style.opacity = opacity;
            window.setTimeout(function () {
                loadNow(opacity - 0.1)
            }, 100);
        }
    }
    function displayContent() {
        loader.style.display = 'none';
        document.getElementById('content').style.display = 'block';
    }
    document.addEventListener("DOMContentLoaded", function () {
        loader = document.getElementById('loader');
        loadNow(2);
    });

    window.onscroll = function () { 
        myFunction() 
    };
    var navbar = document.getElementById("navbar");
    var sticky = navbar.offsetTop;

    function myFunction() {
        if (window.pageYOffset >= sticky) {
            navbar.classList.add("sticky")
        } else {
            navbar.classList.remove("sticky");
        }
        
    }
</script>
</body>
</html>

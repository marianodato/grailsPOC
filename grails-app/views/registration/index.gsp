<!DOCTYPE html>
<html>
<head>
    <title>Find Lost Pet | Registration</title>
    <link href="${resource(dir:'css', file:'bootstrap.css')}" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${resource(dir:'js', file:'jquery.min.js')}"></script>
    <!-- Custom Theme files -->
    <link href="${resource(dir:'css', file:'style.css')}" rel='stylesheet' type='text/css' media='all' />
    <!-- Custom Theme files -->
    <!-- navigation -->
    <!-- navigation -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="My Pets Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfont-->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <script src="${resource(dir:'js', file:'responsiveslides.min.js')}"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                speed: 500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>
    <script type="text/javascript" src="${resource(dir:'js', file:'move-top.js')}"></script>
    <script type="text/javascript" src="${resource(dir:'js', file:'easing.js')}"></script>
</head>
<style>
.submitLink {
    background-color: transparent;
    text-decoration:none;
    border: none;
    cursor: pointer;
    margin: 0px;
    padding: 0px 10px 0px 0px;
}

.submitLink:hover{
    color: #4597a8;
    text-decoration:none;
}
</style>
<style>
body{
    /*font-family: 'Open Sans', sans-serif;*/
    background:#4597a8;
    margin: 0 auto 0 auto;
    width:100%;
    text-align:center;
    /*margin: 20px 0px 20px 0px;*/
}

p{
    font-size:12px;
    text-decoration: none;
    color:#ffffff;
}

h1{
    font-size:1.5em;
    color:#525252;
    padding-top: 20px;
}

.header-bottom{
    background:#FFFFFF;
}

.box{
    background:white;
    width:300px;
    border-radius:6px;
    margin: 0 auto 0 auto;
    padding:0px 0px 70px 0px;
    border: #0087a8 4px solid;
}

.username{
    background:#ecf0f1;
    border: #ccc 1px solid;
    border-bottom: #ccc 2px solid;
    padding: 8px;
    width:250px;
    color:#AAAAAA;
    margin-top:10px;
    font-size:1em;
    border-radius:4px;
}

.password{
    border-radius:4px;
    background:#ecf0f1;
    border: #ccc 1px solid;
    padding: 8px;
    width:250px;
    font-size:1em;
}

.btn3{
    float:left;
    background:#27ae60;
    width:125px;  padding-top:5px;
    padding-bottom:5px;
    color:white;
    border-radius:4px;
    border: #00cc18 1px solid;

    margin-top:20px;
    margin-bottom:20px;
    margin-left:85px;
    font-weight:800;
    font-size:0.8em;
}

.btn3:hover{
    background:#2ecc71;
}

.btn2{
    float:left;
    background:#3498db;
    width:125px;  padding-top:5px;
    padding-bottom:5px;
    color:white;
    border-radius:4px;
    border: #2980b9 1px solid;

    margin-top:20px;
    margin-bottom:20px;
    margin-left:10px;
    font-weight:800;
    font-size:0.8em;
}

.btn2:hover{
    background: #37bfd2;
}

.login_div {
    position: relative;
    /* Center form on page horizontally & vertically */
    margin-top: 5%;
    margin-left: 0%;
}

.login_form {
    border-radius: 10px;
    margin: 0;
    padding: 0;
}

.message {
    font-size:1.0em;
    color:#ff0000;
}

</style>
<body>
<!-- header-section-starts -->
<div class="header">
    <div class="header-top">
        <div class="container">
            <p class="location">University of Belgrano</p>
            <p class="phonenum">
                <img src="${resource(dir:'images', file:'user.png')}" alt="" /> Not logged in
            </p>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="logo">
                <a href="${createLink(controller: 'home', action: 'index')}"><img src="${resource(dir:'images', file:'logo2.png')}" alt="" /></a>
            </div>
            <span class="menu"></span>
            <div class="top-menu">
                <ul>
                    <nav class="cl-effect-5">
                        <li><a href="${createLink(controller: 'home', action: 'index')}">Home</a></li>
                        <li><a href="${createLink(controller: 'login', action: 'index')}">Login</a></li>
                    </nav>
                </ul>
            </div>
            <!-- script for menu -->
            <script>
                $( "span.menu" ).click(function() {
                    $( ".top-menu" ).slideToggle( "slow", function() {
                        // Animation complete.
                    });
                });
            </script>
            <!-- script for menu -->
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- header-section-ends -->
<div class="slider">
    <div class="callbacks_container">
        <div class="rslides" id="slider">
            <div class="login_div">
                <form class="login_form" method="post" action="registration">
                    <div class="box">
                        <h1>Join</h1>
                        <g:if test="${message}">
                            <div name="message" id="message" class="message">${message}</div>
                        </g:if>
                        <input type="text" name="username" value="Username" pattern='(?=^.{6,20}$)^[a-zA-Z][a-zA-Z0-9]*[._-]?[a-zA-Z0-9]+$' title="Format: Only one special char (._-) allowed and it must not be at the extremas of the string. The first character cannot be a number. All the other characters allowed are letters and numbers. The total length should be between 6 and 20 chars" onFocus="field_focus(this, 'Username');" onblur="field_blur(this, 'Username');" class="username" required="required" />
                        <input type="password" name="password" value="Password" pattern='^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!#%*?&])[A-Za-z\d$@$!#%*?&]{8,}' title="Minimum 8 characters at least 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character" onFocus="field_focus(this, 'Password');" onblur="field_blur(this, 'Password');" class="username" required="required" />
                        <input type="email" name="email" value="Email" onFocus="field_focus(this, 'Email');" onblur="field_blur(this, 'Email');" class="username" required="required"/>
                        <input type="text" name="name" value="Complete Name" onFocus="field_focus(this, 'Complete Name');" onblur="field_blur(this, 'Complete Name');" class="username" required="required"/>
                        <input type='tel' name="phone_number" value="Phone Number" pattern='[\+]\d{2}[\(]\d{2}[\)]\d{4}[\-]\d{4}' title="Format: +99(99)9999-9999" onFocus="field_focus(this, 'Phone Number');" onblur="field_blur(this, 'Phone Number');" class="username" required="required">
                        <div style="text-align:left;padding-top: 10px;padding-left: 20px">
                            <input type="radio" name="gender" value="male" checked > Male<br>
                            <input type="radio" name="gender" value="female" > Female<br>
                        </div>
                        <g:submitButton disabled="false" class="btn3" id="sign_up" name="sign_up" value="Sign Up"/> <!-- End Btn2 -->
                    </div> <!-- End Box -->
                </form>
            </div>
        </div>
    </div>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
<script>
    function field_focus(field, value)
    {
        if(field.value == value)
        {
            field.value = '';
        }
    }

    function field_blur(field, value)
    {
        if(field.value == '')
        {
            field.value = value;
        }
    }

    //Fade in welcome box
    $(document).ready(function(){
        $('.box').hide().fadeIn(1000);
    });

    //Stop click event
    /*$('a').click(function(event){
     event.preventDefault();
     });*/

</script>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myrtle-beach-Italian-Ice'Contact.aspx.cs" Inherits="Louigee.myrtle_beach_Italian_Ice_Contact" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />

    <title>Uncle Louie Gee Italian Ice - Myrtle Beach - Contact</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script type="text/javascript">
       

    </script>
    <style type="text/css">
        .title-border {
            top: 0px;
            background-image: url('/images/border.png');
            background-repeat: repeat-x;
            height: 40px;
        }

        a:hover {
            color: blue;
        }
    </style>
    
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="title-border"></div>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <img src="images/Louigee.png" />
            <img src="images/title.png" />
        </div>
    </div>
    <table style="padding-top:30px; width: 1450px;">
        <tr style="vertical-align: top;">
            <td style="width:20%">
                <div><a href="#" style="padding-top:25px;text-decoration:none;font-weight:bold; font-family:'Brush Script MT';font-size:28pt;">Our Products</a></div>
                <div><a href="myrtle-beach-Italian-Ice'Contact.html" style="padding-top:25px;text-decoration:none;font-weight:bold; font-family:'Brush Script MT';font-size:28pt;">Contact Us</a></div>
                <div><a href="#" style="padding-top:25px;text-decoration:none;font-weight:bold; font-family:'Brush Script MT';font-size:28pt;">About Us</a></div>
                <div class="w3-round w3-pale-blue w3-border w3-border-black" style="padding-left: 15px;width: 200px; padding-top: 5px;">
                    <span class="w3-text-red font-weight-bold" style="font-family: cursive; font-size: 20pt;text-shadow:1px 1px 0 black">Calendar</span>
                    <div id="divDates" style="padding-top: 15px; overflow:auto;overflow-x: hidden;">

                    </div>
                </div>
            </td>
            <td style="width:65%">
                <div style="font-size: 14pt; text-align: left; font-family: Arial;">
                    
                    <table style="width: 700px;">
                        <tr>
                            <td>Email:&nbsp;</td>
                            <td colspan="3"><input style="width: 600px;" type="text" id="email"/></td>
                        </tr>
                        <tr>
                            <td>Name:&nbsp;</td>
                            <td><input type="text" id="name"/></td>
                            <td>Phone:&nbsp;</td>
                            <td><input type="text" id="phone"/></td>
                        </tr>
                        <tr>
                            <td>Message:&nbsp;</td>
                            <td colspan="3"><textarea style="width: 600px;"  id="email"></textarea></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="3" style="text-align: center;"><button type="button" style="width: 600px;">Email Us</button></td>
                        </tr>
                    </table>
                </div>
            </td>
            <td style="width:25%">
                <img src="images/ginos.png" />
            </td>
        </tr>
    </table>
    <div id="footer" class="title-border"></div>

</div>
</body>
</html>

<script type="text/javascript">
    $( document ).ready(function() {
        var file = 'ulmb_cal.txt';


        //  load calenedar
        $.get(file,function(txt){
            var lines = txt.split("\n");
            for (var i = 0, len = lines.length; i < len; i++) {
                var stuff = lines[i].split(",");
                var dt = '<div style="padding-bottom:15px;">';
                dt = dt + '<span style="font-weight:bold;">' + stuff[0] + '</span><br>';
                dt = dt + '<span>Where: ' + stuff[1] + '</span><br>';
                dt = dt + '<span>From: ' + stuff[2] + '</span><br>';
                dt = dt + '<span>Until: ' + stuff[3] + '</span><br>';
                dt = dt + '</div>';
                $('#divDates').append(dt);
            }
        });

           
    });
        
</script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tra cứu hóa đơn</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
<!--        <link rel="stylesheet" href="css/responsive.css"/>	-->
        <script src="JS/resposive.js"></script>
        <style>
            /* Định dạng menu */
            .topnav {
                background-color: rgb(247, 125, 81); 
                overflow: hidden;
                box-shadow: 0px 2px 2px rgba(0,0,0,0.5); /*Đổ bóng cho menu*/
/*                width: 1536px; */

                margin-top: -10px; 
            }

            /* Style the links inside the navigation bar */
            .topnav a {
                float: left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 18px;
            }

            /* Change the color of links on hover */
            .topnav a:hover {
                color: rgb(247, 125, 81);
                background-color: white;
                border-radius: 3px;
                font-weight: bold;
            }

            /* Hide the link that should open and close the topnav on small screens */
            .topnav .icon {
                display: none;
            }

            /*Thiết lập Resposive - cấu hình menu khi độ rộng màn hình tối đa là 600px */
            @media screen and (max-width: 600px) {
                .topnav a:not(:first-child) {display: none;}
                .topnav a.icon {
                    float: right;
                    display: block;
                }
            }

            /* The "responsive" class is added to the topnav with JavaScript when the user clicks on the icon. This class makes the topnav look good on small screens (display the links vertically instead of horizontally) */
            @media screen and (max-width: 600px) {
                .topnav.responsive {position: relative;}
                .topnav.responsive a.icon {
                    position: absolute;
                    right: 0;
                    top: 0;
                }
                .topnav.responsive a {
                    float: none;
                    display: block;
                    text-align: left;
                }
            }
        </style>
    </head>
    <body>
        <div class="topnav" id="myTopnav">
            <a href="index.jsp">Trang Chủ</a>
            <a href="searchHoaDonInt.jsp">Hóa Đơn Interner</a>
            <a href="searchHoaDonDV.jsp">Hóa Đơn Dịch Vụ</a>
            <a href="searchHoaDonSH.jsp">Hóa Đơn Sinh Hoạt</a>
            <a href="Feedback.jsp">Góp Ý</a>
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">☰</a>
        </div>
    </body>
</html>

<%@page import="dao.InternetDAO"%>
<%@page import="entity.HoaDonInternet"%>
<%-- 
    Document   : searchHoaDonSH
    Created on : Apr 3, 2019, 8:08:12 AM
    Author     : Admin
--%>
<%@page import="org.hibernate.dialect.H2Dialect"%>
<%@page import="dao.KHDAO"%>
<%@page import="controller.ttkh"%>
<%@page import="duan.DAO.ThongTinKhachHangDAO"%>
<%@page import="entity.ThongTinKhachHang"%>
<%@page import="controller.ttkh"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="entity.HoaDonSinhHoat"%>
<%@page import="dao.HoaDonSHDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Chung cư Ple Ple Ple....!!!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/search.css" rel="stylesheet" type="text/css">

    </head>
    <%  

        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);


    %>


 
     <body> 
        <%@include file="header.jsp" %>
        <form action="InternetSeverlet">
            <h2 style=" text-align: center; ">TRA CỨU HÓA ĐƠN INTERNET</h2> 
            <div class="box">                

                <div class="pod">
                    <input type="text" name="txtsearch" class="search" placeholder="Search ID" value="" required >
                    <input type="submit" class="button1" value="Search" name="action" />
                </div> <br>              

               
                <% String sdt = request.getParameter("txtsearch");

                    for (HoaDonInternet it : new InternetDAO().ctit(sdt)) {%>
                <div class="colum1";  style="float: left; border-radius:5px ;padding: 15px;box-shadow: 0px 0px 5px gray;
                     margin: 10px auto;
                     margin-left: 19px;
                     text-align: left;
                
                     ">
                    <p style="text-align: center; font-weight: bold;">HÓA ĐƠN PHÍ INTERNET</p>
                    <p>Mã KH: <%=it.getCanHo().getKhachHang().getKhachHangId()%></p>  
                    <p>Tên KH: <%=it.getCanHo().getKhachHang().getTenKhachHang()%></p> 
                    <p>Số Điện Thoại: <%=it.getCanHo().getKhachHang().getSoDt()%> </p>
                    <p>Mã Căn Hộ: <%=it.getCanHo().getCanHoId()%></p>                   
                    <p>Mã Hóa Đơn Internet: <%=it.getHoaDonInternetId()%></p>
                    <p>Ngày Lập: <%=it.getNgayThang()%></p>
                    <p style="font-weight: bold; color: orange">Tổng Tiền: <%=nf.format(it.getTien())%> VNĐ</p>                               
                </div>

                <%
                    }
                %>


            </div>
            <!--           center;" id="foot1"> Chung cư Ple Ple Ple....!!!</footer>-->
        </form>



    </body>
</html>

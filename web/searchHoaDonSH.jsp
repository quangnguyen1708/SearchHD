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
        <link rel="stylesheet" href="css/index.css" type="text/css"/>
    </head>
    <%

        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);


    %>

    <body> 
        <%@include file="header.jsp" %>
        <form action="ttkh">
            <h2 style=" text-align: center; ">TRA CỨU HÓA ĐƠN SINH HOẠT</h2> 
            <div class="box">                

                <div class="pod">
                    <input type="text" name="txtsearch" class="search" placeholder="Search ID" value="" required >
                    <input type="submit" class="button1" value="Search" name="action" />
                </div> <br>              

                <% String sdt = request.getParameter("txtsearch");

                    for (HoaDonSinhHoat sh : new KHDAO().ctsh(sdt)) {%>
                <div class="colum1" style="border-radius:5px ;padding: 15px;box-shadow: 0px 0px 5px gray;
                     margin: 10px auto;
                     margin-left: 10px;
                     text-align: left;
                     ">  
                    <p style="text-align: center; font-weight: bold;">HÓA ĐƠN PHÍ SINH HOẠT</p>
                    <p>Mã KH: <%=sh.getCanHo().getKhachHang().getKhachHangId()%></p>  
                    <p>Tên KH: <%=sh.getCanHo().getKhachHang().getTenKhachHang()%></p> 
                    <p>Số Điện Thoại: <%=sh.getCanHo().getKhachHang().getSoDt()%> </p>
                    <p>Mã Căn Hộ: <%=sh.getCanHo().getCanHoId()%></p>
                    <p>Ngày Lập: <%=sh.getNgayThang()%></p>
                    <p>Mã Hóa Đơn Điện: <%=sh.getMaHddien()%></p>
                    <p>Chỉ Số Điện Ban Đầu: <%=sh.getChiSoDienBanDau()%></p>
                    <p>Chỉ Số Điện Cuối: <%=sh.getChiSoDienCuoi()%></p>
                    <p style="font-weight: bold; color: orange">Tiền Điện: <%=nf.format(sh.getTienDien())%> VNĐ</p>
                    <p>Mã Hóa Đơn Nước: <%=sh.getMaHdnuoc()%></p>
                    <p>Chỉ Số Nước Ban Đầu: <%=sh.getChiSoNuocBanDau()%></p>
                    <p>Chỉ Số Nước Cuối: <%=sh.getChiSoNuocCuoi()%></p>
                    <p style="font-weight: bold; color: orange">Tiền Nước: <%=nf.format(sh.getTienNuoc())%> VNĐ</p>                
                </div>

                <%
                    }
                %>

            </div>
        </form>     
    </body>
</html>

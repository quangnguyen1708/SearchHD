<%-- 
    Document   : searchHoaDonDV
    Created on : Apr 5, 2019, 7:34:22 AM
    Author     : Admin
--%>
<%@page import="controller.DichVuSeverlet"%>
<%@page import="dao.DichVuDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="entity.HoaDonDichVu"%>
<%@page import="dao.HoaDonDVDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
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
    <%  DichVuSeverlet li = new DichVuSeverlet();

        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(0);%>
    <body>
        <!--Gọi file header.jsp gọp vào thành 1 trang vs trang searchHoaDonDV.jsp-->
        <%@include file="header.jsp" %>  
        <form action="DichVuSeverlet">
            <h2 style=" text-align: center; ">TRA CỨU HÓA ĐƠN DỊCH VỤ</h2> 
            <div class="box">                

                <div class="pod">
                    <input type="text" name="txtsearch" class="search" placeholder="Search ID" value="" required >
                    <input type="submit" class="button1" value="Search" name="action" />
                </div> <br>              


                <% String sdt = request.getParameter("txtsearch");

                    for (HoaDonDichVu dv : new DichVuDAO().hddv(sdt)) {%>
                <div class="colum1"  style="float: left; border-radius:5px ;padding: 20px;box-shadow: 0px 0px 5px gray;
                     margin: 10px auto;               
                     text-align: left;
                     width: 280px;
                     ">  
                    <p style="text-align: center; font-weight: bold;">HÓA ĐƠN PHÍ DỊCH VỤ</p>
                    <p>Mã KH: <%=dv.getCanHo().getKhachHang().getKhachHangId()%></p>  
                    <p>Tên KH: <%=dv.getCanHo().getKhachHang().getTenKhachHang()%></p> 
                    <p>Số Điện Thoại: <%=dv.getCanHo().getKhachHang().getSoDt()%> </p>
                    <p>Mã Căn Hộ: <%=dv.getCanHo().getCanHoId()%></p>                   
                    <p>Mã Hóa Đơn Dịch Vụ: <%=dv.getHoaDonDichVuId()%></p>
                    <p>Ngày Lập: <%=dv.getThang()%></p>
                    <p style="font-weight: bold;">Tiền Dịch Vụ Cơ Bản: <%=nf.format(dv.getTienDichVuCoBan())%> VNĐ</p>
                    <p style="font-weight:bold;">Tiền Gửi Xe: <%=nf.format(dv.getTienGuiXe())%> VNĐ</p>
                    <p style="font-weight: bold; color: orange">Tổng Tiền: <%=nf.format(dv.getTongTien())%> VNĐ</p>                               
                </div>

                <%
                    }
                %>


            </div>
            <!--           center;" id="foot1"> Chung cư Ple Ple Ple....!!!</footer>-->
        </form>
    </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ANH THU
  Date: 10/11/2024
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs" id="breadcrumbs">
            <script type="text/javascript">
                try { ace.settings.check('breadcrumbs', 'fixed') } catch (e) { }
            </script>

            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Dashboard</li>
            </ul><!-- /.breadcrumb -->

        </div>

        <div class="page-content">


            <div class="page-header">
                <h1>
                    Thông Tin Tòa Nhà
                    <small>
                        <i class="ace-icon fa fa-angle-double-right"></i>
                        overview &amp; stats
                    </small>
                </h1>
            </div><!-- /.page-header -->
            <hr>
            <div class="row">
                <div class="col-sm-12 col-sm-12">

                    <form class="form-horizontal"  id="form-edit" >

                        <div class="form-group"  >
                            <label class="col-xs-1" style="font-size: 16px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px;">Tên Tòa Nhà</label>
                            <div class="col-xs-6">
                                <input type="text" name="name" id="name" class="form-control "  placeholder="Nhập tên tòa nhà ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Quận</label>
                            <div class="col-xs-2">
                                <select name="districtId" id="districtId" class="form-control">
                                    <option value="">---Chọn quận---
                                    </option>
                                    <option value="">Quận 1</option>
                                    <option value="">Quận 2</option>
                                    <option value="">Quận Thủ Đức
                                    </option>
                                    <option value="">Quận Tân Bình
                                    </option>
                                </select>
                            </div>

                            <label class="col-xs-2 control-label no-padding-right"  style="font-size: 16px; " >Phường</label>
                            <div class="col-xs-2">
                                <input type="text" name="ward" id="ward" class="form-control" placeholder="Nhập tên phường ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Đường</label >
                            <div class="col-xs-2">
                                <input type="text" name="street" id="street" class="form-control"placeholder="Nhập tên đường ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Số Tầng Hầm</label>
                            <div class="col-xs-2">
                                <input type="number" name="numberofbasement" id="numberofbasement" class="form-control" placeholder="Nhập số tầng hầm ...">
                            </div>
                        </div>

                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Hướng</label >
                            <div class="col-xs-2">
                                <input type="text" name="direction" id="direction" class="form-control"placeholder="Nhập tên hướng ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Kết Cấu</label>
                            <div class="col-xs-2">
                                <input type="text" name="structure" id="structure" class="form-control" placeholder="Nhập kết cấu ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Hạng</label >
                            <div class="col-xs-2">
                                <input type="text" name="level" id="level" class="form-control"placeholder="Nhập hạng ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Diện Tích Sàn</label>
                            <div class="col-xs-2">
                                <input type="number" name="floorArea" id="floorArea" class="form-control" placeholder="Nhập diện tích sàn ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Giá Thuê</label >
                            <div class="col-xs-2">
                                <input type="number" name="rentPrice" id="rentPrice" class="form-control"placeholder="Nhập giá thuê ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Diện Tích Thuê</label>
                            <div class="col-xs-2">
                                <input type="number" name="rentArea" id="rentArea" class="form-control" placeholder="Nhập diện tích thuê ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Mô Tả Giá</label >
                            <div class="col-xs-2">
                                <input type="text" name="rentPriceDescription" id="rentPriceDescription" class="form-control"placeholder="Nhập mô tả giá ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Phí Dịch Vụ</label>
                            <div class="col-xs-2">
                                <input type="text" name="serviceFee" id="serviceFee" class="form-control" placeholder="Nhập phí dịch vụ ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Phí Ô Tô</label >
                            <div class="col-xs-2">
                                <input type="text" name="carFee" id="carFee" class="form-control"placeholder="Nhập phí ô tô ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Phí Mô Tô</label>
                            <div class="col-xs-2">
                                <input type="text" name="motorbikeFee" id="motorbikeFee" class="form-control" placeholder="Nhập phí mô tô ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Phí Ngoài Giờ</label >
                            <div class="col-xs-2">
                                <input type="text" name="overtimeFee" id="overtimeFee" class="form-control"placeholder="Nhập phí ngời giờ ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Tiền Điện</label>
                            <div class="col-xs-2">
                                <input type="text" name="electricityFee" id="electricityFee" class="form-control" placeholder="Nhập tiền điện ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Tiền Đặt Cọc</label >
                            <div class="col-xs-2">
                                <input type="text" name="deposit" id="deposit" class="form-control"placeholder="Nhập tiền đặt cọc ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Tiền Thanh Toán</label>
                            <div class="col-xs-2">
                                <input type="text" name="payment" id="payment" class="form-control" placeholder="Nhập tiền thanh toán ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Thời Hạn Thuê</label >
                            <div class="col-xs-2">
                                <input type="date" name="rentTime" id="rentTime" class="form-control"placeholder="Nhập tên thời hạn thuê ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Thời Gian Trang Trí</label>
                            <div class="col-xs-2">
                                <input type="text" name="decorationTime" id="decorationTime" class="form-control" placeholder="Nhập thơig gian trang trí ...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Tên Người Quản Lí</label >
                            <div class="col-xs-2">
                                <input type="text" name="managerName" id="managerName" class="form-control"placeholder="Nhập tên người quản lí ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >SĐT Người Quản Lí</label>
                            <div class="col-xs-2">
                                <input type="text" name="managerPhoneNumber" id="managerPhoneNumber" class="form-control" placeholder="Nhập sđt người quản lí...">
                            </div>
                        </div>
                        <div class="form-group" >

                            <label class="col-xs-1" style="font-size: 15px;"></label>
                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Phí Môi Giới</label >
                            <div class="col-xs-2">
                                <input type="text" name="brokerageFee" id="brokerageFee" class="form-control"placeholder="Nhập phí môi giới ...">
                            </div>

                            <label class="col-xs-2 control-label no-padding-right" style="font-size: 16px; " >Ghi Chú</label>
                            <div class="col-xs-2">
                                <input type="text" name="note" id="note" class="form-control" placeholder="Nhập ghi chú ...">
                            </div>
                        </div>
                        <div class="form-group" >


                            <label class="col-xs-2" style="font-size: 15px;"></label>
                            <div class="control-group"  >
                                <label class="  black" class="col-xs-2 control-label no-padding-right" style="margin-right: 20px; font-size:16px; margin-left: 20px;">  Loại Tòa Nhà</label>

                                <input name="code"mvalue="tang-tret" type="checkbox" class="ace">
                                <span class="lbl" style="margin-right: 10px; font-size:16px; margin-left: 10px;"> Tầng Trệt</span>


                                <input  name="code" value="nguyen-can" type="checkbox" class="ace" >
                                <span class="lbl" style="margin-right: 10px; font-size:16px; margin-left: 10px;"> Nguyên Căn</span>

                                <input name="code" value="noi-that"  type="checkbox" class="ace" >
                                <span class="lbl" style="margin-right: 10px; font-size:16px; margin-left: 10px;">Nội Thất </span>

                            </div>

                        </div>
                        <div class="col-md-offset-3 col-md-9">
                            <hr>
                            <button class="btn btn-info" type="button" id="btnAddBuilding">
                                <i class="ace-icon fa fa-check bigger-110"></i>
                                Thêm Tòa Nhà
                            </button>

                            &nbsp; &nbsp; &nbsp;
                            <button class="btn" type="button" >
                                <i class="ace-icon fa fa-undo bigger-110"></i>
                                Hủy Thao Tác
                            </button>
                        </div>
                    </form>
                </div>
            </div>


        </div><!-- /.page-content -->

        <!-- Thong tin toa nha -->


    </div>
</div><!-- /.main-content -->
</body>
</html>

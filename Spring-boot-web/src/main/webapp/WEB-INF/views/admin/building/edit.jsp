<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- Created by IntelliJ IDEA. User: ANH THU Date: 10/11/2024 Time: 9:19 PM To change this template use File |
    Settings | File Templates. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
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
                <form:form action="/admin/building-edit" method="GET" id="form-edit"
                           modelAttribute="buildingEdit">
                    <input type="hidden" name="id" value="${buildingEdit.id}">
                    <div class="col-sm-12 col-sm-12">
                        <div class="form-horizontal">
                            <!-- Tên Tòa Nhà -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Tên Tòa Nhà</label>
                                <div class="col-xs-6">
                                    <form:input path="name" id="name" class="form-control"
                                                placeholder="Nhập tên tòa nhà ..." />
                                </div>
                            </div>

                            <!-- Quận và Phường -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Quận</label>
                                <div class="col-xs-2">
                                    <form:select path="district" class="form-control">
                                        <form:option value="" label="---Chọn Quận---" />
                                        <form:options items="${district}" />
                                    </form:select>
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Phường</label>
                                <div class="col-xs-2">
                                    <form:input path="ward" id="ward" class="form-control"
                                                placeholder="Nhập tên phường ..." />
                                </div>
                            </div>

                            <!-- Đường và Số Tầng Hầm -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Đường</label>
                                <div class="col-xs-2">
                                    <form:input path="street" id="street" class="form-control"
                                                placeholder="Nhập tên đường ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Số Tầng Hầm</label>
                                <div class="col-xs-2">
                                    <form:input path="numberOfBasement" id="numberofbasement"
                                                class="form-control" type="number"
                                                placeholder="Nhập số tầng hầm ..." />
                                </div>
                            </div>

                            <!-- Hướng và Kết Cấu -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Hướng</label>
                                <div class="col-xs-2">
                                    <form:input path="direction" id="direction" class="form-control"
                                                placeholder="Nhập tên hướng ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Kết Cấu</label>
                                <div class="col-xs-2">
                                    <form:input path="structure" id="structure" class="form-control"
                                                placeholder="Nhập kết cấu ..." />
                                </div>
                            </div>

                            <!-- Hạng và Diện Tích Sàn -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Hạng</label>
                                <div class="col-xs-2">
                                    <form:input path="level" id="level" class="form-control"
                                                placeholder="Nhập hạng ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Diện Tích Sàn</label>
                                <div class="col-xs-2">
                                    <form:input path="floorArea" id="floorArea" class="form-control"
                                                type="number" placeholder="Nhập diện tích sàn ..." />
                                </div>
                            </div>

                            <!-- Giá Thuê và Diện Tích Thuê -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Giá Thuê</label>
                                <div class="col-xs-2">
                                    <form:input path="rentPrice" id="rentPrice" class="form-control"
                                                type="number" placeholder="Nhập giá thuê ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Diện Tích Thuê</label>
                                <div class="col-xs-2">
                                    <form:input path="rentArea" id="rentArea" class="form-control"
                                                placeholder="Nhập diện tích thuê ..." />
                                </div>
                            </div>

                            <!-- Mô Tả Giá và Phí Dịch Vụ -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Mô Tả Giá</label>
                                <div class="col-xs-2">
                                    <form:input path="rentPriceDescription" id="rentPriceDescription"
                                                class="form-control" placeholder="Nhập mô tả giá ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Phí Dịch Vụ</label>
                                <div class="col-xs-2">
                                    <form:input path="serviceFee" id="serviceFee" class="form-control"
                                                placeholder="Nhập phí dịch vụ ..." />
                                </div>
                            </div>

                            <!-- Phí Ô Tô và Phí Mô Tô -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Phí Ô Tô</label>
                                <div class="col-xs-2">
                                    <form:input path="carFee" id="carFee" class="form-control"
                                                placeholder="Nhập phí ô tô ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Phí Mô Tô</label>
                                <div class="col-xs-2">
                                    <form:input path="motorbikeFee" id="motorbikeFee"
                                                class="form-control" placeholder="Nhập phí mô tô ..." />
                                </div>
                            </div>

                            <!-- Phí Ngoài Giờ và Tiền Điện -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Phí Ngoài Giờ</label>
                                <div class="col-xs-2">
                                    <form:input path="overtimeFee" id="overtimeFee" class="form-control"
                                                placeholder="Nhập phí ngoài giờ ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Tiền Điện</label>
                                <div class="col-xs-2">
                                    <form:input path="electricityFee" id="electricityFee"
                                                class="form-control" placeholder="Nhập tiền điện ..." />
                                </div>
                            </div>

                            <!-- Tiền Đặt Cọc và Tiền Thanh Toán -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Tiền Đặt Cọc</label>
                                <div class="col-xs-2">
                                    <form:input path="deposit" id="deposit" class="form-control"
                                                placeholder="Nhập tiền đặt cọc ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Tiền Thanh Toán</label>
                                <div class="col-xs-2">
                                    <form:input path="payment" id="payment" class="form-control"
                                                placeholder="Nhập tiền thanh toán ..." />
                                </div>
                            </div>

                            <!-- Thời Hạn Thuê và Thời Gian Trang Trí -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Thời Hạn Thuê</label>
                                <div class="col-xs-2">
                                    <form:input path="rentTime" id="rentTime" class="form-control"
                                                type="date" placeholder="Nhập thời hạn thuê ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Thời Gian Trang Trí</label>
                                <div class="col-xs-2">
                                    <form:input path="decorationTime" id="decorationTime"
                                                class="form-control"
                                                placeholder="Nhập thời gian trang trí ..." />
                                </div>
                            </div>
                            <!-- Tên Người Quản Lí và SĐT Người Quản Lí -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Tên Người Quản Lí</label>
                                <div class="col-xs-2">
                                    <form:input path="managerName" id="managerName" class="form-control"
                                                placeholder="Nhập tên người quản lí ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">SĐT Người Quản Lí</label>
                                <div class="col-xs-2">
                                    <form:input path="managerPhoneNumber" id="managerPhoneNumber"
                                                class="form-control" placeholder="Nhập sđt người quản lí..." />
                                </div>
                            </div>

                            <!-- Phí Môi Giới và Ghi Chú -->
                            <div class="form-group">
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Phí Môi Giới</label>
                                <div class="col-xs-2">
                                    <form:input path="brokerageFee" id="brokerageFee"
                                                class="form-control" placeholder="Nhập phí môi giới ..." />
                                </div>
                                <label class="col-xs-2 control-label no-padding-right"
                                       style="font-size: 16px;">Ghi Chú</label>
                                <div class="col-xs-2">
                                    <form:input path="note" id="note" class="form-control"
                                                placeholder="Nhập ghi chú ..." />
                                </div>
                            </div>

                            <!-- Loại Tòa Nhà -->
                            <div class="form-group" >


                                <label class="col-xs-2" style="font-size: 15px;"></label>
                                <div class="control-group"  >
                                    <label
                                            class="control-label bolder blue"
                                            style="margin-left: 10px;margin-right: 20px; font-size:16px;">
                                        Loại tòa nhà   </label>

                                    <form:checkboxes items="${renttype}" path="type" />
                                </div>

                            </div>

                            <!-- Buttons -->
                            <div class="col-md-offset-3 col-md-9">
                                <hr>
                                 <c:if test="${not empty buildingEdit.id}">
                                    <button class="btn btn-info" type="button" id="btnAddOrUpdateBuilding">
                                    <i class="ace-icon fa fa-check bigger-110"></i> Sửa Thông Tin
                                    </button>
                                 </c:if>
                                <c:if test="${empty buildingEdit.id}">
                                    <button class="btn btn-info" type="button" id="btnAddOrUpdateBuilding">
                                    <i class="ace-icon fa fa-check bigger-110"></i> Thêm Tòa Nhà
                                    </button>
                                </c:if>
                                 &nbsp; &nbsp; &nbsp;
                                <a href="/admin/building-list" class="btn">
                                    <i class="ace-icon fa fa-undo bigger-110"></i> Hủy Thao Tác
                                </a>
                            </div>
                        </div>
                    </div>
                </form:form>
            </div>

        </div><!-- /.page-content -->

        <!-- Thong tin toa nha -->

    </div>
</div><!-- /.main-content -->
<script src="assets/js/jquery.2.1.1.min.js"></script>
<script>

    $("#btnAddOrUpdateBuilding").click(function () {
        var formData = $("#form-edit").serializeArray(); // Lấy dữ liệu từ form
        var json = {};
        var type = [];

        $.each(formData, function (i, v) {
            if (v.name === "type") {
                type.push(v.value);
            } else {
                json[v.name] = v.value;
            }
        });

        json["type"] = type;

        // if (type.length === 0) {
        //     alert("Type Code not empty!!");
        // } else {
            btnAddOrUpdateBuilding(json);
        // }
    });
    function btnAddOrUpdateBuilding(json) {
        $.ajax({
            url: "/api/buildings",
            type: "POST",
            data: JSON.stringify(json),
            contentType: "application/json",
            success: function (result) {
                console.log("success");
                alert("Thành công!!!");
            },
            error: function (result) {
                console.log("error");

                // Kiểm tra xem có lỗi và chi tiết lỗi không
                if (result.responseJSON && result.responseJSON.message) {
                    // Kết hợp thông báo tổng quát và chi tiết lỗi thành một chuỗi
                    let errorMessage = result.responseJSON.message + "\n";
                    if (result.responseJSON.detail && Array.isArray(result.responseJSON.detail)) {
                        errorMessage += "Chi tiết lỗi:\n" + result.responseJSON.detail.join("\n");
                    }
                    alert(errorMessage);
                } else {
                    alert("Đã xảy ra lỗi không xác định.");
                }
            }
        });
    }
</script>

</body>

</html>
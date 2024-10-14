
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>

    <title>Danh Sách Tòa Nhà</title>


</head>
<body>


<div class="main-content">

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
                Danh Sách Tòa Nhà
                <small>
                    <i class="ace-icon fa fa-angle-double-right"></i>
                    overview &amp; stats
                </small>
            </h1>
        </div><!-- /.page-header -->
        <!-- tim kiem toa nha -->

        <div class="row">
            <form:form modelAttribute="modelSearch" action="/admin/building-list" method="GET" id="listForm">
                <form class="form-group" >
                <div class="col-sm-12 ">
                    <div class="widget-box">
                        <div class="widget-header" style="color:rgb(43, 170, 159); text-align: center;">
                            <h3 class="widget-title">
                                Tìm Kiếm Tòa Nhà
                            </h3>
                            <span class="widget-toolbar">
                                                            <a href="#" data-action="reload">
                                                                <i class="ace-icon fa fa-refresh"></i>
                                                            </a>
                                                            <a href="#" data-action="collapse">
                                                                <i class="ace-icon fa fa-chevron-up"></i>
                                                            </a>
                                            </span>
                        </div>
                        <div class="widget-body">
                            <div class="widget-main">
                                <div class="row">

                                    <div class="form-group" >

                                        <!-- thong tin toa nha -->
                                        <div class="col-xs-4 ">
                                            <div class="widget-box">
                                                <div class="widget-header">
                                                    <h4 class="widget-title">Thông Tin Tòa Nhà</h4>

                                                    <span class="widget-toolbar">

                                                            <a href="#" data-action="reload">
                                                                <i class="ace-icon fa fa-refresh"></i>
                                                            </a>

                                                            <a href="#" data-action="collapse">
                                                                <i class="ace-icon fa fa-chevron-up"></i>
                                                            </a>
                                                        </span>
                                                </div>

                                                <div class="widget-body">
                                                    <div class="widget-main">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <div class="col-xs-12">

                                                                    <label>Tên tòa nhà </label>
<%--                                                                    <input type="text" name="name" value="${modelSearch.name}"--%>
<%--                                                                           class="form-control"--%>
<%--                                                                           placeholder="Nhập tên tòa nhà...">--%>
                                                                        <form:input class="form-control" path="name" placeholder="Nhập tên tòa nhà..."/>
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12">
                                                                <hr>
                                                                <div class="col-xs-6">
                                                                    <label>Quận</label>
<%--                                                                    <select name="districtId"--%>
<%--                                                                            class="form-control">--%>
<%--                                                                        <option value="">---Chọn--%>
<%--                                                                            quận-----%>
<%--                                                                        </option>--%>
<%--                                                                        <option value="">Quận 1--%>
<%--                                                                        </option>--%>
<%--                                                                        <option value="">Quận 2--%>
<%--                                                                        </option>--%>
<%--                                                                        <option value="">Quận--%>
<%--                                                                            Thủ Đức--%>
<%--                                                                        </option>--%>
<%--                                                                        <option value="">Quận--%>
<%--                                                                            Tân Bình--%>
<%--                                                                        </option>--%>
<%--                                                                    </select>--%>
                                                                        <form:select path="district" class="form-control">
                                                                            <form:option value="" label="---Chọn Quận---"/>
                                                                            <form:options items="${district}"/>
                                                                        </form:select>

                                                                </div>
                                                                <div class="col-xs-6">

                                                                    <label>Phường</label>
<%--                                                                    <input type="text" name="ward"  value="${modelSearch.ward}"--%>
<%--                                                                           class="form-control"--%>
<%--                                                                           placeholder="Nhập tên phường...">--%>
                                                                        <form:input class="form-control" path="ward" placeholder="Nhập tên phường..."/>


                                                                </div>
                                                            </div>

                                                            <div class="col-xs-12">
                                                                <hr>
                                                                <div class="col-xs-12">
                                                                    <div>
                                                                        <label>Đường</label>
<%--                                                                        <input type="text" name="street"  value="${modelSearch.street}"--%>
<%--                                                                               class="form-control"--%>
<%--                                                                               placeholder="Nhập tên đường...">--%>
                                                                        <form:input class="form-control" path="street" placeholder="Nhập tên đường..."/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12">
                                                                <hr>
                                                                <div class="col-xs-12">
                                                                    <div>
                                                                        <label>Hướng </label>
<%--                                                                        <input type="text" name="direction"  value="${modelSearch.direction}"--%>
<%--                                                                               class="form-control"--%>
<%--                                                                               placeholder="Nhập hướng...">--%>
                                                                        <form:input class="form-control" path="direction" placeholder="Nhập hướng..."/>

                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="col-xs-12">
                                                                <hr>
                                                                <div class="control-group">
                                                                    <label
                                                                            class="control-label bolder blue"
                                                                            style="margin-left: 10px;margin-right: 20px; font-size:16px;">
                                                                        Loại tòa nhà   </label>

                                                                        <form:checkboxes items="${renttype}" path="typeCode" />


                                                                </div>
                                                            </div>



                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- /.span -->
                                        <!-- thong so toa nha -->
                                        <div class="col-xs-4">
                                            <div class="widget-box">
                                                <div class="widget-header">
                                                    <h4 class="widget-title">Thông Số Tòa Nhà</h4>

                                                    <span class="widget-toolbar">


                                                            <a href="#" data-action="reload">
                                                                <i class="ace-icon fa fa-refresh"></i>
                                                            </a>

                                                            <a href="#" data-action="collapse">
                                                                <i class="ace-icon fa fa-chevron-up"></i>
                                                            </a>

                                                        </span>
                                                </div>

                                                <div class="widget-body">
                                                    <div class="widget-main">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <div class="col-xs-6">
                                                                    <div>
                                                                        <label>Diện tích sàn</label>
<%--                                                                        <input type="number" name="floorArea"  value="${modelSearch.floorArea}"--%>
<%--                                                                               class="form-control"--%>
<%--                                                                               placeholder="Nhập diện tích sàn...">--%>
                                                                        <form:input class="form-control" path="floorArea" placeholder="Nhập diện tích sàn..."/>

                                                                    </div>
                                                                </div>
                                                                <div class="col-xs-6">
                                                                    <div>
                                                                        <label>Số tầng hầm</label>
<%--                                                                        <input type="number" name="numberOfBasement"  value="${modelSearch.numberOfBasement}"--%>
<%--                                                                               class="form-control"--%>
<%--                                                                               placeholder="Nhập số tầng hầm...">--%>
                                                                        <form:input class="form-control" path="numberOfBasement" placeholder="Nhập số tầng hầm..."/>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12">
                                                                <hr>
                                                                <div class="col-xs-6">
                                                                    <div>
                                                                        <label>Diện tích từ</label>
<%--                                                                        <input type="number" name="areaRentStart"  value="${modelSearch.areaRentStart}"--%>
<%--                                                                               class="form-control"--%>
<%--                                                                               placeholder="Nhập diện tích từ...">--%>
                                                                        <form:input class="form-control" path="areaRentStart" placeholder="Nhập diện tích từ..."/>

                                                                    </div>
                                                                </div>
                                                                <div class="col-xs-6">
                                                                    <div>
                                                                        <label>Diện tích đến</label>
<%--                                                                        <input type="number" name="areaRentFinish"  value="${modelSearch.areaRentFinish}"--%>
<%--                                                                               class="form-control"--%>
<%--                                                                               placeholder="Nhập diện tích đến...">--%>
                                                                        <form:input class="form-control" path="areaRentFinish" placeholder="Nhập diện tích đến..."/>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12">
                                                                <hr>
                                                                <div class="col-xs-6">
                                                                    <div>
                                                                        <label>Giá tiền từ</label>
<%--                                                                        <input type="number" name="priceRentStart"  value="${modelSearch.priceRentStart}"--%>
<%--                                                                               class="form-control"--%>
<%--                                                                               placeholder="Nhập giá tiền từ...">--%>
                                                                        <form:input class="form-control" path="priceRentStart" placeholder="Nhập giá tiền từ..."/>

                                                                    </div>
                                                                </div>
                                                                <div class="col-xs-6">
                                                                    <div>
                                                                        <label>Giá tiền đến</label>
<%--                                                                        <input type="number" name="priceRentFinish"  value="${modelSearch.priceRentFinish}"--%>
<%--                                                                               class="form-control"--%>
<%--                                                                               placeholder="Nhập giá tiền đến...">--%>
                                                                            <form:input class="form-control" path="priceRentFinish" placeholder="Nhập giá tiền đến..."/>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12">
                                                                <hr>

                                                                <div class="col-xs-12">
                                                                    <div>
                                                                        <label>Hạng</label>
<%--                                                                        <input type="text" name="level"  value="${modelSearch.level}"--%>
<%--                                                                               class="form-control"--%>
<%--                                                                               placeholder="Nhập hạng...">--%>
                                                                            <form:input class="form-control" path="level" placeholder="Nhập hạng...."/>

                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-xs-12">

                                                                <div
                                                                        class="hr hr-15 dotted hr-double">
                                                                </div>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                            </div>

                                                        </div>


                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- /.span -->
                                        <!-- thong tin quan li -->
                                        <div class="col-xs-4">
                                            <div class="widget-box">
                                                <div class="widget-header">
                                                    <h4 class="widget-title">Thông Tin Người Quản Lí
                                                    </h4>

                                                    <span class="widget-toolbar">


                                                            <a href="#" data-action="reload">
                                                                <i class="ace-icon fa fa-refresh"></i>
                                                            </a>

                                                            <a href="#" data-action="collapse">
                                                                <i class="ace-icon fa fa-chevron-up"></i>
                                                            </a>


                                                        </span>
                                                </div>

                                                <div class="widget-body">
                                                    <div class="widget-main">
                                                        <div class="row">
                                                            <div class="col-xs-12">
                                                                <div class="col-xs-12">
                                                                    <label>Tên người quản
                                                                        lí</label>
<%--                                                                    <input type="text" name="managerName"  value="${modelSearch.managerName}"--%>
<%--                                                                           class="form-control"--%>
<%--                                                                           placeholder="Nhập tên người quản lí...">--%>
                                                                            <form:input class="form-control" path="managerName" placeholder="Nhập tên người quản lí..."/>

                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12">
                                                                <div class="col-xs-12">
                                                                    <hr>
                                                                    <label>SĐT người quản
                                                                        lí</label>
<%--                                                                    <input type="text" name="managerPhoneNumber"  value="${modelSearch.managerPhoneNumber}"--%>
<%--                                                                           class="form-control"--%>
<%--                                                                           placeholder="Nhập sđt người quản lí...">--%>
                                                                            <form:input class="form-control" path="managerPhoneNumber" placeholder="Nhập sđt người quản lí..."/>

                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12">
                                                                <div class="col-xs-12">
                                                                    <hr>
                                                                    <label>Nhân viên phụ
                                                                        trách</label>
<%--                                                                    <select name="staffId" id=""--%>
<%--                                                                            class="form-control">--%>
<%--                                                                        <option value="1">---Chọn--%>
<%--                                                                            nhân--%>
<%--                                                                            viên---</option>--%>
<%--                                                                        <option value="2">Trần--%>
<%--                                                                            Anh Thư--%>
<%--                                                                        </option>--%>
<%--                                                                        <option value="3">Hoàng--%>
<%--                                                                            Thị Thanh--%>
<%--                                                                            Tuyền</option>--%>
<%--                                                                        <option value="4">Nguyễn--%>
<%--                                                                            Minh--%>
<%--                                                                            Nhật</option>--%>

<%--                                                                    </select>--%>
                                                                        <form:select path="staffId" class="form-control">
                                                                            <form:option value="" label="---Chọn Nhân Viên---"/>
                                                                            <form:options items="${staffs}"/>
                                                                        </form:select>

                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12">
                                                                <div
                                                                        class="hr hr-17 dotted hr-double">
                                                                </div>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>
                                                                <br>


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- /.span -->

                                    </div>

                                    <div class="form-group" >
                                        <div class="col-xs-12">
                                            <br>
                                            <button class="btn btn-sm btn-primary" id="btnSearchBuilding" type="button">
                                                <i class="ace-icon glyphicon glyphicon-search"></i>
                                                Tìm kiếm
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="pull-right">

                            <a href="/admin/building-edit">
                                <button class="btn btn-app btn-primary btn-sm" title="Thêm tòa nhà" type="button">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                         fill="currentColor" class="bi bi-building-fill-add"
                                         viewBox="0 0 16 16">
                                        <path
                                                d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0" />
                                        <path
                                                d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v7.256A4.5 4.5 0 0 0 12.5 8a4.5 4.5 0 0 0-3.59 1.787A.5.5 0 0 0 9 9.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .39-.187A4.5 4.5 0 0 0 8.027 12H6.5a.5.5 0 0 0-.5.5V16H3a1 1 0 0 1-1-1zm2 1.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3 0v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5m3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5M4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z" />
                                    </svg>
                                </button>
                            </a>
                                <button class="btn btn-app btn-danger btn-sm" title="Xóa tòa nhà">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                         fill="currentColor" class="bi bi-building-dash" viewBox="0 0 16 16">
                                        <path
                                                d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7M11 12h3a.5.5 0 0 1 0 1h-3a.5.5 0 0 1 0-1" />
                                        <path
                                                d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z" />
                                        <path
                                                d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z" />
                                    </svg>
                                </button>
                        </div>

                    </div>
                </div>
            </form>
            </form:form>
        </div>
        <div class="hr hr-20 dotted hr-double"></div>
        <!-- danh sach toa nha -->
        <div class="row">
            <form class="form-horizontal" id>
                <div class="col-xs-12">
                    <div class="table-header" style="font-size: 18px;">
                        Danh Sách Các Tòa Nhà Tìm kiếm
                    </div>
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>Tên Tòa Nhà</th>
                            <th>Địa Chỉ</th>
                            <th>Số Tầng Hầm</th>
                            <th>Tên Quản Lí </th>
                            <th>SĐT Quản Lí</th>
                            <th>Diện Tích Sàn</th>
                            <th>Diện Tích Trống </th>
                            <th>Diện Tích Thuê</th>
                            <th>Giá Thuê</th>
                            <th>Phí Dịch Vụ</th>
                            <th>Phí Mô Giới</th>
                            <th>Thao Tác</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                <a href="#">ace.com</a>
                            </td>
                            <td>$45</td>
                            <td class="hidden-480">3,330</td>
                            <td>Feb 12</td>

                            <td class="hidden-480">
                                <span class="label label-sm label-warning">Expiring</span>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <div class="hidden-sm hidden-xs btn-group">
                                    <button class="btn btn-xs btn-success" type="button"
                                            onclick="assingmentBuilding()">
                                        <i class="ace-icon fa fa-check bigger-120"></i>
                                    </button>

                                    <button class="btn btn-xs btn-info">
                                        <i class="ace-icon fa fa-pencil bigger-120"></i>
                                    </button>

                                    <button class="btn btn-xs btn-danger">
                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                    </button>
                                </div>

                            </td>
                        </tr>
                        </tbody>

                    </table>
                </div><!-- /.span -->
            </form>
        </div>
    </div><!-- /.page-content -->
    <div class="modal fade" id="assingmentBuildingModel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Danh Sách Nhân Viên</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table id="simple-table" class="table table-striped table-bordered table-hover">
                        <thead>
                        <tr>
                            <th class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </th>
                            <th>Tên Nhân Viên</th>
                        </tr>
                        </thead>

                        <tbody>
                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                Trần Anh Thư
                            </td>
                        </tr>
                        <tr>
                            <td class="center">
                                <label class="pos-rel">
                                    <input type="checkbox" class="ace">
                                    <span class="lbl"></span>
                                </label>
                            </td>

                            <td>
                                Trần Bảo Ngân Thư
                            </td>
                        </tr>
                        </tbody>

                    </table>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Giao Tòa Nhà</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy Thao Tác</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="assets/js/jquery.2.1.1.min.js"></script>

<script>
    function assingmentBuilding() {
        $('#assingmentBuildingModel').modal();
    }

    $('#btnSearchBuilding').click(function (e){
        e.preventDefault();
        $('#listForm').submit();
    })
</script>

</body>
</html>

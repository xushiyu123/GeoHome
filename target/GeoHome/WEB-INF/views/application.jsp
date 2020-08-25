<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <title>GeoServer</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css">
    <%--<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap-responsive.css">--%>
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- Font Awesome CSS-->
    <%--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">--%>
    <!-- Google fonts - Popppins for copy-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
    <!-- owl carousel-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/resources/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/form-page.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.default.css" id="theme-stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/custom.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/resources/vendor/material-components-web/material-components-web.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/uploadfile.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/ol.css"/>
    <!-- Favicon-->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/resources/js/ol.js"></script>
    <script>
        var context = "<%=request.getContextPath()%>";
        var name = GetName();

        function GetName() {
            var url = location.search; //获取url中"?"符后的字串
            var index = url.indexOf("=");
            var name = url.substring(index + 1, url.length);
            name = name.replace("%20", " ");
            return name;
        }
    </script>
    <%--<!-- 引入样式 -->--%>
</head>
<body>
<div class="black-overlay">
</div>
<div id="upload-page">
    <div id="fileuploader">
    </div>
    <input style="position: absolute; right: 10px; bottom: 5px" id="upload-close"
           type="button" class="btn btn-primary"
           value="close"/>
</div>
<div class="main">
    <div id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offer mb-3 mb-lg-0"></div>
                <div class="col-lg-6 text-center text-lg-right" style="position: relative;float: right">
                    <ul class="menu list-inline-item mb-0">
                        <li class="list-inline-item"><a href="#" data-toggle="modal"
                                                        data-target="#login-modal">Login</a></li>
                        <li class="list-inline-item"><a href="/register">Register</a></li>
                        <li class="list-inline-item"><a href="#">Contact</a></li>
                        <li class="list-inline-item"><a href="#">Recently viewed</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">User login</h5>
                        <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span
                                aria-hidden="true">×</span></button>
                    </div>
                    <div class="modal-body">
                        <form action="#" method="post">
                            <div class="form-group">
                                <input id="email-modal" type="text" placeholder="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="password-modal" type="password" placeholder="password" class="form-control">
                            </div>
                            <p class="text-center">
                                <button class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>
                        </form>
                        <p class="text-center text-muted">Not registered yet?</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- *** TOP BAR END ***-->
    </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container"><a href="/" class="navbar-brand home"><img
                src="<%=request.getContextPath()%>/resources/img/logo.png" alt="Obaju logo"
                class="d-none d-md-inline-block"><img
                src="<%=request.getContextPath()%>/resources/img/logo-small.png" alt="Obaju logo"
                class="d-inline-block d-md-none"><span class="sr-only"></span></a>
            <div class="navbar-buttons">
                <button type="button" data-toggle="collapse" data-target="#navigation"
                        class="btn btn-outline-secondary navbar-toggler"><span
                        class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>
                <button type="button" data-toggle="collapse" data-target="#search"
                        class="btn btn-outline-secondary navbar-toggler"><span class="sr-only">Toggle search</span><i
                        class="fa fa-search"></i></button>
            </div>
            <div id="navigation" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a href="/" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="#" class="nav-link">About us</a></li>
                    <li class="nav-item"><a href="/publications" class="nav-link">Publications</a></li>
                    <li class="nav-item"><a href="/application-direct" class="nav-link">Applications</a></li>
                    <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" data-hover="dropdown"
                                                                data-delay="200" class="dropdown-toggle nav-link">Lab
                        Members<b
                                class="caret"></b></a>
                        <ul class="dropdown-menu megamenu" style="width: 25%">
                            <li>
                                <div class="row" id="members">
                                    <div class="col-mg-4">
                                        <h5>Faculty</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="#" class="nav-link">Anbo Li</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-5">
                                        <h5>Students</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">Shiyu Xu</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            </li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-mg-5">
                                        <h5>Graduate</h5>
                                        <ul class="list-unstyled mb-3">
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                            <li class="nav-item"><a href="#" class="nav-link">#</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="navbar-buttons d-flex justify-content-end">
                    <!-- /.nav-collapse-->
                    <div id="search-not-mobile" class="navbar-collapse collapse"></div>
                    <a data-toggle="collapse" href="#search"
                       class="btn navbar-btn btn-primary d-none d-lg-inline-block"><span
                            class="sr-only">Toggle search</span><i class="fa fa-search"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <div id="search" class="collapse">
        <div class="container">
            <form role="search" class="ml-auto">
                <div class="input-group">
                    <input type="text" placeholder="Search" class="form-control">
                    <div class="input-group-append">
                        <button type="button" class="btn btn-primary"><i class="fa fa-search"></i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    </header>
    <div id="all">
        <div id="content">
            <div class="container">
                <div class="row" id="pages">
                    <div class="col-lg-12" style="margin-top: 40px">
                        <!-- breadcrumb-->
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item active"><a href="/">Home</a></li>
                                <li aria-current="page" class="breadcrumb-item"><a href="/applications">Applications</a>
                                </li>
                                <li aria-current="page" class="breadcrumb-item"></li>
                            </ol>
                        </nav>
                    </div>
                    <div class="col-lg-3">
                        <!--
                        *** USER MENU ***
                        _________________________________________________________
                        -->
                        <div class="card sidebar-menu">
                            <div class="card-header">
                                <h3 class="h4 card-title">Application section</h3>
                            </div>
                            <nav class="side-navbar">
                                <ul class="list-unstyled">
                                    <li class="active"><a id="abstract"> <i class="fa fa-key"></i>Abstract </a></li>
                                    <li><a href="#dropdown" aria-expanded="false" data-toggle="collapse">
                                        <i class="fa fa-list"></i>Modules </a>
                                        <ul id="dropdown" class="collapse list-unstyled">
                                        </ul>
                                    </li>
                                    <li><a id="employment"> <i class="fa fa-map"></i>Employment </a></li>
                            </nav>
                        </div>
                        <!-- /.col-lg-3-->
                        <!-- *** CUSTOMER MENU END ***-->
                    </div>
                    <div id="abstract-page" class="col-lg-9">
                        <div class="box">
                            <!-- #ace-card -->
                            <div class="padd-box clear-mrg" style="width: 80%; margin-left: 10%; font-size: 1em">
                                <section class="section brd-btm">
                                    <div class="row">
                                        <div class="col-sm-12 clear-mrg text-box">
                                            <dl class="dl-horizontal clear-mrg" style="margin-top: 10px">
                                                <dt class="text-upper">Description</dt>
                                                <dd style="text-indent: 2em">
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </section><!-- .section -->
                                <section class="section brd-btm">
                                    <div class="row">
                                        <div class="col-sm-12 clear-mrg text-box">
                                            <dl class="dl-horizontal clear-mrg" style="margin-top: 10px">
                                                <dt class="text-upper">Introduction</dt>
                                                <dd style="text-indent: 2em">
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </section>
                                <section class="section brd-btm" align="center">
                                    <div class="row">
                                        <div class="col-sm-12 clear-mrg">
                                            <dl class="dl-horizontal clear-mrg" style="margin-top: 10px">
                                                <dt class="text-upper">Diagram</dt>
                                                <dd>
                                                    <img style="margin-top: 5px; margin-left: 5px"
                                                         src=""
                                                         alt="image">
                                                </dd>
                                            </dl>
                                        </div>
                                    </div>
                                </section>
                                <section class="section brd-btm">
                                    <div class="row">
                                        <div class="col-sm-12 clear-mrg">
                                            <dl class="dl-horizontal clear-mrg" style="margin-top: 10px">
                                                <dt class="text-upper">Participants</dt>
                                                <dd>
                                                </dd>

                                                <dt class="text-upper">Create Time</dt>
                                                <dd></dd>

                                                <dt class="text-upper">Tags</dt>
                                                <dd></dd>

                                            </dl>
                                        </div><!-- .col-sm-6 -->
                                    </div><!-- .row -->
                                </section><!-- .section -->
                            </div><!-- .padd-box -->
                        </div>
                    </div>
                    <div id="employment-page" class="col-lg-9">
                        <div class="box">
                            <div style="background: whitesmoke; padding: 15px">
                                <ul>
                                    <li style="display: inline"><a class="data btn btn-primary btn-transparent">Data</a>
                                    </li>
                                    <li style="display: inline"><a
                                            class="set btn btn-primary btn-transparent">Setting</a></li>
                                    <li style="display: inline"><a class="start btn btn-primary btn-transparent">Performance</a>
                                    </li>
                                    <li style="display: inline"><a class="result btn btn-primary btn-transparent">Results</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="employ-page" id="result-page">
                                <h3 class="resume-section-heading mb-4">Preview:</h3>
                                <div id="local_map" name="local_map"
                                     style="height: 500px;border: 2px solid whitesmoke"></div>
                                <script type="text/javascript">
                                    var source = new ol.source.OSM();
                                    var layer = new ol.layer.Tile({
                                        source: source
                                    });
                                    var map = new ol.Map({
                                        target: 'local_map',
                                        layers: [layer],
                                        view: new ol.View({
                                            center: ol.proj.fromLonLat([103.73, 36.03]),
                                            zoom: 8,
                                            minZoom: 5,
                                            maxZoom: 12
                                        })
                                    });
                                </script>
                                <input style="margin: 10px" type="button" class="download-btn btn btn-primary"
                                       value="download"/>
                            </div>
                            <div class="employ-page" id="data-page">
                                <h3 class="resume-section-heading mb-4">The request of data:</h3>
                                <%--<label class="form-check-label" style="margin: 10px">The request of data:</label>--%>

                                <div class="card alert">
                                    <div id="upload-card">
                                        <div class="card-body">
                                            <table class="table table-responsive table-hover ">
                                                <thead>
                                                <tr>
                                                    <th style="width: 40%"><h4>Upload files </h4></th>
                                                    <th style="width: 15%"></th>
                                                    <th style="width: 15%"></th>
                                                    <th>
                                                        <ul>
                                                            <i id="upload-btn" class="data-btn fa fa-plus"
                                                               title="add file"
                                                               style="float: right"></i>
                                                        </ul>
                                                    </th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>Jone Doe</td>
                                                    <td>#12456</td>
                                                    <td>Hot Dog</td>
                                                    <td>
                                                        <i class="data-btn fa fa-arrow-circle-o-right"
                                                           title="publish"></i>
                                                        <i class="data-btn fa fa-cloud-upload" title="upload"></i>
                                                        <i class="data-btn fa fa-cloud-download" title="download"></i>
                                                        <i class="data-btn fa fa-trash" title="remove">
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--&lt;%&ndash;发布结果链接&ndash;%&gt;--%>
                            <%--<input style="margin: 10px" type="button" class="publish-btn btn btn-primary"--%>
                            <%--value="publish data"/>--%>
                            <%--<input type="hidden" id="url-text" value=""/>--%>
                        </div>

                        <div class="employ-page" id="performance-page">
                            <h3 class="resume-section-heading mb-4">Diagram:</h3>
                            <div>
                                <img id="process-diagram"
                                     style="margin: 10px; width: 600px; border: 2px solid whitesmoke"
                                     src="<%=request.getContextPath()%>/resources/img/diagrams/riverCanyon.png">
                            </div>
                            <div style="margin: 10px">
                                <input style="margin-left: 10px" type="button" class="start-btn btn btn-primary"
                                       value="start"/>
                                <input style="margin-left: 10px" type="button" class="status-btn btn btn-primary"
                                       value="status"/>
                            </div>
                        </div>

                        <div class="employ-page" id="settings-page">
                            <div id="form-page">
                            </div>
                            <input type="button" class="submit-btn btn btn-primary" value="submit"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--*** COPYRIGHT ***
_________________________________________________________
-->
<div id="copyright">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 mb-2 mb-lg-0">
                <p class="text-center text-lg-left">Copyright &copy; Our Website 2019.</p>
            </div>
        </div>
    </div>
</div>
</div>
<!-- JavaScript files-->
<script src="<%=request.getContextPath()%>/resources/js/globle.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.uploadfile.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/front.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>

</body>
<script>
    var url = "";
    var json = "";
    var file = "file.zip";
    var result = {
        "code": "",
        "data": "",
        "message": ""
    };
    var service = {
        "name": "",
        "url": "",
        "participants": "",
        "time": "",
        "description": "",
        "introduction": "",
        "diagram": "",
        "apis": "",
        "activiti": ""
    };
    // var activitiUrl = "http://172.21.252.90:8086/";
    var process = {
        "InstanceId": ""
    };

    var formValues = {};

    $(document).ready(function () {
        $.ajax({
            async: false,
            url: context + "/ds/service",
            type: "get",
            data: {
                "name": name
            },
            success: function (data) {
                service = $.parseJSON(data);
                var dds = $("#abstract-page div div section div div dl dd");
                dds[0].innerHTML = service.description;
                dds[1].innerHTML = service.introduction;
                $(dds[2]).find("img").attr("src", "<%=request.getContextPath()%>/resources/img/diagrams/" + service.diagram);
                dds[3].innerHTML = service.participants;
                dds[4].innerHTML = service.time;
                CreateApiMenu();
                CreateModulePages();
            }
        });

        $("#fileuploader").uploadFile({
            url: "file/upload",
            fileName: "file.zip"
        });
        $("#abstract-page").css("display", "");
        $("#employment-page").css("display", "none");
        $("#upload-page").css("display", "none");
        $(".service-page").css("display", "none");

        //灰掉部分按钮
        $(".start-btn").attr("disabled", true);
        $(".status-btn").attr("disabled", true);
        $(".download-btn").attr("disabled", true);
    });

    $(".data").click(function () {
        $("#data-page").css("display", "");
        $("#settings-page").css("display", "none");
        $("#result-page").css("display", "none");
        $("#performance-page").css("display", "none");
    });

    $(".set").click(function () {
        $("#data-page").css("display", "none");
        $("#settings-page").css("display", "");
        $("#result-page").css("display", "none");
        $("#performance-page").css("display", "none");
    });

    $(".start").click(function () {
        $("#data-page").css("display", "none");
        $("#settings-page").css("display", "none");
        $("#result-page").css("display", "none");
        $("#performance-page").css("display", "");
    });

    $(".result").click(function () {
        $("#data-page").css("display", "none");
        $("#settings-page").css("display", "none");
        $("#result-page").css("display", "");
        $("#performance-page").css("display", "none");
    });

    $(".submit-btn").click(function () {
        var inputs = $(".form-input");
        for (var i = 0; i < inputs.length; i++) {
            var value = $(inputs[i]).val();
            var key = $(inputs[i]).attr("id");
            formValues[key] = value;
        }
        alert("sumbit succes!")
        $(".start-btn").attr("disabled", false);
        $(".submit-btn").attr("disabled", false);
    });

    $(".start-btn").click(function () {
        $.ajax({
            url: activitiUrl + "process/start/" + service.activiti,
            type: "get",
            async: true,
            dataType: 'jsonp',  // 请求方式为jsonp
            data: {
                "processDefinitionId": service.activiti
            },
            jsonpCallback: "jsonpCallback",
            success: function (data) {
                process = $.parseJSON(JSON.stringify(data));
                // console.log(formValues);
                $.ajax({
                    url: activitiUrl + "task/start/" + process.InstanceId,
                    type: "get",
                    async: true,
                    dataType: 'jsonp',  // 请求方式为jsonp
                    data: {
                        "InstanceId": process.InstanceId,
                        "formkeys": JSON.stringify(formValues)
                    },
                    jsonpCallback: "jsonpCallback",
                    success: function () {
                        alert("a process of riverCanyon has already been started!");
                    }
                });
            },
            error: function () {
                alert("something error happened, please check the parameters!");
            }
        });
        $(".status-btn").attr("disabled", false);
        $(".start-btn").attr("disabled", false);
    });

    $(".status-btn").click(function () {
        $("#process-diagram").attr('src', activitiUrl + "history/graphHistoryProcessInstance?processInstanceId=" + process.InstanceId + "&rand=" + Math.random());
        alert("process status has been refreshed!")
    });

    function CreateApiMenu() {
        var apis = service.apis.split(",");
        for (var i = 0; i < apis.length; i++) {
            $("#dropdown").append("<li><a class='service-item fa fa-info' id='" + apis[i] + "'>   " + apis[i] + "</a></li>");
        }
    }

    function CreateModulePages() {
        $("#form-page").html("");
        var apis = service.apis.split(",");
        for (var i = 0; i < apis.length; i++) {
            var module = {
                "name": "",
                "url": "",
                "service": "",
                "description": "",
                "function": ""
            };
            $.ajax({
                async: false,
                url: context + "/ds/module",
                type: "get",
                data: {
                    "name": apis[i]
                },
                success: function (data) {
                    module = $.parseJSON(data);
                }
            });
            var $page = $("<div id='" + module.name + "-page' class='service-page col-lg-9'></div>");
            var $box = $("<div class='box'></div>");
            var $section = $("<section class='section brd-btm' align='center'></section>");
            $section.append("<h2 style='margin: 20px'>" + module.name + "</h2>");
            $page.css("display", "none");
            var $table1 = $("<table class='table table-striped'></table>");
            $table1.append("<th>Url</th><td>" + module.url + "</td>");
            $table1.appendTo($section);
            var $table2 = $("<table class='table table-striped'></table>");
            $table2.append("<thead><tr></tr><th>Parameter</th><th>type</th><th>Required</th><th>Description</th></thead>");
            var $body = $("<tbody></tbody>");
            var parameters = [{
                "name": "",
                "module": "",
                "type": "",
                "required": "",
                "readable": "",
                "defaultValue": "",
                "description": ""
            }];
            $.ajax({
                async: false,
                url: context + "/ds/parametersByModule",
                type: "get",
                data: {
                    "module": module.name
                },
                success: function (data) {
                    parameters = $.parseJSON(data);
                }
            });

            var $card = $("<div class='card'></div>");
            $card.append("<div class='card-header'><a class='h6 mb-0'>" + apis[i] + "</a></div>");
            var $cbody = $("<div class='card-body'></div>");
            var $form = $("<form></form>");
            for (var j = 0; j < parameters.length; j++) {
                var $row = $("<tr></tr>");
                $row.append("<td>" + parameters[j].name + "</td>");
                $row.append("<td>" + parameters[j].type + "</td>");
                $row.append("<td>" + parameters[j].required + "</td>");
                $row.append("<td>" + parameters[j].description + "</td>");
                $row.appendTo($body);

                var type = "text";
                var readonly = "";
                var $input;
                var $label;
                var $group = $("<div class='form-group'></div>");
                if (parameters[j].readable.indexOf("1") > -1) {
                    type = "hidden";
                    $label = $("");
                } else {
                    if (parameters[j].readable.indexOf("3") > -1)
                        readonly = "disabled";
                    $label = $("<label class='form-control-label'>" + parameters[j].name + " :  </label>");
                }
                if (parameters[j].defaultValue.length > 0) {
                    $input = $("<input type = '" + type + "' id = '" + parameters[j].name + "' value='" + parameters[j].defaultValue + "' class='form-control'" + readonly + " /> ");

                } else {
                    $input = $("<input type = '" + type + "' id = '" + parameters[j].name + "' class='form-control'" + readonly + " /> ");
                }
                $group.append($label);
                $group.append($input);
                $form.append($group);
            }
            $cbody.append($form);
            $card.append($cbody);
            $("#form-page").append($card);

            $body.appendTo($table2);
            $table2.appendTo($section);
            $section.appendTo($box);
            $box.appendTo($page);
            $("#pages").append($page);
        }

        $(document).on('click', ".service-item", function () {
            $("#abstract-page").css("display", "none");
            $("#document-page").css("display", "none");
            $("#employment-page").css("display", "none");
            $(".service-page").css("display", "none");
            var name = this.getAttribute("id");
            $("#" + name + "-page").css("display", "");
        });
    }

    $("#upload-btn").click(function () {
        adjust("#upload-page");
        $("#upload-page").css("display", "");
        $(".black-overlay").height(document.body.scrollHeight);
        $(".black-overlay").width(document.body.scrollWidth);
        // fadeTo第一个参数为速度，第二个为透明度
        // 多重方式控制透明度，保证兼容性，但也带来修改麻烦的问题
        $(".black-overlay").fadeTo(200, 0.5);
    });

    $("#upload-close").click(function () {
        $("#upload-page").css("display", "none");
        $(".black-overlay").fadeOut(200);
    });

    function adjust(id) {
        var w = $(id).width();
        var h = $(id).height();

        var t = scrollY() + (windowHeight() / 2) - (h / 2);
        if (t < 0) t = 0;

        var l = scrollX() + (windowWidth() / 2) - (w / 2);
        if (l < 0) l = 0;

        console.log(w, h, t, l);
        $(id).css({left: l + 'px', top: t + 'px'});
    }

    //浏览器视口的高度
    function windowHeight() {
        var de = document.documentElement;
        return self.innerHeight || (de && de.clientHeight) || document.body.clientHeight;
    }

    //浏览器视口的宽度
    function windowWidth() {
        var de = document.documentElement;
        return self.innerWidth || (de && de.clientWidth) || document.body.clientWidth
    }

    /* 浏览器垂直滚动位置 */
    function scrollY() {
        var de = document.documentElement;

        return self.pageYOffset || (de && de.scrollTop) || document.body.scrollTop;
    }

    /* 浏览器水平滚动位置 */
    function scrollX() {
        var de = document.documentElement;
        return self.pageXOffset || (de && de.scrollLeft) || document.body.scrollLeft;
    }

    $("#abstract").click(function () {
        $("#abstract-page").css("display", "");
        $("#employment-page").css("display", "none");
        $("#document-page").css("display", "none");
        $(".service-page").css("display", "none");
    });

    $("#employment").click(function () {
        $("#abstract-page").css("display", "none");
        $("#document-page").css("display", "none");
        $("#employment-page").css("display", "");
        $(".service-page").css("display", "none");
        $("#data-page").css("display", "");
        $("#settings-page").css("display", "none");
        $("#result-page").css("display", "none");
        $("#performance-page").css("display", "none");
    });

    $(".publish-btn").click(function () {
        var path = "F:/upload/" + file;
        $.ajax({
            async: false,
            url: context + "/publish/shapefile",
            type: "post",
            data: {
                shpPath: path
            },
            success: function (data) {
                result = $.parseJSON(JSON.stringify(data));
                url = result.data;
                console.log(url);
                $("#url-text").val(url);
                var inputs = $(".form-input");
                for (var i = 0; i < inputs.length; i++) {
                    var key = $(inputs[i]).attr("id");
                    if (key.indexOf("riverUrl") > -1)
                        $(inputs[i]).val(url);
                }
                alert("publish success!");
            }
        });
    });

    function download() {
        $.ajax({
            async: false,
            url: "/file/json/write",
            type: "post",
            data: {
                json: json,
                name: "water"
            },
            success: function (data) {
                console.log(data);
            }
        });
    }
</script>
</html>
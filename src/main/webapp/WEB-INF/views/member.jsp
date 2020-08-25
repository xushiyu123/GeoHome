<%@ page pageEncoding="utf-8" %>
<!doctype html>
<html>
<head>
    <title>GeoHome</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
    <!-- owl carousel-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/resources/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.default.css" id="theme-stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
    <!-- Custom stylesheet - for your changes--
    <!-- Favicon-->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <script src="<%=request.getContextPath()%>/resources/js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <script>
        var context = "<%=request.getContextPath()%>";

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
    <div class="all">
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- breadcrumb-->
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item active"><a href="/">Home</a></li>
                                <li aria-current="page" class="breadcrumb-item">Person</li>
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
                                <h3 class="h4 card-title">User section</h3>
                            </div>
                            <nav class="side-navbar">
                                <ul class="list-unstyled">
                                    <li class="active"><a id="about"> <i class="fa fa-user"></i>About me </a></li>
                                    <li><a id="publications"> <i class="fa fa-list"></i>Publications </a></li>
                            </nav>

                        </div>
                        <!-- /.col-lg-3-->
                        <!-- *** CUSTOMER MENU END ***-->

                    </div>
                    <div id="about-page" class="col-lg-9">
                        <div class="box">
                            <article id="ace-card" class="ace-card" style="width: 80%; margin-left: 10%">
                                <h2 class="title-thin text-muted">About me</h2>
                                <div class="ace-card-inner text-center">
                                    <img class="avatar avatar-195" style="border: 1px solid #ddd;"
                                         src=""
                                         align="left" height="210px" alt="photo">
                                </div>
                            </article>
                            <!-- #ace-card -->
                            <div class="padd-box clear-mrg" style="width: 80%; margin-left: 10%; font-size: 1em">
                                <section class="section brd-btm">
                                    <div class="row">
                                        <div class="col-sm-12 clear-mrg text-box" style="margin-left: 20px">
                                            <p></p>
                                        </div>

                                    </div>
                                </section><!-- .section -->
                                <hr/>
                                <section class="section brd-btm">
                                    <div class="row">
                                        <div class="col-sm-12 clear-mrg">
                                            <dl class="dl-horizontal clear-mrg" style="margin-top: 10px">
                                                <dt class="text-upper">Full Name</dt>
                                                <dd></dd>

                                                <dt class="text-upper">address</dt>
                                                <dd></dd>

                                                <dt class="text-upper">e-mail</dt>
                                                <dd></dd>

                                                <dt class="text-upper">interests</dt>
                                                <dd></dd>
                                            </dl>
                                        </div><!-- .col-sm-6 -->
                                    </div><!-- .row -->
                                </section><!-- .section -->
                            </div><!-- .padd-box -->
                        </div>
                    </div>
                    <div id="publications-page" class="col-lg-9">
                        <div class="box" id="publications-table">
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
    <!-- *** COPYRIGHT END ***-->
    <!-- *** COPYRIGHT END ***-->
</div>
<!-- JavaScript files-->
<script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/front.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/worksTables.js" type="text/javascript"></script>
</body>
<script>
    var member = {
        "name": "",
        "type": 0,
        "mail": "",
        "introduction": "",
        "photo": "",
        "interest": "",
        "address": ""
    };
    $(document).ready(function () {
        var name = GetName();
        $.ajax({
            async: false,
            url: context + "/ds/member",
            type: "get",
            data: {
                "name": name
            },
            success: function (data) {
                member = $.parseJSON(data);
                FillInfo();
            }
        });
        $.ajax({
            async: false,
            url: context + "/ds/author",
            type: "get",
            data: {
                "author": name
            },
            success: function (data) {
                works = $.parseJSON(data);
            }
        });
        drawTables("#publications-table", works, 0);
        $("#about-page").css("display", "");
        $("#publications-page").css("display", "none");
    });

    function FillInfo() {
        $("#about-page div article div img").attr("src", "<%=request.getContextPath()%>/resources/img/photos/" + member.photo);
        $("#about-page div div section div div p")[0].innerHTML = member.introduction;
        var dds = $("#about-page div div section div div dl").find("dd");
        dds[0].innerHTML = member.name;
        dds[1].innerHTML = member.address;
        dds[2].innerHTML = member.mail;
        dds[3].innerHTML = member.interest;
    }

    $(document).on('click', "btn", function () {
        window.open("resources/files/1.pdf");
    })

    $("#about").click(function () {
        $("#about-page").css("display", "");
        $("#publications-page").css("display", "none");
    });
    $("#publications").click(function () {
        $("#about-page").css("display", "none");
        $("#publications-page").css("display", "");
    });
</script>
</html>
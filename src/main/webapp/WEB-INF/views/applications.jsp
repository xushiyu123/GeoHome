<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/custom.css">
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/resources/vendor/material-components-web/material-components-web.min.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <%--<!-- 引入样式 -->--%>
    <script>
        var context = "<%=request.getContextPath()%>";
    </script>
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
                    <li class="nav-item"><a href="/application-direct" class="nav-link active">Applications</a></li>
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
        <div id="content">
            <div class="container">
                <div class="row">
                    <div style="width: 100%">
                        <!-- breadcrumb-->
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item active"><a href="/">Home</a></li>
                                <li aria-current="page" class="breadcrumb-item">Models</li>
                            </ol>
                        </nav>
                    </div>
                    <div class="grid row">
                        <div class="col-md-3 grid-item">
                            <div class="box-masonry">
                                <a title="River Canyon"
                                   class="box-masonry-image with-hover-overlay with-hover-icon">
                                    <img src="<%=request.getContextPath()%>/resources/img/diagrams/riverCanyon.jpg"
                                         alt=""
                                         class="img-fluid" style="height: 200px; border: 1px solid gray"></a>
                                <div class="box-masonry-text">
                                    <h4><a>River Canyon</a></h4>
                                    <div class="box-masonry-desription">
                                        <p>A service which
                                            extracts river canyons using DEM and vector river
                                            data.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 grid-item">
                            <div class="box-masonry"><a href="#" title=""
                                                        class="box-masonry-image with-hover-overlay with-hover-icon"><img
                                    src="<%=request.getContextPath()%>/resources/img/ban2.gif" alt=""
                                    class="img-fluid"></a>
                                <div class="box-masonry-text">
                                    <h4><a href="#">Name of the work 2</a></h4>
                                    <div class="box-masonry-desription">
                                        <p>Fifth abundantly made Give sixth hath. Cattle creature i be don't
                                            them.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 grid-item">
                            <div class="box-masonry"><a href="#" title=""
                                                        class="box-masonry-image with-hover-overlay with-hover-icon"><img
                                    src="<%=request.getContextPath()%>/resources/img/ban3.gif" alt=""
                                    class="img-fluid"></a>
                                <div class="box-masonry-text">
                                    <h4><a href="#">Name of the work 3</a></h4>
                                    <div class="box-masonry-desription">
                                        <p>Fifth abundantly made Give sixth hath. Cattle creature i be don't
                                            them.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
</div>
<!-- JavaScript files-->
<script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/jquery.cookie/jquery.cookie.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/front.js"></script>
<script src="<%=request.getContextPath()%>/resources/vendor/material-components-web/material-components-web.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/member.js"></script>
</body>
<script>
    $('.box-masonry').click(function () {
        var name = $(this).find("a")[0].getAttribute("title");
        window.location.href = "/application?name=" + name;
    })
</script>
</html>
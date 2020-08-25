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
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/custom.css">
    <%--img-slider--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/half-slider.css"/>
    <!-- Favicon-->
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
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
                <a href="#" class="btn btn-outline-secondary navbar-toggler"><i
                        class="fa fa-shopping-cart"></i></a>
            </div>
            <div id="navigation" class="collapse navbar-collapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"><a href="/" class="nav-link active">Home</a></li>
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
        <div id="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="img-slider">
                            <div id="carouselExampleIndicators" class="carousel slide">
                                <ol class="carousel-indicators">
                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                </ol>
                                <div class="carousel-inner" role="listbox">
                                    <!-- Slide One - Set the background image for this slide in the line below -->
                                    <div class="carousel-item active" style="background-image:
                                            url('<%=request.getContextPath()%>/resources/img/main-slider1.jpg')">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <!-- Slide Two - Set the background image for this slide in the line below -->
                                    <div class="carousel-item" style="background-image:
                                            url('<%=request.getContextPath()%>/resources/img/main-slider2.jpg')">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <!-- Slide Three - Set the background image for this slide in the line below -->
                                    <div class="carousel-item" style="background-image:
                                            url('<%=request.getContextPath()%>/resources/img/main-slider3.jpg')">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                    <!-- Slide Four - Set the background image for this slide in the line below -->
                                    <div class="carousel-item" style="background-image:
                                            url('<%=request.getContextPath()%>/resources/img/main-slider4.jpg')">
                                        <div class="carousel-caption d-none d-md-block">
                                        </div>
                                    </div>
                                </div>
                                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                                   data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                                   data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                        <!-- /#img-slider-->
                    </div>
                </div>
            </div>
            <!--
            *** ADVANTAGES HOMEPAGE ***
            _________________________________________________________
            -->
            <div id="advantages" style="padding-top: 3%">
                <div class="container">
                    <div class="row mb-4">
                        <div class="col-md-4">
                            <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                                <div class="icon"><i class="fa fa-heart"></i></div>
                                <h3><a href="#">We love our customers</a></h3>
                                <p class="mb-0">We are known to provide best possible service ever</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                                <div class="icon"><i class="fa fa-tags"></i></div>
                                <h3><a href="#">Best prices</a></h3>
                                <p class="mb-0">You can check that the height of the boxes adjust when longer text like
                                    this one is used in one of them.</p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="box clickable d-flex flex-column justify-content-center mb-0 h-100">
                                <div class="icon"><i class="fa fa-thumbs-up"></i></div>
                                <h3><a href="#">100% satisfaction guaranteed</a></h3>
                                <p class="mb-0">Free returns on everything for 3 months.</p>
                            </div>
                        </div>
                    </div>
                    <!-- /.row-->
                </div>
                <!-- /.container-->
            </div>
        </div>
    </div>
    <!--
    *** FOOTER ***
    _________________________________________________________
    -->
    <div id="footer">
        <div class="field-label">
            <div class="field-label even">ADDRESS</div>
        </div>
        <div class="field-item">
            <div class="field-item even">School of Geography</div>
            <div class="field-item even">NanJing Normal University</div>
            <div class="field-item even">No.1 Wenyuan Road</div>
        </div>
        <div class="field-label">
            <div class="field-label even">WE ARE PART OF:</div>
        </div>
        <div class="field-item">
            <div class="field-item even">Key Laboratory of Virtual Geographic Environment</div>
            <div class="field-item even">College of Geography</div>
            <div class="field-item even">Nanjing Normal University</div>
        </div>
        <div class="field-label">
            <div class="field-label even">Privacy and Legal Statements</div>
        </div>
        <div class="field-item">
            <div class="field-item even">The views expressed on this site do not necessarily reflect those of
                funding agencies.
            </div>
        </div>
    </div>
    <!-- /#footer-->
    <!-- *** FOOTER END ***-->
    <!-
    *** COPYRIGHT ***
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
    <!-- JavaScript files-->
    <script src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/jquery.cookie/jquery.cookie.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/owl.carousel/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/front.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/member.js"></script>
</body>
</html>
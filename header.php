<?php
require_once 'vendor/autoload.php';
use App\classes\Post;
use App\classes\Site;
$ob = Site::display();
$siteData = mysqli_fetch_assoc($ob);
#$post = Post::showActivelPost();
$populer = Post::showAllPost();
$page = explode('/',$_SERVER['PHP_SELF']);
$page = end($page);
$title = '';
if($page == 'login.php'){
    $title = 'Home';
}
elseif ($page == 'contact.php'){
    $title = 'Contact';
}
?>
<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Site Metas -->
    <title><?= $title . ' | ' . $siteData['title']?></title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Design fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- FontAwesome Icons core CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/style.css" rel="stylesheet">

    <!-- Responsive styles for this template -->
    <link href="assets/css/responsive.css" rel="stylesheet">

    <!-- Colors for this template -->
    <link href="assets/css/colors.css" rel="stylesheet">

    <!-- Version Tech CSS for this template -->
    <link href="assets/css/version/tech.css" rel="stylesheet">


     <!--  summernote -->
     <link href="admin/assets/summernote/dist/summernote.css" rel="stylesheet">
        <title><?= 'post' . ' | '?>Admin Pannel</title>

        <!-- Bootstrap core CSS -->
        <link href="admin/css/bootstrap.min.css" rel="stylesheet">
        <link href="admin/css/bootstrap-reset.css" rel="stylesheet">
        <!--external css-->
        <link href="admin/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
        <link rel="stylesheet" href="admin/css/owl.carousel.css" type="text/css">
        <!--dynamic table-->
        <link href="admin/assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
        <link href="admin/assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
        <link rel="stylesheet" href="admin/assets/data-tables/DT_bootstrap.css" />
        <!--right slidebar-->
        <link href="admin/css/slidebars.css" rel="stylesheet">

        <!-- Custom styles for this template -->

        <link href="admin/css/style.css" rel="stylesheet">
        <link href="admin/css/style-responsive.css" rel="stylesheet" />
        <script src="assets/js1/tinymce.min.js" referrerpolicy="origin"></script>
        <script>tinymce.init({selector: '.summernote'});</script>

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="wrapper">
    <header class="tech-header header">
        <div class="container-fluid">
            <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="index.php"></a>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                
                    <ul class="navbar-nav mr-auto">
                    <?php if (isset($_SESSION['email'])) : ?>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php" style="margin-left:500px">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.php">Contact Us </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="addpost.php">Create post </a>
                        </li>
                        
                        <li class="nav-item">
                        <button type="button" class="btn btn-light"><a href="logout-user.php">Logout</a></button>
                        </li>
                        <?php else : ?>
                            <li class="nav-item">
                            <a class="nav-link" href="index.php" style="margin-left:500px">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.php">Contact Us </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login-user.php">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="signup-user.php">Sign up</a>
                        </li>
                        <?php endif ?>
                    </ul>
                    
                    <ul class="navbar-nav mr-2">
                        <form class="form-inline" method="get">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search  " aria-label="Search" name="search">
                            <input type="submit" class="btn btn-outline-success my-2 my-sm-0" value="Search" style="cursor: pointer;" name="search-btn">
                        </form>
                    </ul>
                    
                </div>
            </nav>
        </div><!-- end container-fluid -->
    </header><!-- end market-header -->
    <hr>
    <section class="section">
        <div class="container">
            <div class="row">

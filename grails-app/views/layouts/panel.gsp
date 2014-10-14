<!DOCTYPE html>
<html lang="en">
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="FreeAppListings"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
        <asset:stylesheet src="style.css"/>
        <g:layoutHead/>
	</head>
<body>
<!--Start Header-->
<div id="screensaver">
	<canvas id="canvas"></canvas>
	<i class="fa fa-lock" id="screen_unlock"></i>
</div>
<div id="modalbox">
	<div class="devoops-modal">
		<div class="devoops-modal-header">
			<div class="modal-header-name">
				<span><asset:image src="free.png" width="120px"/></span>
			</div>
			<div class="box-icons">
				<a class="close-link">
					<i class="fa fa-times"></i>
				</a>
			</div>
		</div>
		<div class="devoops-modal-inner">
		</div>
		<div class="devoops-modal-bottom">
		</div>
	</div>
</div>
<header class="navbar">
	<div class="container-fluid expanded-panel">
		<div class="row">
			<div id="logo" class="col-xs-12 col-sm-2">
				<a href="${createLink(controller: 'panel',action: 'index')}"><asset:image src="free.png" width="120px"/> </a>
			</div>
			<div id="top-panel" class="col-xs-12 col-sm-10">
				<div class="row">
					<div class="col-xs-8 col-sm-4">
						<a href="#" class="show-sidebar">
						  <i class="fa fa-bars"></i>
						</a>
						<div id="search">
							<input type="text" placeholder="search"/>
							<i class="fa fa-search"></i>
						</div>
					</div>
					<div class="col-xs-4 col-sm-8 top-panel-right">
						<ul class="nav navbar-nav pull-right panel-menu">
							<li class="hidden-xs">
								<a href="#" class="modal-link">
									<i class="fa fa-bell"></i>
									<span class="badge"></span>
								</a>
							</li>
							<li class="hidden-xs">
								<a class="ajax-link" href="#">
									<i class="fa fa-calendar"></i>
									<span class="badge"></span>
								</a>
							</li>
							<li class="hidden-xs">
								<a href="#" class="ajax-link">
									<i class="fa fa-envelope"></i>
									<span class="badge"></span>
								</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle account" data-toggle="dropdown">
									<div class="avatar">
										<asset:image src="fal_avatar.png"/>
									</div>
									<i class="fa fa-angle-down pull-right"></i>
									<div class="user-mini pull-right">
										<span class="welcome">Welcome,</span>
										<span>${user?.name}</span>
									</div>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#">
											<i class="fa fa-user"></i>
											<span class="hidden-sm text">${user?.company?.name}</span>
										</a>
									</li>
									<li>
										<a href="#">
											<i class="fa fa-cog"></i>
											<span class="hidden-sm text">Settings</span>
										</a>
									</li>
                                    %{--<li>
                                        <a href="#" class="ajax-link">
                                            <i class="fa fa-envelope"></i>
                                            <span class="hidden-sm text">Messages</span>
                                        </a>
                                    </li>--}%
									<li>
										<a href="${createLink(controller: 'logout', action: 'index')}">
											<i class="fa fa-power-off"></i>
											<span class="hidden-sm text">Logout</span>
										</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!--End Header-->
<!--Start Container-->
<div id="main" class="container-fluid">
	<div class="row">
		<div id="sidebar-left" class="col-xs-2 col-sm-2">
			<ul class="nav main-menu">
				<li>
					<a href="${createLink(controller: 'panel',action: 'index')}" class="active">
						<i class="fa fa-dashboard"></i>
						<span class="hidden-xs">Dashboard</span>
					</a>
				</li>
				<li class="dropdown">
					<a  href="#" class="dropdown-toggle">
						<i class="fa fa-desktop"></i>
						<span class="hidden-xs">APPs</span>
					</a>
					<ul class="dropdown-menu">
						<li><a href="${createLink(controller: 'panel',action: 'list')}"><i class="fa fa-list-alt"></i> List</a></li>
                        <li><a href="${createLink(controller: 'panel',action: 'apps')}"><i class="fa  fa-plus-square"></i> New APP</a></li>
					</ul>
				</li>
                <li class="dropdown">
                    <a  href="#" class="dropdown-toggle">
                        <i class="fa fa-eur"></i>
                        <span class="hidden-xs">Campaigns</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${createLink(controller: 'panel',action: 'campaigns')}"><i class="fa  fa-gears"></i> Manage</a></li>
                    </ul>
                </li>
                <li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa  fa-mobile"></i>
						 <span class="hidden-xs">Platforms</span>
					</a>
					<ul class="dropdown-menu">

					</ul>
				</li>
			</ul>
		</div>
		<!--Start Content-->
		<div id="content" class="col-xs-12 col-sm-10">
            <!-- Begin page content -->
            <asset:javascript src="devoops.js"/>
            <g:layoutBody/>
		</div>
		<!--End Content-->
	</div>
</div>
<!--End Container-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--<script src="http://code.jquery.com/jquery.js"></script>-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script>
    $(document).ready(function(){
        loadBrandPercentage('${createLink(controller: 'specialFunction',action: 'companyPercentage')}');
    });
</script>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>FreeAPPSListing by Amplificious | Oops, Page Not Found</title>
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
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div id="page-500" class="col-xs-12 text-center">
			<h1>Error 404</h1>
			<h3>FAP, <code>SORRY!</code>... FAL Couldn't find what you where looking for. Want to try another option?</h3>
            <asset:image src="free_inverted.png" width="500px;"/>
            <div class="row-fluid">
                <div class="col-xs-12 col-sm-12 col-md-6 col-md-offset-3">
                    <div class="list-group">
                        <div  class="list-group-item active">
                            <h2 class="list-group-item-heading">We give you plenty</h2>
                        </div>
                            <a href="${createLink(controller: 'panel',action: 'panel')}" class="list-group-item">
                                <h4 class="list-group-item-heading">FreeAPPSListing Company Dashboard</h4>
                            </a>
                        <a href="${createLink(controller: 'register',action: 'index')}" class="list-group-item">
                            <h4 class="list-group-item-heading">FreeAPPSListing Company Registration</h4>
                        </a>
                        <a href="#" class="list-group-item">
                            <h4 class="list-group-item-heading">FreeAPPSListing Documentation & API</h4>
                        </a>
                        <a href="http://www.amplificious.com" class="list-group-item">
                            <h4 class="list-group-item-heading">Amplificious Corporate Website</h4>
                        </a>
                        <a href="http://www.amplificious.com/contact" class="list-group-item">
                            <h4 class="list-group-item-heading">Amplificious Contact Page</h4>
                        </a>
                    </div>
                </div>
            </div>
            <div class="row-fluid">
                <div class="col-sm-12">
                    <h3>Or</h3>
                    <a href="${createLink(uri: '/')}" class="btn btn-default btn-label-left"><span><i class="fa fa-reply"></i></span> Go to FreeAPPSListing.com</a>
                </div>
            </div>

		</div>
	</div>
</div>
</body>
</html>

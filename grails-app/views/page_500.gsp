<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:if env="development">Grails Runtime Exception</g:if><g:else>FreeAPPSListing by Amplificious | ERROR</g:else></title>
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
			<h1>Error 500</h1>
			<h3>Oh No! We are very sorry but there is something wrong</h3>
            <asset:image src="free_inverted.png" width="500px;"/>
            <g:if env="development">
                <g:renderException exception="${exception}" />
            </g:if>
            <g:else>
                <ul class="errors">
                    <li>The system has notified our engineers, marketers, staff, even the police and should be up and running again pretty soon!</li>
                </ul>
            </g:else>
			<a href="${createLink(uri: '/')}" class="btn btn-default btn-label-left"><span><i class="fa fa-reply"></i></span> Go to FreeAPPSListing.com</a>
		</div>
	</div>
</div>
</body>
</html>

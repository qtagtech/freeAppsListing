<%@ page import="com.FreeAppListing.Campaign" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="panel"/>
    <title>FreeAppListing Admin Panel</title>
</head>
<body>
<!--Start Breadcrumb-->
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<ol class="breadcrumb">
			<li><a href="#">Home</a></li>
			<li><a href="#">Dashboard</a></li>
		</ol>
	</div>
</div>
<!--End Breadcrumb-->
<!--Start Dashboard 1-->
<div id="dashboard-header" class="row">
	<div class="col-xs-10 col-sm-2">
		<h3><img style="margin-top: 3px;" src="/assets/free_inverted.png" width="210px"></h3>
	</div>
	<div class="col-xs-2 col-sm-1 col-sm-offset-1">
		<div id="social" class="row">
			<a href="#"><i class="fa fa-google-plus"></i></a>
			<a href="#"><i class="fa fa-facebook"></i></a>
			<a href="#"><i class="fa fa-twitter"></i></a>
			<a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-youtube"></i></a>
		</div>
	</div>
	<div class="clearfix visible-xs"></div>
	<div class="col-xs-12 col-sm-8 col-md-7 pull-right">
		<div class="row">
			<div class="col-xs-4">

			</div>
			<div class="col-xs-4">

			</div>
			<div class="col-xs-4">

			</div>
		</div>
	</div>
</div>

<!--End Dashboard 1-->
<!--Start Dashboard 2-->
<div class="row-fluid">

	<div id="dashboard_links" class="col-xs-12 col-sm-2 pull-right">
		<ul class="nav nav-pills nav-stacked">
			<li class="active" ><a href="#" class="tab-link" id="clients">APPs</a></li>
			<li><a href="#" class="tab-link" id="graph">Platforms</a></li>
		</ul>
	</div>
	<div id="dashboard_tabs" class="col-xs-12 col-sm-10">
		<!--Start Dashboard Tab 1-->
		<div id="dashboard-clients" class="row" class="row" style="visibility: visible; position: relative;">
        <h4><img style="margin-top: 3px; margin-left: 10px;" src="/assets/free_inverted.png" width="100px"> - Basic Stats</h4>
			<div class="row one-list-message">
				<div class="col-xs-1 text-center"><b>APP</b></div>
				<div class="col-xs-1 text-center">Category</div>
				<div class="col-xs-1 text-center">Subcategory</div>
				<div class="col-xs-1 text-center">Platforms</div>
                <div class="col-xs-1 text-center">Campaigns</div>
                <div class="col-xs-1 text-center">Clicks</div>
                <div class="col-xs-1 text-center">Installs</div>
                <div class="col-xs-1 text-center">Actions</div>
			</div>
        <g:each in="${allApps}" status="i" var="app" >
            <div class="row one-list-message">
                <div class="col-xs-1 text-center" id="name_${app?.id as java.lang.String}"><b>${app?.name}</b></div>
                <div class="col-xs-1 text-center">${app?.category?.category?.name}</div>
                <div class="col-xs-1 text-center">${app.category?.name}</div>
                <div class="col-xs-1 text-center">${com.FreeAppListing.Link.countByApp(app)}</div>
                <div class="col-xs-1 text-center">${com.FreeAppListing.Campaign.countByApp(app)}</div>
                <div class="col-xs-1 text-center">${com.FreeAppListing.Conversion.withCriteria(uniqueResult: true) {
                    'in'('campaign',Campaign.findAllByApp(app))
                    projections {
                        rowCount()
                    }
                }
                }</div>
                <div class="col-xs-1 text-center">${com.FreeAppListing.Event.withCriteria(uniqueResult: true) {
                    'in'('campaign',Campaign.findAllByApp(app))
                    projections {
                        rowCount()
                    }
                }
                }</div>
                <div class="col-xs-1 text-center"><button id="${app?.id as String}" type="button" class="btn btn-warning btn-label-left create-campaign"><span><i class="fa fa-eur"></i></span> Create Campaign</button></div>
            </div>
        </g:each>
		</div>
		<!--End Dashboard Tab 1-->
		<!--Start Dashboard Tab 2-->
		<div id="dashboard-graph" class="row" style="width:100%; visibility: hidden; position: absolute;" >
			<div class="col-xs-12">
				<h4 class="page-header">OS Platform Statistics</h4>
				<div id="stat-graph" style="height: 300px;"></div>
			</div>
		</div>
		<!--End Dashboard Tab 2-->
	</div>
	<div class="clearfix"></div>
</div>
<!--End Dashboard 2 -->
<div style="height: 40px;"></div>

<script type="text/javascript">
    function DemoSelect2(){
        $('#s2_publisher').select2({placeholder: "Loading Publishers"});
        $('#s2_publisher').select2("readonly",true);
        $('#s2_platform').select2({placeholder: "Loading Platforms"});
        $('#s2_platform').select2("readonly",true);
        var appId = $("#appId").val();
        $.when($.ajax({url: '${createLink(controller: 'specialFunction',action: 'listAppPlatforms')}',data:{app:appId}})).then(function( response, textStatus, jqXHR ) {if(jqXHR.status==200){for(var i=0; i < response.length; i++){$('#s2_platform').append('<option value="'+response[i].id+'">'+response[i].name+'</option>');}$('#s2_platform').select2({placeholder: "Which version of your App are you promoting?"});$('#s2_platform').select2("readonly",false);}});
        $.when($.ajax({url: '${createLink(controller: 'specialFunction',action: 'listPublishers')}'})).then(function( response, textStatus, jqXHR ) {if(jqXHR.status==200){for(var i=0; i < response.length; i++){$('#s2_publisher').append('<option value="'+response[i].id+'">'+response[i].name+'</option>');}$('#s2_publisher').select2({placeholder: "Where are you promoting your APP?"});$('#s2_publisher').select2("readonly",false);}});
        $("#createCampaign").validate({
            rules: {
                name: "required",
                s2_publisher: "required",
                s2_platform: "required"
            },
            messages: {
                name: "Please enter a descriptive name for recognizing the Campaign. i.e. APPNAME_iOS_FAL_FOOTBALL_PLAY_02-14-14.",
                s2_publisher: "Please select a Publisher",
                s2_platform: "Please select a version of your APP for promoting"
            }
        });

    }
$(document).ready(function() {
	// Make all JS-activity for dashboard
	DashboardTabChecker();

	// Load Knob plugin and run callback for draw Knob charts for dashboard(tab-servers)
	//LoadKnobScripts(DrawKnobDashboard);
	// Load Sparkline plugin and run callback for draw Sparkline charts for dashboard(top of dashboard + plot in tables)
	//LoadSparkLineScript(DrawSparklineDashboard);
	// Load Morris plugin and run callback for draw Morris charts for dashboard
	LoadMorrisScripts(MorrisDashboard);
	// Make beauty hover in table
	$("#ticker-table").beautyHover();

    $('body').on('click','.create-campaign',function(e){
        e.preventDefault();
        var appId = $(this).attr('id');
        var appName = $("#name_"+appId).html();
        var s="\x3Cform id=\"createCampaign\" name=\"createCampaign\" method=\"post\" enctype=\"multipart\x2Fform-data\" action=\"${createLink(controller: 'panel',action: 'saveCampaign')}\" class=\"form-horizontal\"\x3E\n \x3Cfieldset\x3E\n \x3Clegend\x3EAll Fields are Required to create a Campaign. \x3C\x2Flegend\x3E\n \x3Cdiv class=\"form-group\"\x3E\n \x3Clabel class=\"col-sm-3 control-label\"\x3ECampaign Name\x3C\x2Flabel\x3E\n \x3Cdiv class=\"col-sm-5\"\x3E\n \x3Cinput type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" \x2F\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fdiv\x3E\n \x3Cdiv class=\"form-group\"\x3E\n \x3Clabel class=\"col-sm-3 control-label\"\x3EPublisher\x3C\x2Flabel\x3E\n \x3Cdiv class=\"col-sm-5\"\x3E\n \x3Cselect id=\"s2_publisher\" name=\"s2_publisher\" class=\"\"\x3E\n \x3Coption\x3E\x3C\x2Foption\x3E\n \x3C\x2Fselect\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fdiv\x3E\n \x3Cdiv class=\"form-group\"\x3E\n \x3Clabel class=\"col-sm-3 control-label\"\x3EPlatform\x3C\x2Flabel\x3E\n \x3Cdiv class=\"col-sm-5\"\x3E\n \x3Cselect id=\"s2_platform\" name=\"s2_platform\" class=\"populate placeholder\"\x3E\n \x3Coption\x3E\x3C\x2Foption\x3E\n \x3C\x2Fselect\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fdiv\x3E\n \x3Cinput type=\"hidden\" name=\"appId\" id=\"appId\" value=\"\"\x2F\x3E\n \x3C\x2Ffieldset\x3E\n \x3Cdiv class=\"form-group\"\x3E\n \x3Cdiv class=\"col-sm-9 col-sm-offset-3\"\x3E\n \x3Cinput type=\"submit\" class=\"btn btn-primary\"\x2F\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fform\x3E";
        OpenModalBox("Creating Campaign for: "+appName,s,"<pre>Press send when finished and your APP will be ready to be promoted!</pre>");
        $("#appId").val(appId);
        LoadSelect2Script(DemoSelect2);
    });
    // validate signup form on keyup and submit

});
</script>
</body>
</html>

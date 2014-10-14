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
            <li><a href="${createLink(controller: 'panel',action: 'index')}">Home</a></li>
			<li><a href="#">Campaigns</a></li>
		</ol>
	</div>
</div>
<g:each in="${allApps}" var="pair" status="i">
    <div class="row-fluid">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="box">
                <div class="box-header" id="${pair.app?.id as String}">
                    <div class="box-name">
                        <i class="fa fa-asterisk"></i>
                        <span>(${pair?.campaigns ? pair.campaigns.size() : 0}) Campaigns for: <code id="name_${pair?.app?.id as String}">${pair?.app?.name}</code></span>
                    </div>
                    <div class="box-icons">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="expand-link">
                            <i class="fa fa-expand"></i>
                        </a>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                    <div class="no-move"></div>
                </div>
                <div class="box-content">
                    <g:if test="${ ( pair?.campaigns ) && ( pair?.campaigns?.size() > 0 )}">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Clicks</th>
                                <th>Installs</th>
                                <th>Tracking URL</th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${pair?.campaigns}" var="cp" status="j">
                                <tr>
                                    <td>${j+1}</td>
                                    <td id="name_${cp?.id as String}">${cp?.name}</td>
                                    <td>${com.FreeAppListing.Conversion.countByCampaign(cp)}</td>
                                    <td>${com.FreeAppListing.Event.countByCampaign(cp)}</td>
                                    <td><button type="button" id="${cp?.id as String}" class="btn btn-primary btn-app-sm btn-circle open-tracking"><i class="fa fa-expand" ></i></button></td>
                                </tr>
                            </g:each>
                            </tbody>
                            <tfoot>
                            <td colspan="5" class="text-right"><button id="${pair?.app?.id as String}" type="button" class="btn btn-warning btn-label-left create-campaign"><span><i class="fa fa-eur"></i></span> Create Campaign</button></td>
                            </tfoot>
                        </table>
                    </g:if>
                    <g:else>
                        <button id="${pair?.app?.id as String}" type="button" class="btn btn-warning btn-label-left create-campaign"><span><i class="fa fa-eur"></i></span> Create Campaign</button>
                    </g:else>

                </div>
            </div>
        </div>
    </div>
</g:each>

</div>

<div class="row-fluid">



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

    $('body').on('click','.create-campaign',function(e){
        e.preventDefault();
        var appId = $(this).attr('id');
        var appName = $("#name_"+appId).html();
        var s="\x3Cform id=\"createCampaign\" name=\"createCampaign\" method=\"post\" enctype=\"multipart\x2Fform-data\" action=\"${createLink(controller: 'panel',action: 'saveCampaign')}\" class=\"form-horizontal\"\x3E\n \x3Cfieldset\x3E\n \x3Clegend\x3EAll Fields are Required to create a Campaign. \x3C\x2Flegend\x3E\n \x3Cdiv class=\"form-group\"\x3E\n \x3Clabel class=\"col-sm-3 control-label\"\x3ECampaign Name\x3C\x2Flabel\x3E\n \x3Cdiv class=\"col-sm-5\"\x3E\n \x3Cinput type=\"text\" class=\"form-control\" name=\"name\" id=\"name\" \x2F\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fdiv\x3E\n \x3Cdiv class=\"form-group\"\x3E\n \x3Clabel class=\"col-sm-3 control-label\"\x3EPublisher\x3C\x2Flabel\x3E\n \x3Cdiv class=\"col-sm-5\"\x3E\n \x3Cselect id=\"s2_publisher\" name=\"s2_publisher\" class=\"\"\x3E\n \x3Coption\x3E\x3C\x2Foption\x3E\n \x3C\x2Fselect\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fdiv\x3E\n \x3Cdiv class=\"form-group\"\x3E\n \x3Clabel class=\"col-sm-3 control-label\"\x3EPlatform\x3C\x2Flabel\x3E\n \x3Cdiv class=\"col-sm-5\"\x3E\n \x3Cselect id=\"s2_platform\" name=\"s2_platform\" class=\"populate placeholder\"\x3E\n \x3Coption\x3E\x3C\x2Foption\x3E\n \x3C\x2Fselect\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fdiv\x3E\n \x3Cinput type=\"hidden\" name=\"appId\" id=\"appId\" value=\"\"\x2F\x3E\n \x3C\x2Ffieldset\x3E\n \x3Cdiv class=\"form-group\"\x3E\n \x3Cdiv class=\"col-sm-9 col-sm-offset-3\"\x3E\n \x3Cinput type=\"submit\" class=\"btn btn-primary\"\x2F\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fform\x3E";
        OpenModalBox("Creating Campaign for: "+appName,s,"<pre>Press send when finished and your APP will be ready to be promoted!</pre>");
        $("#appId").val(appId);
        LoadSelect2Script(DemoSelect2);
    });
    var currentButton;
    $('body').on('click','.open-tracking',function(e){
        e.preventDefault();
        $(this).children('i').toggleClass('fa-expand');
        $(this).children('i').toggleClass('fa-refresh');
        $(this).children('i').toggleClass('fa-spin');
        $(this).attr('disabled','disabled');
        currentButton = $(this);
        var cpId = $(this).attr('id');
        var cpName = $("#name_"+cpId).html();
        $.when($.ajax({url: '${createLink(controller: 'specialFunction',action: 'generateTrackingLink')}',data:{campaign: cpId}})).then(function( response, textStatus, jqXHR ) {if(jqXHR.status==200){var s="\x3Cpre id=\"link-value\"\x3E\x3Ch3\x3E"+response+"\x3C\x2Fh3\x3E\x3C\x2Fpre\x3E";OpenModalBox("Tracking URL for Campaign: <code>"+cpName+"</code>",s,"<pre>Copy (Ctrl + c) and Paste (Ctrl + v) this code in the destination URL in your Publisher's Setup Page.</pre>");$(currentButton).children('i').toggleClass('fa-expand');$(currentButton).children('i').toggleClass('fa-spin');$(currentButton).children('i').toggleClass('fa-refresh');$(currentButton).removeAttr('disabled');}});


    });
});
</script>
</body>
</html>

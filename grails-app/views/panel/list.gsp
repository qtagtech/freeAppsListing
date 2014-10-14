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
			<li><a href="#">APPs</a></li>
		</ol>
	</div>
</div>
<div class="row-fluid">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <a href="${createLink(controller: 'panel',action: 'apps')}" class="btn btn-success btn-label-right">New APP <span><i class="fa fa-plus-square"></i></span></a>
    </div>
</div>

    <div class="row-fluid">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="list-group">
                <div  class="list-group-item active">
                    <h4 class="list-group-item-heading">Your APPs in <img style="margin-top: 3px;" src="/assets/free_inverted.png" width="180px"></h4>

                </div>
                    <g:each in="${allApps}" var="pair" status="i">
                        <a href="${createLink(controller: 'panel',action: 'campaigns')}#${pair.app?.id as String}" class="list-group-item">
                            <h4 class="list-group-item-heading">${pair?.app?.name} <small>(${pair?.campaigns ? pair.campaigns?.size() : 0} Campaigns)</small></h4>
                            <p class="list-group-item-text">${pair.app?.description}</p>
                        </a>
                    </g:each>

            </div>
        </div>
    </div>


</div>

<div class="row-fluid">



	<div class="clearfix"></div>
</div>
<!--End Dashboard 2 -->
<div style="height: 40px;"></div>

<script type="text/javascript">

$(document).ready(function() {


});
</script>
</body>
</html>

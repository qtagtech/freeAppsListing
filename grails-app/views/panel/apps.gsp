<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="panel"/>
    <title>FreeAppListing Admin Panel</title>
</head>
<body>
<div class="row">
    <div id="breadcrumb" class="col-md-12">
        <ol class="breadcrumb">
            <li><a href="index.html">Dashboard</a></li>
            <li><a href="#">Applications</a></li>
            <li><a href="#">Create an Application</a></li>
        </ol>
    </div>
</div>
<div class="row">
    <div class="col-xs-12 col-sm-12">
        <div class="box">
            <div class="box-header">
                <div class="box-name">
                    <i class="fa fa-search"></i>
                    <span>App Creation Form</span>
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
                <form id="appForm" name="appForm" method="post" enctype="multipart/form-data" action="${createLink(controller: 'panel', action: 'saveApp')}" class="form-horizontal">
                    <fieldset>
                        <legend>Fill All Required Fields and your App will be listed in FreeAPPSListing. </legend>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">APP Name</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="appname" id="appname" value="${applicationInstance?.name}" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">APP Category</label>
                            <div class="col-sm-5">
                                <select id="s2_categories" name="s2_categories" class="">
                                    <option></option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">APP Sub-Category</label>
                            <div class="col-sm-5">
                                <select id="s2_subcategories" name="s2_subcategories" class="populate placeholder">
                                    <option></option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" for="form-styles">Description</label>
                            <div class="col-sm-5">
                                <textarea name="description" class="form-control" rows="5" id="description" value="${applicationInstance?.description}"></textarea>
                            </div>
                        </div>
                        <div class="form-group has-warning has-feedback">
                            <label class="col-sm-3 control-label">Select some tags to classify your APP</label>
                            <div class="col-sm-5">
                                <select id="s2_with_tag" name="s2_with_tag" multiple="multiple" class="populate placeholder">
                                </select>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend></legend>
                        <div class="row form-group">

                            <div class="col-sm-5 col-md-offset-3">
                                <h4>Do you want to configure the Marketplaces your APP is available at?<br /><small><code> Turn On</code> the switch to go confirm and go on!</small></h4>
                                <div class="toggle-switch toggle-switch-info">
                                    <label>
                                        <input type="checkbox" checked id="continue_links" name="continue_links">
                                        <div class="toggle-switch-inner"></div>
                                        <div class="toggle-switch-switch"><i class="fa fa-check"></i></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset  id="create_links">
                        <legend>Available Market Places</legend>
                        <div class="form-group has-warning has-feedback">
                            <label class="col-sm-3 control-label">Select <kbd>ALL Platforms</kbd> where your APP is available</label>
                            <div class="col-sm-5">
                                <select id="s2_platforms" name="s2_platforms" multiple="multiple" class="populate placeholder">
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-8 col-md-offset-2">
                            <div class="box">
                                <div class="box-header">
                                    <div class="box-name">
                                        <i class="fa fa-search"></i>
                                        <span>Accordion</span>
                                    </div>
                                    <div class="box-icons pull-right">
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
                                <div class="box-content" id="accordion">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="form-group">
                        <div class="col-sm-9 col-sm-offset-3">
                            <input type="submit" class="btn btn-primary"/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    // Run Select2 plugin on elements
    function DemoSelect2(){
        $('#s2_with_tag').select2({placeholder: "Loading Tags"});
        $('#s2_categories').select2({placeholder: "Loading Categories"});
        $('#s2_subcategories').select2({placeholder: "Select a Category First"});
        $('#s2_platforms').select2({placeholder: "No APP created Yet"});
        $('#s2_categories').select2("readonly",true);
        $('#s2_subcategories').select2("readonly",true);
        $('#s2_with_tag').select2("readonly",true);
        $('#s2_categories').select2("readonly",true);
        $('#s2_subcategories').select2("readonly",true);
        $('#s2_platform').select2("readonly",true);
        $.when($.ajax({url: '${createLink(controller: 'specialFunction',action: 'listTags')}'})).then(function( response, textStatus, jqXHR ) {if(jqXHR.status==200){for(var i=0; i < response.length; i++){$('#s2_with_tag').append('<option value="'+response[i].id+'">'+response[i].name+'</option>');}$('#s2_with_tag').select2({placeholder: "Tags"});$('#s2_with_tag').select2("readonly",false);}});
        $.when($.ajax({url: '${createLink(controller: 'specialFunction',action: 'listCategories')}'})).then(function( response, textStatus, jqXHR ) {if(jqXHR.status==200){for(var i=0; i < response.length; i++){$('#s2_categories').append('<option value="'+response[i].id+'">'+response[i].name+'</option>');}
            $('#s2_categories').select2({placeholder: "Select a Category"});
            $('#s2_categories').select2("readonly",false);
            $('#s2_categories').on('change',function(e){
                $('#s2_subcategories').empty();
                $('#s2_subcategories').append("<option></option>");
                var cat = $('#s2_categories').select2("val");
                $.when($.ajax({url: '${createLink(controller: 'specialFunction',action: 'listSubCategories')}',data:{category:cat}})).then(function( response, textStatus, jqXHR ) {if(jqXHR.status==200){for(var i=0; i < response.length; i++){$('#s2_subcategories').append('<option value="'+response[i].id+'">'+response[i].name+'</option>');}$('#s2_subcategories').select2({placeholder: "Select a Subcategory"});$('#s2_subcategories').select2("readonly",false);}});
            });
        }
        });
        }
    // Run timepicker
    function DemoTimePicker(){
        $('#input_time').timepicker({setDate: new Date()});
    }
    $(document).ready(function() {
        LoadSelect2Script(DemoSelect2);
        // Create Wysiwig editor for textare

        // Add slider for change test input length
        FormLayoutExampleInputLength($( ".slider-style" ));
        // Initialize datepicker
        $('#input_date').datepicker({setDate: new Date()});
        // Load Timepicker plugin
        LoadTimePickerScript(DemoTimePicker);
        // Add tooltip to form-controls
        $('.form-control').tooltip();

        // Load example of form validation
        LoadBootstrapValidatorScript(DemoFormValidator);
        // Add drag-n-drop feature to boxes
        WinMove();
        $("#continue_links").change(function(e){
            $("#create_links").toggleClass("hidden");
            if(this.checked) {
                var icons = {
                    header: "ui-icon-circle-arrow-e",
                    activeHeader: "ui-icon-circle-arrow-s"
                };
                $("#accordion").accordion({icons: icons });
                $("#accordion").accordion('refresh');
                $.when($.ajax({url: '${createLink(controller: 'specialFunction',action: 'listPlatforms')}'})).then(function( response, textStatus, jqXHR ) {if(jqXHR.status==200){for(var i=0; i < response.length; i++){$('#s2_platforms').append('<option value="'+response[i].id+'">'+response[i].name+'</option>');}$('#s2_platforms').select2({placeholder: "Select All that apply"});$('#s2_platforms').select2("readonly",false);}});
                $("#s2_platforms").on('change',function(e){
                    if(e.added != undefined){
                        var s="\x3Ch3 id=\"title_"+e.added.id+"\"\x3E"+ e.added.text+"\x3C\x2Fh3\x3E\n \x3Cdiv id=\"container_"+ e.added.id+"\"\x3E\n \x3Cp\x3E\n \x3Clabel class=\"col-sm-4 control-label\"\x3EDirect Download Link\x3C\x2Flabel\x3E\n \x3Cdiv class=\"col-sm-8\"\x3E\n \x3Cinput type=\"text\" class=\"form-control\" name=\"LINK::DIRECTLINK::"+ e.added.text+"::"+ e.added.id+"\" id=\"directlink_"+ e.val+"\" placeholder=\"http:\x2F\x2F\" \x2F\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fp\x3E\n \x3Cp\x3E\n \x3Clabel class=\"col-sm-4 control-label\"\x3EHasOffers (MAT) Link\x3C\x2Flabel\x3E\n \x3Cdiv class=\"col-sm-8\"\x3E\n \x3Cinput type=\"text\" class=\"form-control\" name=\"LINK::HASOFFERSLINK::"+ e.added.text+"::"+ e.added.id+"\" id=\"hasoffers_"+ e.val+"\" placeholder=\"http:\x2F\x2F\" \x2F\x3E\n \x3C\x2Fdiv\x3E\n \x3C\x2Fp\x3E\n \x3C\x2Fdiv\x3E";
                        $("#accordion").append(s);
                        $("#accordion").accordion('refresh');
                    }

                });
                $("#s2_platforms").on("select2-removed",function(e){
                    $("#title_"+ e.val).remove();
                    $("#container_"+ e.val).remove();
                    $("#accordion").accordion('refresh');
                });
            }
            else{
                $('#accordion').empty();
                $('#s2_platforms').empty();
                $('#s2_platforms').append('<option></option>');
                $('#s2_platforms').select2({placeholder:"First Create an APP"});
                $('#s2_platforms').select2("readonly",true);
            }
        });

        // validate signup form on keyup and submit
        $("#appForm").validate({
            rules: {
                appname: "required",
                s2_categories: "required",
                s2_subcategories: "required",
                s2_with_tag: "required",
                description: {
                    required: true,
                    minlength: 50
                },
                s2_platforms:{
                    required: {
                        depends: function(element) {
                            if ($('#continue_links').is(':checked')){
                                return true;
                            }else{
                                return false;
                            }
                        }
                    }
                }
            },
            messages: {
                appname: "Please enter the APP's name",
                s2_categories: "Please select a category",
                s2_subcategories: "Please select a sub-category",
                s2_with_tag: "Please classify your app using tags",
                description: {
                    required: "Please enter a description",
                    minlength: "The description must be at least 50 characthers long."
                },
                s2_platforms: "You have to at least select one platform for which your APP is available for. You can always do this this later if you turn the switch off."
            }
        });
    });
</script>


</body>
</html>

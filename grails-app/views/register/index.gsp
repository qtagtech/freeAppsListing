<html>

<head>
	<meta name='layout' content='main'/>
	<title><g:message code='spring.security.ui.register.title'/></title>
</head>

<body>



%{--<s2ui:form width='650' height='300' elementId='loginFormContainer'
           titleCode='spring.security.ui.register.description' center='true'>

<g:form action='register' name='registerForm'>

	<g:if test='${emailSent}'>
	<br/>
	<g:message code='spring.security.ui.register.sent'/>
	</g:if>
	<g:else>

	<br/>

	<table>
	<tbody>

		<s2ui:textFieldRow name='username' labelCode='user.username.label' bean="${command}"
                         size='40' labelCodeDefault='Username' value="${command.username}"/>

		<s2ui:textFieldRow name='email' bean="${command}" value="${command.email}"
		                   size='40' labelCode='user.email.label' labelCodeDefault='E-mail'/>

		<s2ui:passwordFieldRow name='password' labelCode='user.password.label' bean="${command}"
                             size='40' labelCodeDefault='Password' value="${command.password}"/>

		<s2ui:passwordFieldRow name='password2' labelCode='user.password2.label' bean="${command}"
                             size='40' labelCodeDefault='Password (again)' value="${command.password2}"/>

	</tbody>
	</table>

	<s2ui:submitButton elementId='create' form='registerForm' messageCode='spring.security.ui.register.submit'/>

	</g:else>

</g:form>

</s2ui:form>--}%
<div class="container">
    <g:if test='${emailSent}'>
        <br/>
        <g:message code='spring.security.ui.register.sent'/>
    </g:if>
    <g:else>
        <div class="page-header">
            <h1>Register</h1>
        </div>
        <form class="form-signin" role="form" action="${createLink(action: 'registerOwn')}" method="post">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">Company Details</h3>
            </div>
            <div class="panel-body">

                    <div class="form-group">
                        <s2ui:textFieldRow name='companyname' class="form-control" labelCode="company.name.label" bean="${command}"
                                           size='40' labelCodeDefault='Company Name' value="${command.companyname}"/>
                    </div>
                <div class="form-group">
                    <s2ui:textFieldRow name='address' class="form-control" labelCode="company.address.label" bean="${command}"
                                       size='40' labelCodeDefault='Address' value="${command.address}"/>
                </div>
                <div class="form-group">
                    <s2ui:textFieldRow name='vatNumber' class="form-control" labelCode="company.vatNumber.label" bean="${command}"
                                       size='40' labelCodeDefault='VAT Number' value="${command.vatNumber}"/>
                </div>
                <div class="form-group">
                    <s2ui:textFieldRow name='webPage' class="form-control" labelCode="company.webPage.label" bean="${command}"
                                       size='40' labelCodeDefault='Web Page' value="${command.webPage}"/>
                </div>
                <div class="form-group">
                    <label>Location</label>
                    <input class="form-control" type="text" name="ff_nm_from[]" value="" id="f_elem_city"/>
                </div>

            </div>
        </div>
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">Main User Details</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <s2ui:textFieldRow name='name' class="form-control" labelCode='user.name.label' bean="${command}"
                                           size='40' labelCodeDefault='Full Name' value="${command.name}"/>
                    </div>
                    <div class="form-group">
                        <s2ui:textFieldRow name='username' class="form-control" labelCode='user.username.label' bean="${command}"
                                           size='40' labelCodeDefault='Username' value="${command.username}"/>
                    </div>
                    <div class="form-group">
                        <s2ui:textFieldRow class="form-control" name='email' bean="${command}" value="${command.email}"
                                           size='40' labelCode='user.email.label' labelCodeDefault='E-mail'/>
                    </div>
                    <div class="form-group">
                        <s2ui:textFieldRow name='position' class="form-control" labelCode='user.position.label' bean="${command}"
                                           size='40' labelCodeDefault='Position' value="${command.position}"/>
                    </div>
                    <div class="form-group">
                        <s2ui:passwordFieldRow class="form-control" name='password' labelCode='user.password.label' bean="${command}"
                                               size='40' labelCodeDefault='Password' value="${command.password}"/>

                        <s2ui:passwordFieldRow class="form-control" name='password2' labelCode='user.password2.label' bean="${command}"
                                               size='40' labelCodeDefault='Password (again)' value="${command.password2}"/>

                        <g:hiddenField bean="${command}" name="cityvalue" value="${command.cityvalue}" id="cityvalue"/>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Check me out
                        </label>
                    </div>
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Sign Up</button>

                </div>
            </div>
        </form>
    </g:else>
</div>



<link rel="stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/themes/flick/jquery-ui.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<style type="text/css">
.ui-menu .ui-menu-item a,.ui-menu .ui-menu-item a.ui-state-hover, .ui-menu .ui-menu-item a.ui-state-active {
    font-weight: normal;
    margin: -1px;
    text-align:left;
    font-size:14px;
}
.ui-autocomplete-loading { background: white url("/images/ui-anim_basic_16x16.gif") right center no-repeat; }
</style>
<script>
$(document).ready(function() {
	$('#companyname').focus();
    jQuery("#f_elem_city").autocomplete({
        source: function (request, response) {
            jQuery.getJSON(
                            "http://gd.geobytes.com/AutoCompleteCity?callback=?&q="+request.term,
                    function (data) {
                        response(data);
                    }
            );
        },
        minLength: 3,
        select: function (event, ui) {
            var selectedObj = ui.item;
            jQuery("#f_elem_city").val(selectedObj.value);
            getcitydetails(selectedObj.value)
            return false;
        },
        open: function () {
            jQuery(this).removeClass("ui-corner-all").addClass("ui-corner-top");
        },
        close: function () {
            jQuery(this).removeClass("ui-corner-top").addClass("ui-corner-all");
        }
    });
    jQuery("#f_elem_city").autocomplete("option", "delay", 100);
    function getcitydetails(fqcn) {
        if (typeof fqcn == "undefined") fqcn = jQuery("#f_elem_city").val();
        cityfqcn = fqcn;
        if(cityfqcn) {jQuery.getJSON("${createLink(controller: 'specialFunction',action: 'saveLocationData')}?city="+cityfqcn,function (data) {$("#cityvalue").val(data.code)});}
    }
});

</script>

</body>
</html>

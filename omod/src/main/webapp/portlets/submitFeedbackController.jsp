<%@ include file="/WEB-INF/template/include.jsp" %>

<openmrs:htmlInclude file="/moduleResources/feedback/fdbk.js" />

<openmrs:htmlInclude file="/moduleResources/feedback/bbq.js" />
<openmrs:htmlInclude file="/moduleResources/feedback/jquery.form.js" />
<openmrs:htmlInclude file="/moduleResources/feedback/jquery.form.wizard.js" />
<openmrs:htmlInclude file="/moduleResources/feedback/jquery.validate.js" />
<openmrs:htmlInclude file="/moduleResources/feedback/jquery-ui-1.8.5.custom.min.js" />

<openmrs:htmlInclude file="/moduleResources/feedback/pageStyle.css" />
<openmrs:htmlInclude file="/moduleResources/feedback/jquery-ui-1.8.2.custom.css" />

<div id="dialog" title="<spring:message code="feedback.submit"/>">

<form action="<openmrs:contextPath/>/module/feedback/addFeedback.form" method="post"  enctype="multipart/form-data" >
    <div id="fieldWrapper">
				<span class="step" id="first">
					<span class="font_normal_07em_black">First step - Name</span><br />
					<label for="firstname">First name</label><br />
					<input class="input_field_12em" name="firstname" id="firstname" /><br />
					<label for="surname">Surname</label><br />
					<input class="input_field_12em" name="surname" id="surname" /><br />
				</span>
				<span id="finland" class="step">
					<span class="font_normal_07em_black">Step 2 - Personal information</span><br />
					<label for="day_fi">Social Security Number</label><br />
					<input class="input_field_25em" name="day" id="day_fi" value="DD" />
					<input class="input_field_25em" name="month" id="month_fi" value="MM" />
					<input class="input_field_3em" name="year" id="year_fi" value="YYYY" /> -
					<input class="input_field_3em" name="lastFour" id="lastFour_fi" value="XXXX" /><br />
					<label for="countryPrefix_fi">Phone number</label><br />
					<input class="input_field_35em" name="countryPrefix" id="countryPrefix_fi" value="+358" /> -
					<input class="input_field_3em" name="areaCode" id="areaCode_fi" /> -
					<input class="input_field_12em" name="phoneNumber" id="phoneNumber_fi" /><br />
					<label for="email">*Email</label><br />
					<input class="input_field_12em email required" name="myemail" id="myemail" /><br />
				</span>
				<span id="confirmation" class="step">
					<span class="font_normal_07em_black">Last step - Username</span><br />
					<label for="username">User name</label><br />
					<input class="input_field_12em" name="username" id="username" /><br />
					<label for="password">Password</label><br />
					<input class="input_field_12em" name="password" id="password" type="password" /><br />
					<label for="retypePassword">Retype password</label><br />
					<input class="input_field_12em" name="retypePassword" id="retypePassword" type="password" /><br />
				</span>
    </div>
    <div id="demoNavigation">
        <input class="navigation_button" id="back" value="Back" type="reset" />
        <input class="navigation_button" id="next" value="Next" type="submit" />
    </div>
</form>                                                                                                  /

</div>



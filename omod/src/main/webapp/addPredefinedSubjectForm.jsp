<%@ include file="local_header.jsp"%>

<openmrs:hasPrivilege privilege="Admin Feedback">
    
<script>
$j(document).ready(function() {
		$j('.toggleAddTag').click(function(event) {
			$j('#addTag').slideToggle('fast');
			event.preventDefault();
		});
	});
</script>

<h2><spring:message code="feedback.predefinedsubjects"/></h2>
<a class="toggleAddTag" href="#"><spring:message code="feedback.addPredefinedSubject"/></a>
<div id="addTag" style="border: 1px black solid; background-color: #e0e0e0; display: none">
<form method="post">
        <table>
            <tr>
                <td>
                    <spring:message code="feedback.addPredefinedSubject"/>: 
                </td>
                <td>
                    <input type="text" name="predefinedsubject"  size="50"  value="" />
                </td>
            </tr>
            <tr>
                <td>
                    <spring:message code="feedback.addSortWeight"/>: 
                </td>
                <td>
                    <input type="text" name="sortWeight"  size="5"  value="" /> 
                    <div class="description">
                        <spring:message code="feedback.priority"/>
                    </div>
                </td>
            </tr>
            <tr></tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="<spring:message code="general.save"/>" /> <input type="button" value="Cancel" class="toggleAddTag" />
                </td>
            </tr>
        </table>
</form>
</div>        
        <br/>
        <br/>

<b class="boxHeader"><spring:message code="feedback.predefinedsubjects"/></b>

<div class="box" >    
    <table>
        <tr>
            <th width="320"><spring:message code="feedback.predefinedSubject"/></th>
        </tr>
        <c:forEach items="${predefinedsubjects}" var="predefinedsubjectObj"  varStatus="loopStatus">
            <tr class="${loopStatus.index % 2 == 0 ? 'evenRow' : 'oddRow'}">
                <td><a href ="<openmrs:contextPath/>/module/feedback/predefinedSubject.form?predefinedsubjectid=<c:out value="${predefinedsubjectObj.feedbackPredefinedSubjectId} "/>"><c:out value="${predefinedsubjectObj.subject} "/></a></td>
            </tr>
    
        </c:forEach>
    </table> 
</div>

</br>
<b class="boxHeader"><spring:message code="feedback.help"/></b>
<div class="box">
    	<ul>
		<li><i><spring:message code="feedback.predefinedsubject.help.l1"/></i></li>
		<li><i><spring:message code="feedback.predefinedsubject.help.l2"/></i></li>
                <li><i><spring:message code="feedback.predefinedsubject.help.l3"/></i></li>
                <li><i><spring:message code="feedback.predefinedsubject.help.l4"/></i></li>
                <li><i><spring:message code="feedback.predefinedsubject.help.l5"/></i></li>
                <li><i><spring:message code="feedback.predefinedsubject.help.l6"/></i></li>

        </ul>
</div>
</openmrs:hasPrivilege>

<%@ include file="/WEB-INF/template/footer.jsp" %>
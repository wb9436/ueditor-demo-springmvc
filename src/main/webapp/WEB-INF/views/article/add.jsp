<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@include file="common.jsp"%>

<script type="text/javascript" src="<c:url value='<%=jQuery%>'/>"></script>
<script type="text/javascript" src="<c:url value='<%=uEditorConfig%>'/>"></script>
<script type="text/javascript" src="<c:url value='<%=uEditorCore%>'/>"></script>
<script type="text/javascript" src="<c:url value='<%=uEditorLang%>'/>"></script>

<form action="<c:url value='/article/insert' />" method="post" style="display: flex;flex-direction: column;align-items: center;justify-content: center;">
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>公告标题：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<input type="text" class="input-text" style="width:400px;" value="" placeholder="" id="title" name="title">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>公告内容：</label>
		<div class="formControls col-xs-8 col-sm-9">
			<script id="desc" name="desc" type="text/plain" style="width:400px;height:650px;"></script>
		</div>
	</div>
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
		</div>
	</div>
</form>
<script type="text/javascript">
$(function(){
    var ue = UE.getEditor('desc');
});
</script>

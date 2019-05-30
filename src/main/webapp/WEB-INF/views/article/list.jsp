<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript"
	src="<c:url value='/jquery/1.9.1/jquery.js'/>"></script>
<a href="<c:url value='/article/add' />">新增</a>
<table border="2">
	<thead>
		<tr class="text-c">
			<th width="100">ID</th>
			<th width="400">标题</th>
			<th width="400">操作</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${list}" varStatus="status">
			<tr>
				<td style="text-align: center;">${item.id}</td>
				<td style="text-align: center;">${item.title}</td>
				<td style="text-align: center;">
					<div style="display: inline-block;" onclick="toPreview('${item.id}');">预览</div> &nbsp;&nbsp;&nbsp;
					<a href="<c:url value='/article/delete/${item.id}' />">删除</a>&nbsp;&nbsp;&nbsp;
					<a href="<c:url value='/article/edit/${item.id}' />">编辑</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<script type="text/javascript">
	function toPreview(id) {
		window.open("<c:url value='/article/preview/"+ id +"' />");
	}
</script>

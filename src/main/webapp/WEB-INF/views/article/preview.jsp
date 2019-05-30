<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script typet="text/javascript" src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
    <title>预览</title>
    <style type="text/css">
        html, body {
            height: 100%;
            width: 100%;
            padding: 0;
            margin: 0;
        }

        .container {
            max-width: 640px;
            height: 100%;
            box-sizing: border-box !important;
            -webkit-box-sizing: border-box !important;
            word-wrap: break-word !important;
        }

        img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>
<div class="container">
    ${articleDto.desc}
</div>
</body>
</html>

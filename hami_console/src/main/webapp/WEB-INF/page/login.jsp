<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>XIMI音乐是生活的调味剂</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div class="login-logo">
    <img src="../../images/logo.png" width="147" height="33"/>
</div>
<h3>${error}</h3>
<div class="widget">
    <div class="login-content">
        <div class="widget-content" style="padding-bottom:0;">
            <form data-validate="parsley" method="post" action="/login/checklogin" novalidate="" class="form-horizontal label-left" id="song-form" >
                <fieldset>
                    <div class="form-group no-margin">
                        <label for="username">Username</label>
                        <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="icon-user">${usermsg}</i>
                                </span>
                            <input type="text" placeholder="Your Username" class="form-control input-lg" id="username" name="username"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <div class="input-group input-group-lg">
                                <span class="input-group-addon">
                                    <i class="icon-lock">${pwdmsg}</i>
                                </span>
                            <input type="password" placeholder="Your Password" class="form-control input-lg" id="password" name="password"/>
                        </div>
                    </div>
                </fieldset>
                <div class="form-actions text-right">
                    <button class="btn btn-primary" type="submit">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="../../js/jquery.js"></script>
<script src="../../js/bootstrap.min.js"></script>
</body>
</html>

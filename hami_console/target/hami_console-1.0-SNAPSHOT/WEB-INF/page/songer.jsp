<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>XIMI音乐是生活的调味剂</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <script>

        var layer
        $(function () {
            layui.use('layer', function(){
                layer = layui.layer;
            });


            $("#toggleSearch").click(function () {
                var flag =  $(this).attr("flag");
                if(flag == 1){
                    $("#find").show(500);
                    $(this).attr("flag",2);
                    $(this).html("收缩↑");
                }else{
                    $("#find").hide(500)
                    $(this).attr("flag",1);


                    $(this).html("展开↓");
                }
            });
            $("#addSong").click(function () {
                window.location.href = "/songer/toAdd";
            });
            $("#search").click(function () {
                $("#pageNo").val(1);
                $("#txFrom").submit();
            });

            var pageNo = $("#pageNo").val();
            var totalPage = $("#totalPage").val();

            pageNo = parseInt(pageNo);
            totalPage = parseInt(totalPage);
            if (pageNo == 1 && pageNo == totalPage) {
                $("#prev").addClass("disabled");
                $("#next").addClass("disabled");
            }

            if (pageNo == 1 && pageNo < totalPage) {
                $("#prev").addClass("disabled");
                $("#next").removeClass("disabled");
            }

            if (pageNo > 1 && pageNo < totalPage) {
                $("#prev").removeClass("disabled");
                $("#next").removeClass("disabled");
            }

            if (pageNo > 1 && pageNo == totalPage) {
                $("#prev").removeClass("disabled");
                $("#next").addClass("disabled");
            }


            $("#prev").click(function () {
                $("#pageNo").val(--pageNo);
                $("#txForm").submit();
            })

            $("#next").click(function () {

                $("#pageNo").val(++pageNo);
                $("#txForm").submit();
            })

            $("a[pageNoButton]").click(function () {
                var pageNo = $(this).html();
                $("#pageNo").val(pageNo);
                $("#txForm").submit();

            })

            $("[modify]").click(function () {
                var srid = $(this).attr("srid");
                window.location.href = "/songer/updatelist?srid="+srid;
            });



            $(".btn-warning").click(function () {
                var srid = $(this).attr("srid");
                layer.confirm('是否确认删除?', {icon: 3, title:'提示'}, function(index){
                    $.ajax({
                        url: "/songer/delSong",
                        type: "post",
                        data: {
                            srid:srid
                        },
                        dataType: "text",
                        success: function (text) {
                            if (text == "success") {
                                layer.msg("删除成功");
                                layer.close(index);
                                $("#txForm").submit();
                            }
                        }
                    })
                });

            })




        })



    </script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
<div class="container">
    <div class="top-navbar header b-b"> <a data-original-title="Toggle navigation" class="toggle-side-nav pull-left" href="#"><i class="icon-reorder"></i> </a>
        <div class="brand pull-left"> <a href="/index"><img src="../../images/logo.png" width="147" height="33" /></a></div>
        <ul class="nav navbar-nav navbar-right  hidden-xs">
            <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-warning-sign"></i> <span class="badge">5</span> </a>
                <ul class="dropdown-menu extended notification">
                    <li class="title">
                        <p>You have 5 new notifications</p>
                    </li>
                    <li> <a href="#"> <span class="label label-success"><i class="icon-plus"></i></span> <span class="message">New user registration.</span> <span class="time">1 mins</span> </a> </li>
                    <li> <a href="#"> <span class="label label-danger"><i class="icon-warning-sign"></i></span> <span class="message">High CPU load on cluster #2.</span> <span class="time">5 mins</span> </a> </li>
                    <li> <a href="#"> <span class="label label-success"><i class="icon-plus"></i></span> <span class="message">New user registration.</span> <span class="time">10 mins</span> </a> </li>
                    <li> <a href="#"> <span class="label label-info"><i class="icon-bullhorn"></i></span> <span class="message">New items are in queue.</span> <span class="time">25 mins</span> </a> </li>
                    <li> <a href="#"> <span class="label label-warning"><i class="icon-bolt"></i></span> <span class="message">Disk space to 85% full.</span> <span class="time">35 mins</span> </a> </li>
                    <li class="footer"> <a href="#">View all notifications</a> </li>
                </ul>
            </li>
            <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-tasks"></i> <span class="badge">7</span> </a>
                <ul class="dropdown-menu extended notification">
                    <li class="title">
                        <p>You have 7 pending tasks</p>
                    </li>
                    <li> <a href="#"> <span class="task"> <span class="desc">Preparing new release</span> <span class="percent">30%</span> </span>
                        <div class="progress progress-small">
                            <div class="progress-bar progress-bar-info" style="width: 30%;"></div>
                        </div>
                    </a> </li>
                    <li> <a href="#"> <span class="task"> <span class="desc">Change management</span> <span class="percent">80%</span> </span>
                        <div class="progress progress-small progress-striped active">
                            <div class="progress-bar progress-bar-danger" style="width: 80%;"></div>
                        </div>
                    </a> </li>
                    <li> <a href="#"> <span class="task"> <span class="desc">Mobile development</span> <span class="percent">60%</span> </span>
                        <div class="progress progress-small">
                            <div class="progress-bar progress-bar-success" style="width: 60%;"></div>
                        </div>
                    </a> </li>
                    <li> <a href="#"> <span class="task"> <span class="desc">Database migration</span> <span class="percent">20%</span> </span>
                        <div class="progress progress-small">
                            <div class="progress-bar progress-bar-warning" style="width: 20%;"></div>
                        </div>
                    </a> </li>
                    <li class="footer"> <a href="#">View all tasks</a> </li>
                </ul>
            </li>
            <li class="dropdown"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-envelope"></i> <span class="badge">1</span> </a>
                <ul class="dropdown-menu extended notification">
                    <li class="title">
                        <p>You have 3 new messages</p>
                    </li>
                    <li> <a href="#"> <span class="photo"> <img src="../../images/profile.png" width="34" height="34" /></span> <span class="subject"> <span class="from">John Doe</span> <span class="time">Just Now</span> </span> <span class="text"> Consetetur sadipscing elitr... </span> </a> </li>
                    <li> <a href="#"> <span class="photo"><img src="../../images/profile.png" width="34" height="34" /></span> <span class="subject"> <span class="from">John Doe</span> <span class="time">35 mins</span> </span> <span class="text"> Sed diam nonumy... </span> </a> </li>
                    <li> <a href="#"> <span class="photo"><img src="../../images/profile.png" width="34" height="34" /></span> <span class="subject"> <span class="from">John Doe</span> <span class="time">5 hours</span> </span> <span class="text"> No sea takimata sanctus... </span> </a> </li>
                    <li class="footer"> <a href="#">View all messages</a> </li>
                </ul>
            </li>
            <li class="dropdown user  hidden-xs"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-male"></i> <span class="username">${user.username}</span> <i class="icon-caret-down small"></i> </a>
                <ul class="dropdown-menu">
                    <li><a href="/login/outlogin"><i class="icon-key"></i> Log Out</a></li>
                </ul>
            </li>
        </ul>
        <form role="search" class="navbar-form pull-right" id="search-form" />
        <input type="search" placeholder="Search..." class="search-query" id="search-input" />
        </form>
    </div>
</div>
<form id="txForm" method="post" action="/songer/list" class="form-horizontal" >
<div class="wrapper">

    <jsp:include page="menu.jsp"></jsp:include>
    <div class="page-content">
        <div class="content container">
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-title">艺人列表 <small>favor song</small></h2>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-list-ol"></i>
                            <h3>搜索条件</h3>
                        </div>
                        <div class="widget-content">

                            <fieldset id="find">
                                <!--<legend class="section">Horizontal form</legend>-->
                                <div class="control-group">
                                    <label for="srname" class="control-label">艺人名字</label>
                                    <div class="controls form-group">
                                        <div class="input-group"> <span class="input-group-addon"><i class="icon-music"></i></span>
                                            <input type="text" name="srname" value="${mq.srname}" id="srname" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label for="area" class="control-label">地区</label>
                                    <div class="controls form-group">
                                        <div class="input-group"> <span class="input-group-addon"><i class="icon-user"></i></span>
                                            <input type="text" name="area" value="${mq.area}" id="area" class="form-control" />
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label for="tid" class="control-label">流派</label>

                                    <div class="controls form-group">
                                        <select id="tid" name="tid" class="form-control ">
                                            <option value="">--请选择--</option>
                                            <c:forEach items="${mtypes}" var="mtype">

                                                <option value="${mtype.tid}" <c:if test="${mtype.tid == mq.tid}">selected</c:if>>${mtype.tname}</option>
                                            </c:forEach>
                                        </select>

                                    </div>
                                </div>
                            </fieldset>
                            <div class="form-actions text-right">
                                <div>
                                    <button id="search" class="btn btn-primary" type="submit">搜索</button>
                                    <button id="addSong" class="btn btn-primary" type="button" >添加艺人</button>
                                    <button id="toggleSearch" flag = "2" class="btn btn-default" type="button">收缩↑</button>
                                </div>
                            </div>


                        </div>
                        <div class="widget-content" >
                            <div class="body">
                                <table class="table table-striped table-images" style="color: white;font-size: 14px">
                                    <thead>
                                    <tr>
                                        <th class="hidden-xs-portrait">序号</th>
                                        <th>头像</th>
                                        <th>名字</th>
                                        <th class="hidden-xs-portrait">地区</th>
                                        <th class="hidden-xs">是否热门</th>
                                        <th class="hidden-xs">流派</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                    <c:forEach items="${page.list}" var="songer">
                                        <tr>
                                            <td class="hidden-xs-portrait">${songer.srid}</td>
                                            <td><img src="${filePath}${songer.pic}" /></td>
                                            <td> ${songer.srname} </td>
                                            <td class="hidden-xs-portrait">${songer.area}</td>
                                            <td class="hidden-xs"> <p><strong>${songer.isHot == 1?'热门':'一般'}</strong></p></td>
                                            <td class="hidden-xs"> ${songer.mtype.tname} </td>
                                            <td><button class="btn btn-sm btn-primary" modify type="button" srid="${songer.srid}">修改</button>
                                                <button data-toggle="button" class="btn btn-sm btn-warning" srid="${songer.srid}"> 删除 </button></td>
                                        </tr>
                                    </c:forEach>



                                    </tbody>
                                </table>
                                <jsp:include page="pagination.jsp"></jsp:include>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
<div class="bottom-nav footer"> dmbjz出品 </div>
<script>$("#songer").addClass("current");</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

</body>
</html>

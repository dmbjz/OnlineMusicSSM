<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>XIMI音乐是生活的调味剂</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>
<div class="container">
    <div class="top-navbar header b-b"> <a data-original-title="Toggle navigation" class="toggle-side-nav pull-left" href="#"><i class="icon-reorder"></i> </a>
        <div class="brand pull-left"> <a href="index.html"><img src="../../images/logo.png" width="147" height="33" /></a></div>
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
                            <div class="progress-bar progress-bar-danger" style="width:80%;"></div>
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
            <li class="dropdown user  hidden-xs"> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> <i class="icon-male"></i> <span class="username">John Doe</span> <i class="icon-caret-down small"></i> </a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
                    <li><a href="#"><i class="icon-calendar"></i> My Calendar</a></li>
                    <li><a href="#"><i class="icon-tasks"></i> My Tasks</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="icon-key"></i> Log Out</a></li>
                </ul>
            </li>
        </ul>
        <form role="search" class="navbar-form pull-right" id="search-form" />
        <input type="search" placeholder="Search..." class="search-query" id="search-input" />
        </form>
    </div>
</div>
<div class="wrapper">

    <jsp:include page="menu.jsp"></jsp:include>
    <div class="page-content">
        <div class="content container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="page-title">Charts and Statistics</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-tasks"></i>
                            <h3>Bar Line Animated</h3>
                        </div>
                        <div class="widget-content">
                            <div id="chart1" style="width:100%; height:350px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-tasks"></i>
                            <h3>Pie Test</h3>
                        </div>
                        <div class="widget-content">
                            <div id="chart7" style="width:100%; height:350px;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-tasks"></i>
                            <h3>Dashboard Widget</h3>
                        </div>
                        <div class="widget-content">
                            <div id="chart2" style="width:100%; height:350px"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-tasks"></i>
                            <h3>Pie donut charts</h3>
                        </div>
                        <div class="widget-content">
                            <div id="chart3" style="height:350px; width:100%;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-tasks"></i>
                            <h3>Axis Renderer</h3>
                        </div>
                        <div class="widget-content">
                            <div id="chart4" style="width:100%; height:350px;"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget">
                        <div class="widget-header"> <i class="icon-tasks"></i>
                            <h3>Line Charts</h3>
                        </div>
                        <div class="widget-content">
                            <div id="chart5" style="height:350px; width:100%;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="bottom-nav footer"> dmbjz出品 </div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../../js/jquery.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/smooth-sliding-menu.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jquery191.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jquery.jqplot.min.js"></script>
<!-- Additional plugins go here -->

<script class="include" type="text/javascript" src="../../javascript/jqplot.barRenderer.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jqplot.highlighter.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jqplot.cursor.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jqplot.pointLabels.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/bar-animated.js"></script>
<script class="include" type="text/javascript" src="../../javascript/widget.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jqplot.dateAxisRenderer.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jqplot.logAxisRenderer.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jqplot.canvasTextRenderer.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jqplot.canvasAxisTickRenderer.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/jqplot.pieRenderer.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/pie-test.js"></script>
<script class="include" language="javascript" type="text/javascript" src="../../javascript/jqplot.donutRenderer.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/donut-render.js"></script>
<script class="include" language="javascript" type="text/javascript" src="../../javascript/jqplot.categoryAxisRenderer.min.js"></script>
<script class="include" type="text/javascript" src="../../javascript/bar-charts.js"></script>
<script class="include" type="text/javascript" src="../../javascript/line-charts.js"></script>
<script>$("#chart").addClass("current");</script>
</body>
</html>

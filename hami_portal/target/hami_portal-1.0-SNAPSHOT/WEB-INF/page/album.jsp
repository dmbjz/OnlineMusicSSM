<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="data-spm" content="a1z1s"/>
    <meta name="verify-v1" content="gNntuhTm2rH7Qa/GPp6lf0mIp9KQsjejNs+i1LZhG7U="/>
    <meta name="baidu-site-verification" content="xaLcM8mGHG"/>
    <title>虾米音乐</title>
    <meta name="apple-itunes-app" content="app-id=595594905">
    <meta name="applicable-device" content="pc">

    <link rel="shortcut icon" href="/favicon.ico"/>

    <link rel="stylesheet" type="text/css" href="/css/portal/reset.css">
    <link rel="stylesheet" type="text/css" href="/css/portal/base.css">
    <link rel="stylesheet" type="text/css" href="/css/portal/old.css">
    <link rel="stylesheet" type="text/css" href="/css/portal/header.css">
    <link rel="stylesheet" type="text/css" href="/css/portal/name_card.css">
    <link rel="stylesheet" type="text/css" href="/css/portal/search.css">
    <link rel="stylesheet" type="text/css" href="/css/portal/album.css">



</head>

<body data-spm="7400859">
<div id="header" data-spm="226669510">
    <div class="primary">
        <div class="gap">
            <div class="wrapper">
                <table>
                    <tr>
                        <td class="logo"><a href="#" title="虾米音乐网(xiami.com) - 高品质音乐 发现 分享">虾米音乐网(xiami.com) - 高品质音乐
                            发现
                            分享</a></td>
                        <td class="nav">
                            <a class="bigtext " href="#">发现音乐</a>
                            <a class="bigtext " href="#">我的音乐</a>
                        </td>
                        <td class="subnav">
                            <a class="bigtext first current" href="#">歌曲</a>
                            <a class="bigtext first  " href="#">歌单</a>
                            <a class="bigtext middle  " href="#">电台</a>
                            <a class="bigtext middle  " href="#">音乐人</a>
                        </td>
                        <td class="search">
                            <div class="container">
                                <div class="form">
                                    <input id="key" class="keyword" autocomplete="off" onkeydown="keydownEvent()"
                                           placeholder="音乐搜索，找人..." name="key"/>
                                    <input class="icon submit" onclick="submitQuery('query')" type="button" value=""
                                           title="搜索"/>
                                    <input type="hidden" id="pageCode" value="${qcode}">
                                </div>
                                <div class="auto_complete"></div>
                            </div>
                        </td>
                        <td class="bigtext login">
                            <a class="first" href="#">免费注册</a>
                            <a class="last"
                               href="#">立即登录</a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" href="/css/portal/songs.css">

<div id="body" class="gap">

    <div class="wrapper">
        <div class="content_wrapper">
            <div class="content">
                <div class="filter" data-spm="1392350033">
                    <dl>
                        <dt>流派&nbsp;:</dt>
                        <dd>


                                <p>
                                    <a href="0&type=0&order=0" >全部</a>
                                    <a href="#" >流行</a>
                                    <a href="#" >摇滚</a>
                                    <a href="#" >民谣</a>
                                    <a href="#" >电子</a>
                                    <a href="#" >节奏布鲁斯</a>
                                    <a href="#" class="current">爵士</a>
                                    <a href="#" >轻音乐</a>
                                    <a href="#" >嘻哈(说唱)</a>
                                    <a href="#" >动漫</a>
                                    <a href="#" >布鲁斯</a>
                                    <a href="#" >金属</a>
                                    <a href="#" >朋克</a>
                                    <a href="#" >世界音乐</a>
                                    <a href="#" >新世纪</a>
                                    <a href="#" >舞台 / 银幕 / 娱乐</a>
                                    <a href="#" >乡村</a>
                                    <a href="#" >雷鬼</a>
                                    <a href="#" >古典</a>
                                    <a href="#" >唱作人</a>
                                    <a href="#" >拉丁</a>
                                    <a href="#" >中国特色</a>
                                    <a href="#" >实验</a>
                                    <a href="#" >儿童</a>
                                    <a href="#" >有声书</a>
                                </p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>类型&nbsp;:</dt>
                        <dd>
                            <p>
                                <a href="" class="current">全部</a>
                                <a href="" >歌曲</a>
                                <a href="" >Demo</a>
                            </p>
                        </dd>
                    </dl>
                    <dl>
                        <dt>排序&nbsp;:</dt>
                        <dd>
                            <p>
                                <a href="" class="current">热门</a>
                                <a href="" >最新</a>
                            </p>
                        </dd>
                    </dl>
                </div>


                <div class="albums" data-spm="1392350021">
                    <div class="album_list">
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank"  href="#">
                                    <img src="//pic.xiami.net/images/album/img9/106166809/7066195351418187465.jpg@1e_1c_100Q_170w_170h" >
                                    <b class="icon toplay" ></b>
                                    <%--<dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(706619535,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(706619535);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(706619535,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>--%>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="未收录的单曲" href="//emumo.xiami.com/album/706619535">未收录的单曲</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="陈粒" href="//i.xiami.com/chenlee">陈粒</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="Everything in the World" href="//emumo.xiami.com/album/414285">
                                    <img src="//pic.xiami.net/images/album/img80/78980/4142851382406916.jpg@1e_1c_100Q_170w_170h" alt="Everything in the World">

                                    <b class="icon toplay" onclick="playalbum(414285);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(414285,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(414285);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(414285,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="Everything in the World" href="//emumo.xiami.com/album/414285">Everything in the World</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="曲婉婷" href="//i.xiami.com/quwanting">曲婉婷</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="吉姆餐厅" href="//emumo.xiami.com/album/2013969781">
                                    <img src="//pic.xiami.net/images/album/img26/76326/20139697811417069290.jpg@1e_1c_100Q_170w_170h" alt="吉姆餐厅">

                                    <b class="icon toplay" onclick="playalbum(2013969781);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(2013969781,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(2013969781);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(2013969781,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                    <sup title="虾米音乐首发"></sup>			</a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="吉姆餐厅" href="//emumo.xiami.com/album/2013969781">吉姆餐厅</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="赵雷" href="//i.xiami.com/zhaolei">赵雷</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="安和桥北" href="//emumo.xiami.com/album/453481">
                                    <img src="//pic.xiami.net/images/album/img66/86366/4534811423729531.jpg@1e_1c_100Q_170w_170h" alt="安和桥北">

                                    <b class="icon toplay" onclick="playalbum(453481);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(453481,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(453481);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(453481,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="安和桥北" href="//emumo.xiami.com/album/453481">安和桥北</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="宋冬野" href="//i.xiami.com/donye">宋冬野</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="半壶纱" href="//emumo.xiami.com/album/1704978145">
                                    <img src="//pic.xiami.net/images/album/img96/1799948996/17049781451451964924.jpg@1e_1c_100Q_170w_170h" alt="半壶纱">

                                    <b class="icon toplay" onclick="playalbum(1704978145);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(1704978145,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(1704978145);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(1704978145,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="半壶纱" href="//emumo.xiami.com/album/1704978145">半壶纱</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="刘珂矣" href="//i.xiami.com/liukeyi">刘珂矣</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="album_list">
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="寻光集" href="//emumo.xiami.com/album/104997677">
                                    <img src="//pic.xiami.net/images/album/img97/1004997397/1049976771427771121.jpg@1e_1c_100Q_170w_170h" alt="寻光集">

                                    <b class="icon toplay" onclick="playalbum(104997677);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(104997677,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(104997677);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(104997677,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                    <sup title="虾米音乐首发"></sup>			</a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="寻光集" href="//emumo.xiami.com/album/104997677">寻光集</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="虾米音乐人" href="//i.xiami.com/xiamimusician">虾米音乐人</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="如也" href="//emumo.xiami.com/album/1722842312">
                                    <img src="//pic.xiami.net/images/album/img9/106166809/17228423121423193165.jpg@1e_1c_100Q_170w_170h" alt="如也">

                                    <b class="icon toplay" onclick="playalbum(1722842312);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(1722842312,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(1722842312);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(1722842312,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="如也" href="//emumo.xiami.com/album/1722842312">如也</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="陈粒" href="//i.xiami.com/chenlee">陈粒</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="模特" href="//emumo.xiami.com/album/676981779">
                                    <img src="//pic.xiami.net/images/album/img78/100178/6769817791422262194.jpg@1e_1c_100Q_170w_170h" alt="模特">

                                    <b class="icon toplay" onclick="playalbum(676981779);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(676981779,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(676981779);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(676981779,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="模特" href="//emumo.xiami.com/album/676981779">模特</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="李荣浩" href="//i.xiami.com/lironghao">李荣浩</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="逆流成河" href="//emumo.xiami.com/album/1287174226">
                                    <img src="//pic.xiami.net/images/album/img89/108289/12871742261387174226.jpg@1e_1c_100Q_170w_170h" alt="逆流成河">

                                    <b class="icon toplay" onclick="playalbum(1287174226);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(1287174226,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(1287174226);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(1287174226,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="逆流成河" href="//emumo.xiami.com/album/1287174226">逆流成河</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="金南玲" href="//i.xiami.com/eqarts">金南玲</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="赵小雷" href="//emumo.xiami.com/album/465009">
                                    <img src="//pic.xiami.net/images/album/img26/76326/4650091380345880.jpg@1e_1c_100Q_170w_170h" alt="赵小雷">

                                    <b class="icon toplay" onclick="playalbum(465009);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(465009,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(465009);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(465009,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="赵小雷" href="//emumo.xiami.com/album/465009">赵小雷</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="赵雷" href="//i.xiami.com/zhaolei">赵雷</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="album_list">
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="起风了（Cover 高桥优）" href="//emumo.xiami.com/album/2103517426">
                                    <img src="//pic.xiami.net/images/album/img68/2110343668/1517899049940.jpg@1e_1c_100Q_170w_170h" alt="起风了（Cover 高桥优）">

                                    <b class="icon toplay" onclick="playalbum(2103517426);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(2103517426,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(2103517426);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(2103517426,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="起风了（Cover 高桥优）" href="//emumo.xiami.com/album/2103517426">起风了（Cover 高桥优）</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="买辣椒也用券" href="//i.xiami.com/chilipeper">买辣椒也用券</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="2">
                            <div class="image">
                                <a target="_blank" title="小梦大半" href="//emumo.xiami.com/album/2100372319">
                                    <img src="//pic.xiami.net/images/album/img9/106166809/21003723191470712635.jpg@1e_1c_100Q_170w_170h" alt="小梦大半">

                                    <b class="icon toplay" onclick="playalbum(2100372319);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(2100372319,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(2100372319);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(2100372319,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="小梦大半" href="//emumo.xiami.com/album/2100372319">小梦大半</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="陈粒" href="//i.xiami.com/chenlee">陈粒</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="琵琶相" href="//emumo.xiami.com/album/2649">
                                    <img src="//pic.xiami.net/images/album/img8/608/26491428666363.jpg@1e_1c_100Q_170w_170h" alt="琵琶相">

                                    <b class="icon toplay" onclick="playalbum(2649);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(2649,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(2649);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(2649,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="琵琶相" href="//emumo.xiami.com/album/2649">琵琶相</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="林海" href="//i.xiami.com/linhai">林海</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="说散就散" href="//emumo.xiami.com/album/2102971699">
                                    <img src="//pic.xiami.net/images/album/img51/835851/8358511512835851.jpg@1e_1c_100Q_170w_170h" alt="说散就散">

                                    <b class="icon toplay" onclick="playalbum(2102971699);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(2102971699,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(2102971699);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(2102971699,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="说散就散" href="//emumo.xiami.com/album/2102971699">说散就散</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="袁娅维" href="//i.xiami.com/tia">袁娅维</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="孤岛" href="//emumo.xiami.com/album/1311688232">
                                    <img src="//pic.xiami.net/images/album/img49/90949/13116882321422539101.jpg@1e_1c_100Q_170w_170h" alt="孤岛">

                                    <b class="icon toplay" onclick="playalbum(1311688232);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(1311688232,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(1311688232);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(1311688232,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="孤岛" href="//emumo.xiami.com/album/1311688232">孤岛</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="马頔" href="//i.xiami.com/mayouye">马頔</a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="album_list">
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="起风了（Cover 高桥优）" href="//emumo.xiami.com/album/2103517426">
                                    <img src="//pic.xiami.net/images/album/img68/2110343668/1517899049940.jpg@1e_1c_100Q_170w_170h" alt="起风了（Cover 高桥优）">

                                    <b class="icon toplay" onclick="playalbum(2103517426);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(2103517426,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(2103517426);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(2103517426,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="起风了（Cover 高桥优）" href="//emumo.xiami.com/album/2103517426">起风了（Cover 高桥优）</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="买辣椒也用券" href="//i.xiami.com/chilipeper">买辣椒也用券</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="2">
                            <div class="image">
                                <a target="_blank" title="小梦大半" href="//emumo.xiami.com/album/2100372319">
                                    <img src="//pic.xiami.net/images/album/img9/106166809/21003723191470712635.jpg@1e_1c_100Q_170w_170h" alt="小梦大半">

                                    <b class="icon toplay" onclick="playalbum(2100372319);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(2100372319,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(2100372319);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(2100372319,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="小梦大半" href="//emumo.xiami.com/album/2100372319">小梦大半</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="陈粒" href="//i.xiami.com/chenlee">陈粒</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="琵琶相" href="//emumo.xiami.com/album/2649">
                                    <img src="//pic.xiami.net/images/album/img8/608/26491428666363.jpg@1e_1c_100Q_170w_170h" alt="琵琶相">

                                    <b class="icon toplay" onclick="playalbum(2649);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(2649,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(2649);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(2649,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="琵琶相" href="//emumo.xiami.com/album/2649">琵琶相</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="林海" href="//i.xiami.com/linhai">林海</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="说散就散" href="//emumo.xiami.com/album/2102971699">
                                    <img src="//pic.xiami.net/images/album/img51/835851/8358511512835851.jpg@1e_1c_100Q_170w_170h" alt="说散就散">

                                    <b class="icon toplay" onclick="playalbum(2102971699);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(2102971699,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(2102971699);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(2102971699,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="说散就散" href="//emumo.xiami.com/album/2102971699">说散就散</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="袁娅维" href="//i.xiami.com/tia">袁娅维</a>
                                </p>
                            </div>
                        </div>
                        <div class="album" data-needpay="0" data-playstatus="1" data-downloadstatus="1">
                            <div class="image">
                                <a target="_blank" title="孤岛" href="//emumo.xiami.com/album/1311688232">
                                    <img src="//pic.xiami.net/images/album/img49/90949/13116882321422539101.jpg@1e_1c_100Q_170w_170h" alt="孤岛">

                                    <b class="icon toplay" onclick="playalbum(1311688232);return false;"></b>
                                    <dl>
                                        <dt>
                                            <b class="icon toheart"></b>
                                            <b class="icon todropmenu"></b>
                                        </dt>
                                        <dd>
                                            <ul>
                                                <li onclick="tag(1311688232,5);return false;"><b class="icon tofavourite"></b>收藏</li>
                                                <li onclick="album2collect(1311688232);return false;"><b class="icon tocollect"></b>添加到</li>
                                                <li onclick="recommend(1311688232,33);return false;"><b class="icon toshare"></b>分享到</li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </a>
                            </div>
                            <div class="info">
                                <p>
                                    <strong><a target="_blank" title="孤岛" href="//emumo.xiami.com/album/1311688232">孤岛</a></strong>
                                </p>
                                <p>
                                    <a target="_blank" title="马頔" href="//i.xiami.com/mayouye">马頔</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <c:if test="${result.hasMore}">
                    <div class="loadr" id="loader" ><a href="javascript:;" onclick="loadMore()"><b></b>查看更多</a></div>
                </c:if>
                <c:if test="${!result.hasMore}">
                    <div class="loadr" id="nomore" style="font-size: 18px;">没有更多啦!</div>
                </c:if>
            </div>
        </div>
        <div class="sidebar" data-spm="1392350021">
            <div class="nav">
                <a class="index" href="#"><b></b>发现</a>
                <a class="top" href="#"><b></b>排行榜</a>
                <a class="magazines" href="#"><b></b>音乐人企划</a>
                <a class="artists" href="#"><b></b>音乐人</a>
                <a class="songs current" href="#"><b></b>歌曲</a>
                <a class="albums" href="#"><b></b>专辑<sup>无损</sup></a>
            </div>
            <div class="genre">
                <a href="#"  ><b></b>流行</a>
                <a href="#"  ><b></b>摇滚</a>
                <a href="#"  ><b></b>民谣</a>
                <a href="#"  ><b></b>电子</a>
                <a href="#"  ><b></b>节奏布鲁斯</a>
                <a href="#"  ><b></b>爵士</a>
                <a href="#"  ><b></b>轻音乐</a>
                <a href="#"  ><b></b>嘻哈(说唱)</a>
                <a href="#"  ><b></b>动漫</a>
                <a href="#"  ><b></b>布鲁斯</a>
                <a href="#"  ><b></b>金属</a>
                <a href="#"  ><b></b>朋克</a>
                <a href="#"  ><b></b>世界音乐</a>
                <a href="#"  ><b></b>新世纪</a>
                <a href="#"  ><b></b>舞台 / 银幕 / 娱乐</a>
                <a href="#"  ><b></b>乡村</a>
                <a href="#"  ><b></b>雷鬼</a>
                <a href="#"  ><b></b>古典</a>
                <a href="#"  ><b></b>唱作人</a>
                <a href="#"  ><b></b>拉丁</a>
                <a href="#"  ><b></b>中国特色</a>
                <a href="#"  ><b></b>实验</a>
                <a href="#"  ><b></b>儿童</a>
                <a href="#"  ><b></b>有声书</a>
            </div>
        </div>
    </div>

</div>

<div id="footer" data-spm="1110930425">
    <div class="gap">
        <div class="wrapper">
            <div class="content">
                <div class="sitemap">

                    <dl>
                        <dt>关于</dt>
                        <dd><a title="关于我们" href="#">关于我们</a></dd>
                        <dd><a title="虾米招聘" href="#" target="_blank">虾米招聘</a><sup class="hot"></sup></dd>
                        <dd><a title="独立音乐人合作" href="#" target="_blank">独立音乐人合作</a></dd>
                        <dd><a title="联系我们" href="#">联系我们</a></dd>
                        <dd><a title="友情链接" href="#">友情链接</a></dd>
                        <dd><a title="知识产权声明及隐私权政策" href="#">知识产权声明及隐私权政策</a></dd>
                        <dd><a title="版权投诉" href="#">版权投诉</a></dd>
                    </dl>

                    <dl>
                        <dt>特色服务</dt>
                        <dd><a title="虾米 VIP" href="#">虾米 VIP</a></dd>
                        <dd><a title="虾米播播" href="#">虾米播播</a></dd>
                        <dd><a title="音乐专题" href="https://emumo.xiami.com/events">音乐专题</a></dd>
                    </dl>

                    <dl>
                        <dt>虾米客户端</dt>
                        <dd><a title="虾米 for iPhone" href="#">虾米 for iPhone</a><sup class="hot"></sup></dd>
                        <dd><a title="虾米 for Android" href="#">虾米 for Android</a></dd>
                        <dd><a title="虾米 for Windows" href="#">虾米 for Windows</a></dd>
                        <dd><a title="虾米 for Mac" href="#">虾米 for Mac</a></dd>
                        <dd><a title="虾米 for iPad" href="#">虾米 for iPad</a></dd>
                    </dl>

                    <dl>
                        <dt>更多</dt>
                        <dd><a title="分类找歌" href="#">分类找歌</a></dd>
                        <dd><a title="帮助中心" href="#">帮助中心</a></dd>
                        <dd><a title="添加虾米还没有的资料" href="#">添加虾米还没有的资料</a></dd>
                        <dd><a title="提交大家想要的专辑" href="#">提交大家想要的专辑</a></dd>
                        <dd><a title="音频上传" href="#">音频上传</a></dd>
                        <dd><a title="MV上传" href="#">MV上传</a></dd>
                        <dd><a title="添加歌词" href="#">添加歌词</a></dd>
                    </dl>
                </div>


            </div>


        </div>


        <div style="background:#fff; margin: 0 auto;display:none;">
            <font style="font-size:12px; color:#fff;">Host: ,
                Process All 0.2863s Memory:3936.69k <br></font>
        </div>
        <div style="position:absolute;left:0;bottom:0;z-index:0;">
            <object id="plugin0" type="application/x-sharetingplugin" width="1" height="1">
            </object>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="/js/common/jquery-1.8.3.js"></script>
<script type="text/javascript" src="/js/portal/search.js"></script>
</html>

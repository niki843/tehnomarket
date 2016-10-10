<!doctype html>
<%@page import="com.tm.dbModels.TypeModelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<html class="no-js" lang="">
    
<!-- Mirrored from www.technomarket.bg/magazini by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:12:48 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
                                            <title>Магазини Техномаркет - Технoмаркет - онлайн магазин</title>
<meta name="Description" CONTENT="Техномаркет най-голямата верига за бяла, черна и офис техника в България. Купи лесно и бързо онлайн с безплатна доставка. Удължаване на гаранцията с програма Гаранция плюс.">
<meta name="google-site-verification" content="4GUfQ24-SB-8p2dO6_vCnz-rDTs7NGJm_rr2pfXBAl4" />        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="img/favicon.ico">
                                <link rel="stylesheet" href="css/cdn.technomarket.bg/css/f38a55a.css" />
                            <script type="text/javascript" src="css/cdn.technomarket.bg/assets/vendor/requirejs/require.js"></script>

<script type="text/javascript">
    require.config({
        map: {
            '*': {
                'css': 'css' // or whatever the path to require-css is
            }
        },
        paths: {
            'facebook': '//connect.facebook.net/en_US/all.js#xfbml=1',
            'google': "//apis.google.com/js/platform",
            'admin': '//cdn.technomarket.bg/bundles/taumediatechnomarketcms/js/admin',
            'app': '//cdn.technomarket.bg/bundles/taumediatechnomarketcms/js/app',
            'bootstrap': '//cdn.technomarket.bg/bundles/taumediatechnomarketcms/js/bootstrap',
            'framework': '//cdn.technomarket.bg/bundles/taumediatechnomarketcms/js/framework',
            'jquery.jstree': '//cdn.technomarket.bg/assets/vendor/jstree/dist/jstree',
            'jquery.plugin': '//cdn.technomarket.bg/assets/vendor/countdown/jquery.plugin.min',
            'jquery.countdown': '//cdn.technomarket.bg/assets/vendor/countdown/jquery.countdown.min',
            'jquery.jstree-css': '//cdn.technomarket.bg/assets/vendor/jstree/dist/themes/default/style',
            'jquery': '//cdn.technomarket.bg/assets/vendor/jquery/dist/jquery',
            'jquery.ui': '//cdn.technomarket.bg/assets/vendor/jquery-ui/jquery-ui.min',
            'typeahead': '//cdn.technomarket.bg/assets/vendor/jquery-typeahead/dist/jquery.typeahead.min',
            'css': '//cdn.technomarket.bg/assets/vendor/require-css/css',
            'routing': '//cdn.technomarket.bg/bundles/fosjsrouting/js/router',
            'routes': '/js/routing?callback=fos.Router.setData',
            'slick': '//cdn.technomarket.bg/assets/vendor/slick-carousel/slick/slick.min'

        },
        shim: {
            'jquery.jstree': ['jquery', 'css!jquery.jstree-css'],
            'routing': {
                'exports': 'Routing'
            },
            'jquery': {
                'exports': '$'
            },
            'jquery.countdown': {
                'deps': ['jquery', 'jquery.plugin']
            },
            'slick': {
                deps: ['jquery'],
                exports: 'jQuery.fn.slick'
            },
            'routes': ['routing'],
            'admin': ['framework'],
            'framework': ['jquery'],
            'bootstrap': ['jquery'],
            'facebook' : {
                exports: 'FB'
            }
        }
    });
</script>
        <!--[if lt IE 9]>
        <script src="//cdn.technomarket.bg/assets/vendor/html5shiv/dist/html5shiv.min.js"></script>
        <link rel="stylesheet" href="//cdn.technomarket.bg/css/ie.css" />
        <script src="//cdn.technomarket.bg/assets/vendor/respond/dest/respond.min.js"></script>
        <link href="/respond.proxy.gif" id="respond-redirect" rel="respond-redirect" />
        <link href="//cdn.technomarket.bg/assets/vendor/respond/cross-domain/respond-proxy.html" id="respond-proxy" rel="respond-proxy" />
        <script src="//cdn.technomarket.bg/assets/vendor/respond/cross-domain/respond.proxy.js"></script>
        <![endif]-->
    </head>
    <body itemscope itemtype="http://schema.org/WebPage" id="top" class="">
    <div id="fb-root"></div>
    <header>
        <div class="header-top">
        <div class="container">
            <a href="#" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#extranav" aria-expanded="false" aria-controls="extranav"><span class="icon-dot"></span> <span class="icon-dot"></span> <span class="icon-dot"></span></a>
            <div itemscope itemtype="http://schema.org/Organization" id="extranav" class="navbar-collapse collapse">
            	<link itemprop="url" href="/Technomarket/index">
                <ul itemprop='contactPoint' itemscope itemtype='http://schema.org/ContactPoint' class="nav navbar-nav nav-left">                	
                    <meta itemprop="contactType" content="Customer service">
                    <li><a href="/Technomarket/contacts"><strong><i class="icon-phone"></i> <span itemprop='telephone' class="hidden">+359-02-9421-103</span> 0700 10 800</strong></a></li>
                    <li class="nav-at-home">
                    	<a href="/Technomarket/home">
                            <img src="img/home.svg" alt="@Home" class="hidden-xs" />
                            <span class="visible-xs">@Home</span>                        
                        </a>
                    </li>
                    <li class="nav-apple-shop">
                    	<a href="/Technomarket/apple">
                            <img src="img/apple.jpg" alt="Apple Shop" class="hidden-xs" />
                            <span class="visible-xs">Apple Shop</span>
                        </a>
                    </li>
                    <li class="nav-promo"><a href="/Technomarket/sales"><i class="icon-gift"></i> Промоции</a></li>
                    <li><a href="/Technomarket/stores"><i class="icon-location"></i> Магазини</a></li>
                </ul>
                <ul itemscope itemtype="http://schema.org/Organization" class="nav navbar-nav nav-right">
                	<link itemprop="url" href="/Technomarket/index"> 
                    <li class="icon-social"><a itemprop="sameAs" href="https://www.facebook.com/technomarket/" target="_blank"><i class="icon-facebook"></i> <span class="visible-xs">Facebook</span></a></li>
                    <li class="icon-social"><a itemprop="sameAs" href="https://plus.google.com/+technomarket/" target="_blank"><i class="icon-google"></i> <span class="visible-xs">Google +</span></a></li>
                    <li class="icon-social"><a itemprop="sameAs" href="https://twitter.com/technomarketbg/" target="_blank"><i class="icon-twitter"></i> <span class="visible-xs">Twitter</span></a></li>
                    <li class="icon-social"><a itemprop="sameAs" href="https://www.youtube.com/technomarket/" target="_blank"><i class="icon-youtube"></i> <span class="visible-xs">You Tube</span></a></li>
                    <li class="icon-social"><a itemprop="sameAs" href="https://www.linkedin.com/company/technomarket/" target="_blank"><i class="icon-linkedin"></i> <span class="visible-xs">Linked In</span></a></li>                        
                </ul>
            </div>
        </div>
    </div><!-- /.header-top -->
    <div class="heading">
        <div class="container">
            <div class="row">
                <div class="logo" itemscope itemtype="http://schema.org/Organization">
                	<span itemprop="name" class="hidden">Техномаркет</span>
                    <a itemprop="url" href="/Technomarket/index">
                        <img itemprop="logo" src="img/tehnomarket.png" alt="Technomarket" />
                    </a>
                </div><!-- /.logo -->
                <div class="heading-collapse">
                    <div itemscope itemtype="http://schema.org/WebSite" class="search">
                    	<link itemprop="url" href="/Technomarket/index"/>
                        <form itemprop="potentialAction" itemscope itemtype="http://schema.org/SearchAction" action="http://www.technomarket.bg/search/" method="get" class="input-group">
                            <meta itemprop="target" content="http://www.technomarket.bg/search/?query={query}"/>	
                            <input itemprop="query-input" type="text" name="query" placeholder="Търси..." class="form-control">
                            <span class="search-bar"></span>
                            <span class="input-group-btn">
                                <button class="btn btn-search" type="submit"><i class="icon-search"></i></button>
                            </span>                        
                        </form><!-- /.input-group -->                        
                    </div><!-- /.search -->
                    <div class="user-bar">
                                                <div class="user-account dropdown">
                            <button class="btn btn-tm dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                            	<i class="icon-profile"></i> <span class="hidden-xs">
	                            								<c:choose>
																	<c:when test="${ name == null }">
																		Вход
																	</c:when>    
																	<c:otherwise>
																		<c:out value="${ name }"/>
																	</c:otherwise>
																</c:choose>
															 </span>
                            </button>	
                            								<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">	
                                								<c:choose>
																	<c:when test="${ name == null }">																		
                                											<li><a href="/Technomarket/login">Вход</a></li>
                                											<li><a href="/Technomarket/register">Регистрация</a></li>
																	</c:when>    
																	<c:otherwise>	
																		<c:choose>			
																			<c:when test="${ isAdmin }">								
	                                											<li><a href="/Technomarket/profile">Профил</a></li>
	                															<li><a href="/Technomarket/addProduct">Добави продук</a></li>
	                															<li><a href="/Technomarket/addSale">Добави промоция за продукт</a></li>
	                                											<li><a href="/Technomarket/logOut">Изход</a></li>
																			</c:when>    
																			<c:otherwise>									
	                                											<li><a href="/Technomarket/profile">Профил</a></li>
	                                											<li><a href="/Technomarket/">Поръчки</a></li>
	                                											<li><a href="/Technomarket/logOut">Изход</a></li>
																			</c:otherwise>
																		</c:choose>		
																	</c:otherwise>
																</c:choose>
                            								</ul>
                        </div><!-- /.user-account -->
                                                <div class="basket">
                            <a href="/Technomarket/cart" class="btn btn-tm">
                                <i class="icon-basket"></i> -
                            </a>
                        </div><!-- /.basket -->
                    </div><!-- /.user-bar -->
                </div><!-- /.heading-collapse -->
            </div>
        </div>
    </div><!-- /.heading -->
     <nav class="navbar">
        <a href="#" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="hidden-xs">Категории</span></a>
        <div class="container">
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav nav-main">             
        <% Map<String, HashMap<String,ArrayList<String>>> map = TypeModelDAO.getInstance().getModelType(); %>
        <%for(String s : map.keySet()){ %>
        <li class=" dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%= s %></a>
        	<div class="dropdown-menu">
            	<div class="container">
                	<div class="row">
        				<%for(String ss : map.get(s).keySet()){ %>                                    
        					<ul>
							<% if(map.get(s).get(ss) != null){ %>
							<li class="has-children">
							<%} %>
							<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%= ss %></a>
							<% if(map.get(s).get(ss) != null){ %>
								<ul>
							<%} %>
							<% for(int i=0 ; i < map.get(s).get(ss).size(); i++){ %>
                                	<li>
                                    	<a href="/Technomarket/getProducts" class="ui-link ui-link-all"><%= map.get(s).get(ss).get(i) %></a>
                                    </li>
							<%} %>
							<% if(map.get(s).get(ss) != null){ %>
								</ul>
							<%} %>
							<% if(map.get(s).get(ss) != null){ %>
            					</li>  
							<%} %>                                                                  
            				</ul>
						<%} %>        
            		</div>
        		</div>
     		</div>
        </li>
		<%} %>
        		</ul>
        	</div>
        </div>
    </nav><!-- /.navbar -->
</header>
                                        
            <div class="">
    
    

                    
                                	             
        <section class=" section-brp section-odd" >
            <div class="container">
            	                <div class="row">
                                                                <div class="col-md-16" >

    <div class="tm-map">
        <div class="" id="bf_map_wrapper_j1_4">
            <div class="tm-map-frame" id="bf_map_j1_4"></div>
        </div>
    </div>
    </div>

    <script type="text/javascript">



        require(['jquery'], function($){

            var map;
            function initBFMapj1_4()
            {


                var info = new google.maps.InfoWindow({
                    content: 'hello'
                });


                var bounds = new google.maps.LatLngBounds();

                info.addListener("closeclick", function () {
                    map.fitBounds(bounds);
                });

                map = new google.maps.Map(document.getElementById('bf_map_j1_4'), {
                    center: { lat: 42.72, lng: 25.48},
                    zoom: 12,
                    mapTypeId: google.maps.MapTypeId.ROADMAP,
                    mapTypeControl: false,
                    navigationControl: false
                });

                                var mp1 = new google.maps.LatLng(43.615262, 25.343721);
                var marker1 = new google.maps.Marker({
                    position: mp1,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СВИЩОВ'
                });
                marker1.addListener('click', function() {
                    //  infowindow.open(map, marker1);
                    map.setZoom(17);
                    map.panTo(marker1.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СВИЩОВ</h3><p>ул. Петър Ангелов 28, СВИЩОВ</p><p>тел: 063/164003</p>');
                    info.open(map, marker1);
                });

                bounds.extend(mp1);
                marker1.setMap(map);
                                var mp2 = new google.maps.LatLng(41.5550821,23.2766425);
                var marker2 = new google.maps.Marker({
                    position: mp2,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ САНДАНСКИ'
                });
                marker2.addListener('click', function() {
                    //  infowindow.open(map, marker2);
                    map.setZoom(17);
                    map.panTo(marker2.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ САНДАНСКИ</h3><p>ул.Тодор Каблешков 7, САНДАНСКИ</p><p>тел: 0746/34600</p>');
                    info.open(map, marker2);
                });

                bounds.extend(mp2);
                marker2.setMap(map);
                                var mp3 = new google.maps.LatLng(42.675983, 26.320583);
                var marker3 = new google.maps.Marker({
                    position: mp3,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СЛИВЕН'
                });
                marker3.addListener('click', function() {
                    //  infowindow.open(map, marker3);
                    map.setZoom(17);
                    map.panTo(marker3.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СЛИВЕН</h3><p>ул. Братя Миладинови 25, СЛИВЕН</p><p>тел: 044/610777</p>');
                    info.open(map, marker3);
                });

                bounds.extend(mp3);
                marker3.setMap(map);
                                var mp4 = new google.maps.LatLng(42.519503, 27.461695);
                var marker4 = new google.maps.Marker({
                    position: mp4,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ БУРГАС'
                });
                marker4.addListener('click', function() {
                    //  infowindow.open(map, marker4);
                    map.setZoom(17);
                    map.panTo(marker4.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ БУРГАС</h3><p>ж.к. Изгрев 147, БУРГАС</p><p>тел: 056/861068</p>');
                    info.open(map, marker4);
                });

                bounds.extend(mp4);
                marker4.setMap(map);
                                var mp5 = new google.maps.LatLng(41.997450, 23.087867);
                var marker5 = new google.maps.Marker({
                    position: mp5,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ БЛАГОЕВГРАД'
                });
                marker5.addListener('click', function() {
                    //  infowindow.open(map, marker5);
                    map.setZoom(17);
                    map.panTo(marker5.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ БЛАГОЕВГРАД</h3><p>ж.к “Струмско”, бул. Яне Сандански, БЛАГОЕВГРАД</p><p>тел: 073/829444</p>');
                    info.open(map, marker5);
                });

                bounds.extend(mp5);
                marker5.setMap(map);
                                var mp6 = new google.maps.LatLng(43.247396, 26.559423);
                var marker6 = new google.maps.Marker({
                    position: mp6,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ТЪРГОВИЩЕ'
                });
                marker6.addListener('click', function() {
                    //  infowindow.open(map, marker6);
                    map.setZoom(17);
                    map.panTo(marker6.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ТЪРГОВИЩЕ</h3><p>бул. Ал. Стамболийски 42, ТЪРГОВИЩЕ</p><p>тел: 0601/65554</p>');
                    info.open(map, marker6);
                });

                bounds.extend(mp6);
                marker6.setMap(map);
                                var mp7 = new google.maps.LatLng(42.717694,23.317633);
                var marker7 = new google.maps.Marker({
                    position: mp7,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ РЕТЕЙЛ ПАРК СРЕДЕЦ'
                });
                marker7.addListener('click', function() {
                    //  infowindow.open(map, marker7);
                    map.setZoom(17);
                    map.panTo(marker7.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ РЕТЕЙЛ ПАРК СРЕДЕЦ</h3><p>ул.История Славянобългарска 21, СОФИЯ</p><p>тел: 02/9024814</p>');
                    info.open(map, marker7);
                });

                bounds.extend(mp7);
                marker7.setMap(map);
                                var mp8 = new google.maps.LatLng(42.698267, 23.308605);
                var marker8 = new google.maps.Marker({
                    position: mp8,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СОФИЯ MALL OF SOFIA'
                });
                marker8.addListener('click', function() {
                    //  infowindow.open(map, marker8);
                    map.setZoom(17);
                    map.panTo(marker8.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СОФИЯ MALL OF SOFIA</h3><p>бул. Ал.Стамболийски 101, етаж -2, СОФИЯ</p><p>тел: 02/9209580</p>');
                    info.open(map, marker8);
                });

                bounds.extend(mp8);
                marker8.setMap(map);
                                var mp9 = new google.maps.LatLng(42.711365, 23.272336);
                var marker9 = new google.maps.Marker({
                    position: mp9,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ЛАБИРИНТ'
                });
                marker9.addListener('click', function() {
                    //  infowindow.open(map, marker9);
                    map.setZoom(17);
                    map.panTo(marker9.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ЛАБИРИНТ</h3><p>Люлин 10,бул. д-р Петър Дертлиев 25, СОФИЯ</p><p>тел: 028271104</p>');
                    info.open(map, marker9);
                });

                bounds.extend(mp9);
                marker9.setMap(map);
                                var mp10 = new google.maps.LatLng(42.678533, 23.321100);
                var marker10 = new google.maps.Marker({
                    position: mp10,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ПАРК ЦЕНТЪР СОФИЯ'
                });
                marker10.addListener('click', function() {
                    //  infowindow.open(map, marker10);
                    map.setZoom(17);
                    map.panTo(marker10.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ПАРК ЦЕНТЪР СОФИЯ</h3><p>ъгъла на бул.Черни връх и бул. Арсеналски, СОФИЯ</p><p>тел: 02/9642490</p>');
                    info.open(map, marker10);
                });

                bounds.extend(mp10);
                marker10.setMap(map);
                                var mp11 = new google.maps.LatLng(42.645153, 23.394451);
                var marker11 = new google.maps.Marker({
                    position: mp11,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СОФИЯ ЦАРИГРАДСКО ШОСЕ'
                });
                marker11.addListener('click', function() {
                    //  infowindow.open(map, marker11);
                    map.setZoom(17);
                    map.panTo(marker11.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СОФИЯ ЦАРИГРАДСКО ШОСЕ</h3><p>бул. Цариградско шосе 92, СОФИЯ</p><p>тел: 02/9704888</p>');
                    info.open(map, marker11);
                });

                bounds.extend(mp11);
                marker11.setMap(map);
                                var mp12 = new google.maps.LatLng(42.710150, 23.394267);
                var marker12 = new google.maps.Marker({
                    position: mp12,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СОФИЯ ВЛАДИМИР ВАЗОВ'
                });
                marker12.addListener('click', function() {
                    //  infowindow.open(map, marker12);
                    map.setZoom(17);
                    map.panTo(marker12.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СОФИЯ ВЛАДИМИР ВАЗОВ</h3><p>бул. В. Вазов, СОФИЯ</p><p>тел: 02/8062810</p>');
                    info.open(map, marker12);
                });

                bounds.extend(mp12);
                marker12.setMap(map);
                                var mp13 = new google.maps.LatLng(42.018458, 24.863881);
                var marker13 = new google.maps.Marker({
                    position: mp13,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ АСЕНОВГРАД'
                });
                marker13.addListener('click', function() {
                    //  infowindow.open(map, marker13);
                    map.setZoom(17);
                    map.panTo(marker13.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ АСЕНОВГРАД</h3><p>бул. България 68, АСЕНОВГРАД</p><p>тел: 033/162785</p>');
                    info.open(map, marker13);
                });

                bounds.extend(mp13);
                marker13.setMap(map);
                                var mp14 = new google.maps.LatLng(42.908680, 23.801949);
                var marker14 = new google.maps.Marker({
                    position: mp14,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ БОТЕВГРАД'
                });
                marker14.addListener('click', function() {
                    //  infowindow.open(map, marker14);
                    map.setZoom(17);
                    map.panTo(marker14.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ БОТЕВГРАД</h3><p>бул. Цар Освободител 24А, БОТЕВГРАД</p><p>тел: 0723/69266</p>');
                    info.open(map, marker14);
                });

                bounds.extend(mp14);
                marker14.setMap(map);
                                var mp15 = new google.maps.LatLng(42.513611, 27.453889);
                var marker15 = new google.maps.Marker({
                    position: mp15,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ БУРГАС ГАЛЕРИЯ МОЛ'
                });
                marker15.addListener('click', function() {
                    //  infowindow.open(map, marker15);
                    map.setZoom(17);
                    map.panTo(marker15.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ БУРГАС ГАЛЕРИЯ МОЛ</h3><p>ГАЛЕРИЯ МОЛ, ул.Янко Комитов 6, БУРГАС</p><p>тел: 056/598210</p>');
                    info.open(map, marker15);
                });

                bounds.extend(mp15);
                marker15.setMap(map);
                                var mp16 = new google.maps.LatLng(42.47228,27.432354);
                var marker16 = new google.maps.Marker({
                    position: mp16,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ БУРГАС 3'
                });
                marker16.addListener('click', function() {
                    //  infowindow.open(map, marker16);
                    map.setZoom(17);
                    map.panTo(marker16.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ БУРГАС 3</h3><p>бул.Захари Стоянов 1, БУРГАС</p><p>тел: 056/598 200</p>');
                    info.open(map, marker16);
                });

                bounds.extend(mp16);
                marker16.setMap(map);
                                var mp17 = new google.maps.LatLng(42.530395, 27.457907);
                var marker17 = new google.maps.Marker({
                    position: mp17,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: '@ХОУМ МОЛ БУРГАС ПЛАЗА'
                });
                marker17.addListener('click', function() {
                    //  infowindow.open(map, marker17);
                    map.setZoom(17);
                    map.panTo(marker17.position);
                    info.setContent('<h3>@ХОУМ МОЛ БУРГАС ПЛАЗА</h3><p>ул. Транспортна, БУРГАС</p><p>тел: 056/522186</p>');
                    info.open(map, marker17);
                });

                bounds.extend(mp17);
                marker17.setMap(map);
                                var mp18 = new google.maps.LatLng(43.217998, 27.898016);
                var marker18 = new google.maps.Marker({
                    position: mp18,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ @ХОУМ ВАРНА'
                });
                marker18.addListener('click', function() {
                    //  infowindow.open(map, marker18);
                    map.setZoom(17);
                    map.panTo(marker18.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ @ХОУМ ВАРНА</h3><p>ул.Андрей Сахаров 2 ет.+2, ВАРНА</p><p>тел: 052/702 400</p>');
                    info.open(map, marker18);
                });

                bounds.extend(mp18);
                marker18.setMap(map);
                                var mp19 = new google.maps.LatLng(43.073250, 25.614917);
                var marker19 = new google.maps.Marker({
                    position: mp19,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ВЕЛИКО ТЪРНОВО'
                });
                marker19.addListener('click', function() {
                    //  infowindow.open(map, marker19);
                    map.setZoom(17);
                    map.panTo(marker19.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ВЕЛИКО ТЪРНОВО</h3><p>ул. Магистрална 17, ВЕЛИКО ТЪРНОВО</p><p>тел: 062/614242</p>');
                    info.open(map, marker19);
                });

                bounds.extend(mp19);
                marker19.setMap(map);
                                var mp20 = new google.maps.LatLng(44.0039991,22.8758428);
                var marker20 = new google.maps.Marker({
                    position: mp20,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ВИДИН'
                });
                marker20.addListener('click', function() {
                    //  infowindow.open(map, marker20);
                    map.setZoom(17);
                    map.panTo(marker20.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ВИДИН</h3><p>ЖК. Крум Бъчваров 28 - А, ВИДИН</p><p>тел: 094/691410</p>');
                    info.open(map, marker20);
                });

                bounds.extend(mp20);
                marker20.setMap(map);
                                var mp21 = new google.maps.LatLng(43.222743, 23.544130);
                var marker21 = new google.maps.Marker({
                    position: mp21,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ВРАЦА'
                });
                marker21.addListener('click', function() {
                    //  infowindow.open(map, marker21);
                    map.setZoom(17);
                    map.panTo(marker21.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ВРАЦА</h3><p>жк.Дъбника, до Пощата, ВРАЦА</p><p>тел: 092/669010</p>');
                    info.open(map, marker21);
                });

                bounds.extend(mp21);
                marker21.setMap(map);
                                var mp22 = new google.maps.LatLng(42.889317, 25.294217);
                var marker22 = new google.maps.Marker({
                    position: mp22,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ГАБРОВО'
                });
                marker22.addListener('click', function() {
                    //  infowindow.open(map, marker22);
                    map.setZoom(17);
                    map.panTo(marker22.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ГАБРОВО</h3><p>кв. Войново (на входа от София), ГАБРОВО</p><p>тел: 066/803132</p>');
                    info.open(map, marker22);
                });

                bounds.extend(mp22);
                marker22.setMap(map);
                                var mp23 = new google.maps.LatLng(42.05894,25.585501);
                var marker23 = new google.maps.Marker({
                    position: mp23,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ДИМИТРОВГРАД'
                });
                marker23.addListener('click', function() {
                    //  infowindow.open(map, marker23);
                    map.setZoom(17);
                    map.panTo(marker23.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ДИМИТРОВГРАД</h3><p>бул.Стефан Стамболов 4А, ДИМИТРОВГРАД</p><p>тел: 039129700</p>');
                    info.open(map, marker23);
                });

                bounds.extend(mp23);
                marker23.setMap(map);
                                var mp24 = new google.maps.LatLng(43.579293, 27.832293);
                var marker24 = new google.maps.Marker({
                    position: mp24,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ДОБРИЧ'
                });
                marker24.addListener('click', function() {
                    //  infowindow.open(map, marker24);
                    map.setZoom(17);
                    map.panTo(marker24.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ДОБРИЧ</h3><p>Бул.25. Септември № 70, ДОБРИЧ</p><p>тел: 058/690586</p>');
                    info.open(map, marker24);
                });

                bounds.extend(mp24);
                marker24.setMap(map);
                                var mp25 = new google.maps.LatLng(41.633983, 25.380267);
                var marker25 = new google.maps.Marker({
                    position: mp25,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ КЪРДЖАЛИ'
                });
                marker25.addListener('click', function() {
                    //  infowindow.open(map, marker25);
                    map.setZoom(17);
                    map.panTo(marker25.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ КЪРДЖАЛИ</h3><p>бул. България 115, КЪРДЖАЛИ</p><p>тел: 0361/21160</p>');
                    info.open(map, marker25);
                });

                bounds.extend(mp25);
                marker25.setMap(map);
                                var mp26 = new google.maps.LatLng(43.135582,24.716942);
                var marker26 = new google.maps.Marker({
                    position: mp26,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ЛОВЕЧ'
                });
                marker26.addListener('click', function() {
                    //  infowindow.open(map, marker26);
                    map.setZoom(17);
                    map.panTo(marker26.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ЛОВЕЧ</h3><p>ул. Търговска 45, ЛОВЕЧ</p><p>тел: 068/689810</p>');
                    info.open(map, marker26);
                });

                bounds.extend(mp26);
                marker26.setMap(map);
                                var mp27 = new google.maps.LatLng(43.402324, 23.241273);
                var marker27 = new google.maps.Marker({
                    position: mp27,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ МОНТАНА'
                });
                marker27.addListener('click', function() {
                    //  infowindow.open(map, marker27);
                    map.setZoom(17);
                    map.panTo(marker27.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ МОНТАНА</h3><p>Местност Лъката, МОНТАНА</p><p>тел: 096/390510</p>');
                    info.open(map, marker27);
                });

                bounds.extend(mp27);
                marker27.setMap(map);
                                var mp28 = new google.maps.LatLng(42.187944,24.357553);
                var marker28 = new google.maps.Marker({
                    position: mp28,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ПАЗАРДЖИК 2'
                });
                marker28.addListener('click', function() {
                    //  infowindow.open(map, marker28);
                    map.setZoom(17);
                    map.panTo(marker28.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ПАЗАРДЖИК 2</h3><p>бул. Пловдивско шосе 115, ПАЗАРДЖИК</p><p>тел: 034/405840</p>');
                    info.open(map, marker28);
                });

                bounds.extend(mp28);
                marker28.setMap(map);
                                var mp29 = new google.maps.LatLng(42.607379,23.0436649,17);
                var marker29 = new google.maps.Marker({
                    position: mp29,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ПЕРНИК'
                });
                marker29.addListener('click', function() {
                    //  infowindow.open(map, marker29);
                    map.setZoom(17);
                    map.panTo(marker29.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ПЕРНИК</h3><p>Св.Св Кирил и Методий 39, ПЕРНИК</p><p>тел: 076/686388</p>');
                    info.open(map, marker29);
                });

                bounds.extend(mp29);
                marker29.setMap(map);
                                var mp30 = new google.maps.LatLng(43.407877,24.636347);
                var marker30 = new google.maps.Marker({
                    position: mp30,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ПЛЕВЕН'
                });
                marker30.addListener('click', function() {
                    //  infowindow.open(map, marker30);
                    map.setZoom(17);
                    map.panTo(marker30.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ПЛЕВЕН</h3><p>бул. Европа 6, ПЛЕВЕН</p><p>тел: 064/892360</p>');
                    info.open(map, marker30);
                });

                bounds.extend(mp30);
                marker30.setMap(map);
                                var mp31 = new google.maps.LatLng(43.851923, 25.987681);
                var marker31 = new google.maps.Marker({
                    position: mp31,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ РУСЕ'
                });
                marker31.addListener('click', function() {
                    //  infowindow.open(map, marker31);
                    map.setZoom(17);
                    map.panTo(marker31.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ РУСЕ</h3><p>бул. Липник 113A, РУСЕ</p><p>тел: 082/815660</p>');
                    info.open(map, marker31);
                });

                bounds.extend(mp31);
                marker31.setMap(map);
                                var mp32 = new google.maps.LatLng(43.853144,25.991485);
                var marker32 = new google.maps.Marker({
                    position: mp32,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ @ХОУМ РУСЕ'
                });
                marker32.addListener('click', function() {
                    //  infowindow.open(map, marker32);
                    map.setZoom(17);
                    map.panTo(marker32.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ @ХОУМ РУСЕ</h3><p>бул. Липник 121 в Мол Русе, РУСЕ</p><p>тел: 082/298 440</p>');
                    info.open(map, marker32);
                });

                bounds.extend(mp32);
                marker32.setMap(map);
                                var mp33 = new google.maps.LatLng(42.344898,23.552257);
                var marker33 = new google.maps.Marker({
                    position: mp33,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ САМОКОВ'
                });
                marker33.addListener('click', function() {
                    //  infowindow.open(map, marker33);
                    map.setZoom(17);
                    map.panTo(marker33.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ САМОКОВ</h3><p>ул. Софийско шосе 30А, САМОКОВ</p><p>тел: 072/260578</p>');
                    info.open(map, marker33);
                });

                bounds.extend(mp33);
                marker33.setMap(map);
                                var mp34 = new google.maps.LatLng(44.1135092,27.2525336);
                var marker34 = new google.maps.Marker({
                    position: mp34,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СИЛИСТРА'
                });
                marker34.addListener('click', function() {
                    //  infowindow.open(map, marker34);
                    map.setZoom(17);
                    map.panTo(marker34.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СИЛИСТРА</h3><p>ул. Тутракан 1, СИЛИСТРА</p><p>тел: 086/878800</p>');
                    info.open(map, marker34);
                });

                bounds.extend(mp34);
                marker34.setMap(map);
                                var mp35 = new google.maps.LatLng(42.437594 ,25.632981);
                var marker35 = new google.maps.Marker({
                    position: mp35,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СТАРА ЗАГОРА 2'
                });
                marker35.addListener('click', function() {
                    //  infowindow.open(map, marker35);
                    map.setZoom(17);
                    map.panTo(marker35.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СТАРА ЗАГОРА 2</h3><p>ул. Хан Аспарух 30 Mall Galleria, СТАРА ЗАГОРА</p><p>тел: 042/298102</p>');
                    info.open(map, marker35);
                });

                bounds.extend(mp35);
                marker35.setMap(map);
                                var mp36 = new google.maps.LatLng(42.42785 , 25.651024);
                var marker36 = new google.maps.Marker({
                    position: mp36,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СТАРА ЗАГОРА 3'
                });
                marker36.addListener('click', function() {
                    //  infowindow.open(map, marker36);
                    map.setZoom(17);
                    map.panTo(marker36.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СТАРА ЗАГОРА 3</h3><p>бул.Никола Петков 10 Сити Мол Карфур, СТАРА ЗАГОРА</p><p>тел: 042/298105</p>');
                    info.open(map, marker36);
                });

                bounds.extend(mp36);
                marker36.setMap(map);
                                var mp37 = new google.maps.LatLng(42.411283, 25.593950);
                var marker37 = new google.maps.Marker({
                    position: mp37,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СТАРА ЗАГОРА'
                });
                marker37.addListener('click', function() {
                    //  infowindow.open(map, marker37);
                    map.setZoom(17);
                    map.panTo(marker37.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СТАРА ЗАГОРА</h3><p>кв. Железник, СТАРА ЗАГОРА</p><p>тел: 042/277012</p>');
                    info.open(map, marker37);
                });

                bounds.extend(mp37);
                marker37.setMap(map);
                                var mp38 = new google.maps.LatLng(43.275000, 26.936267);
                var marker38 = new google.maps.Marker({
                    position: mp38,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ШУМЕН'
                });
                marker38.addListener('click', function() {
                    //  infowindow.open(map, marker38);
                    map.setZoom(17);
                    map.panTo(marker38.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ШУМЕН</h3><p>бул. Симеон Велики 34, ШУМЕН</p><p>тел: 054/850810</p>');
                    info.open(map, marker38);
                });

                bounds.extend(mp38);
                marker38.setMap(map);
                                var mp39 = new google.maps.LatLng(42.487083, 26.502150);
                var marker39 = new google.maps.Marker({
                    position: mp39,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ЯМБОЛ'
                });
                marker39.addListener('click', function() {
                    //  infowindow.open(map, marker39);
                    map.setZoom(17);
                    map.panTo(marker39.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ЯМБОЛ</h3><p>ул. Арда 7, ЯМБОЛ</p><p>тел: 046/68218</p>');
                    info.open(map, marker39);
                });

                bounds.extend(mp39);
                marker39.setMap(map);
                                var mp40 = new google.maps.LatLng(41.571027, 23.722805);
                var marker40 = new google.maps.Marker({
                    position: mp40,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ГОЦЕ ДЕЛЧЕВ'
                });
                marker40.addListener('click', function() {
                    //  infowindow.open(map, marker40);
                    map.setZoom(17);
                    map.panTo(marker40.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ГОЦЕ ДЕЛЧЕВ</h3><p>ул. Пейо Яворов №9, ГОЦЕ ДЕЛЧЕВ</p><p>тел: 075/160845</p>');
                    info.open(map, marker40);
                });

                bounds.extend(mp40);
                marker40.setMap(map);
                                var mp41 = new google.maps.LatLng(42.616754, 25.370239);
                var marker41 = new google.maps.Marker({
                    position: mp41,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ КАЗАНЛЪК'
                });
                marker41.addListener('click', function() {
                    //  infowindow.open(map, marker41);
                    map.setZoom(17);
                    map.panTo(marker41.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ КАЗАНЛЪК</h3><p>бул. 23-ти пехотен шипченски полк 80, КАЗАНЛЪК</p><p>тел: 043/170130</p>');
                    info.open(map, marker41);
                });

                bounds.extend(mp41);
                marker41.setMap(map);
                                var mp42 = new google.maps.LatLng(42.090484, 25.210853);
                var marker42 = new google.maps.Marker({
                    position: mp42,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ПЪРВОМАЙ'
                });
                marker42.addListener('click', function() {
                    //  infowindow.open(map, marker42);
                    map.setZoom(17);
                    map.panTo(marker42.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ПЪРВОМАЙ</h3><p>ул. &quot;Княз Борис I-ви&quot; 43, ПЪРВОМАЙ</p><p>тел: 0336/62419</p>');
                    info.open(map, marker42);
                });

                bounds.extend(mp42);
                marker42.setMap(map);
                                var mp43 = new google.maps.LatLng(41.567505,24.737041);
                var marker43 = new google.maps.Marker({
                    position: mp43,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СМОЛЯН'
                });
                marker43.addListener('click', function() {
                    //  infowindow.open(map, marker43);
                    map.setZoom(17);
                    map.panTo(marker43.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СМОЛЯН</h3><p>ул. &quot;Коста Аврамиков&quot;, До Лукойл, СМОЛЯН</p><p>тел: 030/181337</p>');
                    info.open(map, marker43);
                });

                bounds.extend(mp43);
                marker43.setMap(map);
                                var mp44 = new google.maps.LatLng(42.631848, 24.813627);
                var marker44 = new google.maps.Marker({
                    position: mp44,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ КАРЛОВО'
                });
                marker44.addListener('click', function() {
                    //  infowindow.open(map, marker44);
                    map.setZoom(17);
                    map.panTo(marker44.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ КАРЛОВО</h3><p>ул. Теофан Райнов, КАРЛОВО</p><p>тел: 033/598088</p>');
                    info.open(map, marker44);
                });

                bounds.extend(mp44);
                marker44.setMap(map);
                                var mp45 = new google.maps.LatLng(41.931616, 25.604517);
                var marker45 = new google.maps.Marker({
                    position: mp45,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ХАСКОВО'
                });
                marker45.addListener('click', function() {
                    //  infowindow.open(map, marker45);
                    map.setZoom(17);
                    map.panTo(marker45.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ХАСКОВО</h3><p>бул. Съединение 77, ХАСКОВО</p><p>тел: 038/609000</p>');
                    info.open(map, marker45);
                });

                bounds.extend(mp45);
                marker45.setMap(map);
                                var mp46 = new google.maps.LatLng(42.155367, 24.707133);
                var marker46 = new google.maps.Marker({
                    position: mp46,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ПЛОВДИВ'
                });
                marker46.addListener('click', function() {
                    //  infowindow.open(map, marker46);
                    map.setZoom(17);
                    map.panTo(marker46.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ПЛОВДИВ</h3><p>бул. България (4-ти километър), ПЛОВДИВ</p><p>тел: 032/905060</p>');
                    info.open(map, marker46);
                });

                bounds.extend(mp46);
                marker46.setMap(map);
                                var mp47 = new google.maps.LatLng(42.624141, 23.352072);
                var marker47 = new google.maps.Marker({
                    position: mp47,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ @ХОУМ РИНГ МОЛ'
                });
                marker47.addListener('click', function() {
                    //  infowindow.open(map, marker47);
                    map.setZoom(17);
                    map.panTo(marker47.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ @ХОУМ РИНГ МОЛ</h3><p>RING MALL ОКОЛОВРЪСТЕН ПЪТ 216, СОФИЯ</p><p>тел: 02/8621039</p>');
                    info.open(map, marker47);
                });

                bounds.extend(mp47);
                marker47.setMap(map);
                                var mp48 = new google.maps.LatLng(42.624141, 23.352072);
                var marker48 = new google.maps.Marker({
                    position: mp48,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СОФИЯ РИНГ МОЛ'
                });
                marker48.addListener('click', function() {
                    //  infowindow.open(map, marker48);
                    map.setZoom(17);
                    map.panTo(marker48.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СОФИЯ РИНГ МОЛ</h3><p>RING MALL ОКОЛОВРЪСТЕН ПЪТ 216, СОФИЯ</p><p>тел: 02/9024900</p>');
                    info.open(map, marker48);
                });

                bounds.extend(mp48);
                marker48.setMap(map);
                                var mp49 = new google.maps.LatLng(42.435224, 23.817458);
                var marker49 = new google.maps.Marker({
                    position: mp49,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ИХТИМАН'
                });
                marker49.addListener('click', function() {
                    //  infowindow.open(map, marker49);
                    map.setZoom(17);
                    map.panTo(marker49.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ИХТИМАН</h3><p>ул.Цар Освободител 128, ИХТИМАН</p><p>тел: 0724/82228</p>');
                    info.open(map, marker49);
                });

                bounds.extend(mp49);
                marker49.setMap(map);
                                var mp50 = new google.maps.LatLng(43.232355, 27.866251);
                var marker50 = new google.maps.Marker({
                    position: mp50,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ВАРНА'
                });
                marker50.addListener('click', function() {
                    //  infowindow.open(map, marker50);
                    map.setZoom(17);
                    map.panTo(marker50.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ВАРНА</h3><p>ул.Коево 2, ВАРНА</p><p>тел: 052/ 574191</p>');
                    info.open(map, marker50);
                });

                bounds.extend(mp50);
                marker50.setMap(map);
                                var mp51 = new google.maps.LatLng(42.144937, 24.780397);
                var marker51 = new google.maps.Marker({
                    position: mp51,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ПЛОВДИВ 2'
                });
                marker51.addListener('click', function() {
                    //  infowindow.open(map, marker51);
                    map.setZoom(17);
                    map.panTo(marker51.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ПЛОВДИВ 2</h3><p>Ул.Георги Странски 3, ПЛОВДИВ</p><p>тел: 032/654560</p>');
                    info.open(map, marker51);
                });

                bounds.extend(mp51);
                marker51.setMap(map);
                                var mp52 = new google.maps.LatLng(43.029479, 25.092194);
                var marker52 = new google.maps.Marker({
                    position: mp52,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СЕВЛИЕВО'
                });
                marker52.addListener('click', function() {
                    //  infowindow.open(map, marker52);
                    map.setZoom(17);
                    map.panTo(marker52.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СЕВЛИЕВО</h3><p>ул. Стефан Пешев 90 А, СЕВЛИЕВО</p><p>тел: 0675/85080</p>');
                    info.open(map, marker52);
                });

                bounds.extend(mp52);
                marker52.setMap(map);
                                var mp53 = new google.maps.LatLng(42.2670743,23.113473);
                var marker53 = new google.maps.Marker({
                    position: mp53,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ ДУПНИЦА'
                });
                marker53.addListener('click', function() {
                    //  infowindow.open(map, marker53);
                    map.setZoom(17);
                    map.panTo(marker53.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ ДУПНИЦА</h3><p>ул. Иван Вазов  30, ДУПНИЦА</p><p>тел: +35970155200</p>');
                    info.open(map, marker53);
                });

                bounds.extend(mp53);
                marker53.setMap(map);
                                var mp54 = new google.maps.LatLng(42.513611, 27.453889);
                var marker54 = new google.maps.Marker({
                    position: mp54,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: '@ХОУМ ГАЛЕРИЯ МОЛ'
                });
                marker54.addListener('click', function() {
                    //  infowindow.open(map, marker54);
                    map.setZoom(17);
                    map.panTo(marker54.position);
                    info.setContent('<h3>@ХОУМ ГАЛЕРИЯ МОЛ</h3><p>ГАЛЕРИЯ МОЛ,ул.Янко Комитов 6 етаж 1, БУРГАС</p><p>тел: 056/861310</p>');
                    info.open(map, marker54);
                });

                bounds.extend(mp54);
                marker54.setMap(map);
                                var mp55 = new google.maps.LatLng(41.770994, 26.198982);
                var marker55 = new google.maps.Marker({
                    position: mp55,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ СВИЛЕНГРАД'
                });
                marker55.addListener('click', function() {
                    //  infowindow.open(map, marker55);
                    map.setZoom(17);
                    map.panTo(marker55.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ СВИЛЕНГРАД</h3><p>ул. Гео Милев № 2, Търговски парк &quot;Сити, СВИЛЕНГРАД</p><p>тел: 037963444</p>');
                    info.open(map, marker55);
                });

                bounds.extend(mp55);
                marker55.setMap(map);
                                var mp56 = new google.maps.LatLng(41.843614, 23.485874);
                var marker56 = new google.maps.Marker({
                    position: mp56,
                    map: map,
                    icon: "//cdn.technomarket.bg/uploads/BG/black-friday/tm-marker.png",
                    title: 'ТЕХНОМАРКЕТ БАНСКО'
                });
                marker56.addListener('click', function() {
                    //  infowindow.open(map, marker56);
                    map.setZoom(17);
                    map.panTo(marker56.position);
                    info.setContent('<h3>ТЕХНОМАРКЕТ БАНСКО</h3><p>ул.Васил Кънчов 10-16, БАНСКО</p><p>тел: 0749/87780</p>');
                    info.open(map, marker56);
                });

                bounds.extend(mp56);
                marker56.setMap(map);
                
                map.fitBounds(bounds);

                $('#bf_map_j1_4').addClass('scrolloff'); // set the pointer events to none on doc ready
                $('#bf_map_wrapper_j1_4').on('click', function () {
                    $('#bf_map_j1_4').removeClass('scrolloff'); // set the pointer events true on click
                });

                // you want to disable pointer events when the mouse leave the canvas area;

                $("#bf_map_j1_4").mouseleave(function () {
                    $('#bf_map_j1_4').addClass('scrolloff'); // set the pointer events to none when mouse leaves the map area
                });

                google.maps.event.addDomListener(window, "resize", function() {
                    var center = map.getCenter();
                    google.maps.event.trigger(map, "resize");
                    map.setCenter(center);
                    map.fitBounds(bounds);
                });
            }

            window.initBFMapj1_4 = initBFMapj1_4;
            var s = document.createElement("script");
            s.type = "text/javascript";
            s.src  = "https://maps.googleapis.com/maps/api/js?callback=initBFMapj1_4";

            $("head").append(s);
        });



    </script>



                                                    </div>
            </div>
        </section>
            
    

                    
                                	             
        <section class=" section section-odd" >
            <div class="container">
            	                <div class="section-heading">
                    <h2>Магазини Техномаркет</h2>
                                    </div><!-- /.section-heading -->
                                <div class="row">
                                                            	<div class="col-full" >

    <div class="container-inner">
        <div class="container-cell">
                                    <ul class="tm-list tm-cols-x4">
        <li>
        <a href="asenovgrad/tehnomarket-asenovgrad.html"><strong>АСЕНОВГРАД</strong></a>
    </li>
        <li>
        <a href="bansko/tehnomarket-bansko.html"><strong>БАНСКО</strong></a>
    </li>
        <li>
        <a href="blagoevgrad/tehnomarket-blagoevgrad.html"><strong>БЛАГОЕВГРАД</strong></a>
    </li>
        <li>
        <a href="botevgrad/tehnomarket-botevgrad.html"><strong>БОТЕВГРАД</strong></a>
    </li>
        <li>
        <a href="burgas.html"><strong>БУРГАС</strong></a>
    </li>
        <li>
        <a href="varna.html"><strong>ВАРНА</strong></a>
    </li>
        <li>
        <a href="veliko-tyrnovo/tehnomarket-veliko-tyrnovo.html"><strong>ВЕЛИКО ТЪРНОВО</strong></a>
    </li>
        <li>
        <a href="vidin/tehnomarket-vidin.html"><strong>ВИДИН</strong></a>
    </li>
        <li>
        <a href="vraca/tehnomarket-vraca.html"><strong>ВРАЦА</strong></a>
    </li>
        <li>
        <a href="gabrovo/tehnomarket-gabrovo.html"><strong>ГАБРОВО</strong></a>
    </li>
        <li>
        <a href="goce-delchev/tehnomarket-goce-delchev.html"><strong>ГОЦЕ ДЕЛЧЕВ</strong></a>
    </li>
        <li>
        <a href="dimitrovgrad/tehnomarket-dimitrovgrad.html"><strong>ДИМИТРОВГРАД</strong></a>
    </li>
        <li>
        <a href="dobrich/tehnomarket-dobrich.html"><strong>ДОБРИЧ</strong></a>
    </li>
        <li>
        <a href="dupnica/tehnomarket-dupnica.html"><strong>ДУПНИЦА</strong></a>
    </li>
        <li>
        <a href="ihtiman/tehnomarket-ihtiman.html"><strong>ИХТИМАН</strong></a>
    </li>
        <li>
        <a href="kazanlyk/tehnomarket-kazanlyk.html"><strong>КАЗАНЛЪК</strong></a>
    </li>
        <li>
        <a href="karlovo/tehnomarket-karlovo.html"><strong>КАРЛОВО</strong></a>
    </li>
        <li>
        <a href="kyrdzhali/tehnomarket-kyrdzhali.html"><strong>КЪРДЖАЛИ</strong></a>
    </li>
        <li>
        <a href="lovech/tehnomarket-lovech.html"><strong>ЛОВЕЧ</strong></a>
    </li>
        <li>
        <a href="montana/tehnomarket-montana.html"><strong>МОНТАНА</strong></a>
    </li>
        <li>
        <a href="pazardzhik/tehnomarket-pazardzhik-2.html"><strong>ПАЗАРДЖИК</strong></a>
    </li>
        <li>
        <a href="pernik/tehnomarket-pernik.html"><strong>ПЕРНИК</strong></a>
    </li>
        <li>
        <a href="pleven/tehnomarket-pleven.html"><strong>ПЛЕВЕН</strong></a>
    </li>
        <li>
        <a href="plovdiv.html"><strong>ПЛОВДИВ</strong></a>
    </li>
        <li>
        <a href="pyrvomaj/tehnomarket-pyrvomaj.html"><strong>ПЪРВОМАЙ</strong></a>
    </li>
        <li>
        <a href="ruse.html"><strong>РУСЕ</strong></a>
    </li>
        <li>
        <a href="samokov/tehnomarket-samokov.html"><strong>САМОКОВ</strong></a>
    </li>
        <li>
        <a href="sandanski/tehnomarket-sandanski.html"><strong>САНДАНСКИ</strong></a>
    </li>
        <li>
        <a href="svilengrad/tehnomarket-svilengrad.html"><strong>СВИЛЕНГРАД</strong></a>
    </li>
        <li>
        <a href="svishtov/tehnomarket-svishtov.html"><strong>СВИЩОВ</strong></a>
    </li>
        <li>
        <a href="sevlievo/tehnomarket-sevlievo.html"><strong>СЕВЛИЕВО</strong></a>
    </li>
        <li>
        <a href="silistra/tehnomarket-silistra.html"><strong>СИЛИСТРА</strong></a>
    </li>
        <li>
        <a href="sliven/tehnomarket-sliven.html"><strong>СЛИВЕН</strong></a>
    </li>
        <li>
        <a href="smolqn/tehnomarket-smolqn.html"><strong>СМОЛЯН</strong></a>
    </li>
        <li>
        <a href="sofiq.html"><strong>СОФИЯ</strong></a>
    </li>
        <li>
        <a href="stara-zagora.html"><strong>СТАРА ЗАГОРА</strong></a>
    </li>
        <li>
        <a href="tyrgovishte/tehnomarket-tyrgovishte.html"><strong>ТЪРГОВИЩЕ</strong></a>
    </li>
        <li>
        <a href="haskovo/tehnomarket-haskovo.html"><strong>ХАСКОВО</strong></a>
    </li>
        <li>
        <a href="shumen/tehnomarket-shumen.html"><strong>ШУМЕН</strong></a>
    </li>
        <li>
        <a href="qmbol/tehnomarket-qmbol.html"><strong>ЯМБОЛ</strong></a>
    </li>
    </ul>

                    </div>
    </div>
    </div>


                                                    </div>
            </div>
        </section>
            
    </div>

        <footer>
    <div class="inner">
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <h4><a aria-controls="technomarket" aria-expanded="true" href="#technomarket" data-toggle="collapse" role="button" class="tm-collapse">Техномаркет</a></h4>
                    <ul id="technomarket" class="footer-menu collapse in">
                        <li><a href="/Technomarket/stores">Магазини</a></li>
                        <li><a href="/Technomarket/contacts">Контакти</a></li>
                    </ul>
                </div>
                <div class="col-md-5">
                    <h4><a aria-controls="easy-shopping" aria-expanded="true" href="#easy-shopping" data-toggle="collapse" role="button" class="tm-collapse">Лесно пазаруване</a></h4>
                    <ul id="easy-shopping" class="footer-menu collapse in">
                        <li><a href="/Technomarket/conditionsForMarketing">Условия за Online пазаруване</a></li>
                        <li><a href="/Technomarket/delivery">Бърза и безплатна доставка до дома Ви</a></li>
                        <li><a href="/Technomarket/onlinePay">Сигурно Online разплащане</a></li>
                        <li><a href="/Technomarket/tbiConditions">Условия за TBI Credit кредитиране</a></li>
                        <li><a href="/Technomarket/uniConditions">Условия за UniCredit кредитиране</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h4><a aria-controls="contacts" aria-expanded="true" href="/Technomarket/contacts" data-toggle="collapse" role="button" class="tm-collapse">Контакти</a></h4>
                    <div id="contacts" class="footer-menu collapse in">
                        <p><strong>Национален телефон на клиента</strong></p>
                        <h3><strong>0700 10 800</strong></h3>
                        <p><small>на цената на един градски разговор</small></p>
                        <br>
                        <ul itemscope itemtype="http://schema.org/Organization" class="social-icons">
                        	<link itemprop="url" href="/Technomarket/index">
                            <li><a itemprop="sameAs" href="https://www.facebook.com/technomarket/" target="_blank" title="Facebook"><i class="icon-facebook"></i></a></li>
                            <li><a itemprop="sameAs" href="https://plus.google.com/+technomarket/" target="_blank" title="Google +"><i class="icon-google"></i></a></li>
                            <li><a itemprop="sameAs" href="https://twitter.com/technomarketbg/" target="_blank" title="Twitter"><i class="icon-twitter"></i></a></li>
                            <li><a itemprop="sameAs" href="https://www.youtube.com/technomarket/" target="_blank" title="YouTube"><i class="icon-youtube"></i></a></li>
                            <li><a itemprop="sameAs" href="https://www.linkedin.com/company/technomarket/" target="_blank" title="Linked In"><i class="icon-linkedin"></i></a></li>                        
                        </ul>
                    </div>
                </div>
            </div>
            <div class="online-info">
            	Уважаеми клиенти, цените на technomarket.bg се обновяват на всеки един час. Възможно е несъответствие с цените в магазините. Всички цени са за покупки онлайн.<br>
                При възникване на спор, свързан с покупка онлайн можете да ползвате сайта <a href="https://webgate.ec.europa.eu/odr/main/index.cfm?event=main.home.show&amp;lng=BG" target="_blank" rel="nofollow">ОРС</a>.
            </div>
        </div>
    </div><!-- /.inner -->
    <div class="copyrights">
        <div class="container">
            <span class="copy">Copyright &reg; 2016 Техномаркет. Всички права запазени.</span>
            <span class="mc-logos">
                            <img src="http://cdn.technomarket.bg/images/3e561a8.png" alt="Technomarket" />
                        </span>
        </div>
    </div><!-- /.copyrights -->
</footer>
        <script type="text/javascript">
            require(['app', 'jquery'], function(app, $){

                $('div.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
                    event.preventDefault();
                    event.stopPropagation();
                    $(this).parent().siblings().removeClass('open');
                    $(this).parent().toggleClass('open');
                });

                var $countDowns = $('div.countdown-widget');

                if ($countDowns.length)
                {
                    require(['jquery', 'jquery.countdown'], function ($) {
                        $.countdown.regionalOptions.bg={labels:["Години","Месеца","Седмица","Дни","Часа","Минути","Секунди"],labels1:["Година","Месец","Седмица","Ден","Час","Минута","Секунда"],compactLabels:["l","m","n","d"],compactLabels1:["g","m","n","d"],whichLabels:null,digits:["0","1","2","3","4","5","6","7","8","9"],timeSeparator:":",isRTL:false};
                        $.countdown.setDefaults($.countdown.regionalOptions.bg)
                        $countDowns.each(function () {

                            $(this).countdown({until: new Date($(this).attr('data-date'))});
                        });

                    });
                }

                $('.update-widget').each(function () {
                    $(this).load($(this).attr('data-url'));

                });
            });
			for(var f=document.forms,i=f.length;i--;)f[i].setAttribute("novalidate",i)
        </script>

        <a href="#top" class="scroll-top"><i class="icon-arrow-long-up"></i></a>

                            <script>
                (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
                })(window,document,'script','../www.google-analytics.com/analytics.js','ga');

                ga('create', 'UA-8418537-1', 'auto');
                ga('send', 'pageview');

            </script>
            <!-- Facebook Pixel Code -->
            <script>
                !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
                        n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
                    n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
                    t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
                                document,'script','../connect.facebook.net/en_US/fbevents.js');

                fbq('init', '376584362536011');
                fbq('track', "PageView");</script>
            	<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=376584362536011&amp;ev=PageView&amp;noscript=1"/></noscript>
            <!-- End Facebook Pixel Code -->
                        
        <!-- Begin Cookie Consent plugin by Silktide - http://silktide.com/cookieconsent -->
        <script type="text/javascript">
            window.cookieconsent_options = {"message":'Technomarket.bg използва &quot;бисквитки&quot;.',"dismiss":'Ок',"learnMore":'Виж повече',"link":'/cookie',"theme":false};
        </script>

        <script type="text/javascript" src="css/cdnjs.cloudflare.com/ajax/libs/cookieconsent2/1.0.9/cookieconsent.min.js"></script>
        <!-- End Cookie Consent plugin -->
        
    </body>

<!-- Mirrored from www.technomarket.bg/magazini by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:13:15 GMT -->
</html>
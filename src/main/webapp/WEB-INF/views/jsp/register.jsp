<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="msg" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="">

    
<!-- Mirrored from www.technomarket.bg/register/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:13:16 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
        <title>Технoмаркет - онлайн магазин</title>
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
        <%
			String username = (String) request.getSession().getAttribute("email");
			RequestDispatcher rd = null;
			if (username != null) {
				rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
		%>
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
                    <li><a href="/Technomarket/home"><strong><i class="icon-phone"></i> <span itemprop='telephone' class="hidden">+359-02-9421-103</span> 0700 10 800</strong></a></li>
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
                                											<li><a href="/Technomarket/profile">Профил</a></li>
                                											<li><a href="/Technomarket/">Поръчки</a></li>
                                											<li><a href="/Technomarket/logOut">Изход</a></li>
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
        <li class=" dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Телевизори и Аудио</a>
        <div class="dropdown-menu">
            <div class="container">
                <div class="row">
                                            <ul>
                                                                                                                        <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Телевизори</a>
                                                                                                                                                                                                                                                                        
                                                                                                                                        <ul>
                                                    <li>
                                                        <a href="/Technomarket/getProducts" class="ui-link ui-link-all">Всички Телевизори</a>
                                                    </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">LG</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Panasonic</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Philips</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Samsung</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Sharp</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Sony</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Toshiba</a>
                                                        </li>
                                                                                                    </ul>
                                                                                    
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ТВ аксесоари</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за Телевизори</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Антени</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Цифрови Тунери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Дистанционни управления</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Стойки за стена</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Мултимедийни Плеъри</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Видео кабели</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Домашно кино</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Сателитни приемници</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">DVD плейъри</a>
                                                                                                            </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Аудио системи</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Мини системи</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Микро системи</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Ресивъри</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Тонколони</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Аудио аксесоари</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Микрофони</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Слушалки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аудио кабели</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Персонално аудио</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">IPod</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">IPod Аксесоари</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">MP3 плейъри</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Радиокасетофони с CD</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Радиочасовници</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Диктофони</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Радиоприемници</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Авто и GPS</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">CD Плейъри</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Тонколони и субуфъри</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Усилватели</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                                                                                        <li>
                                                                                                                                            <a href="/Technomarket/getProducts" class="ui-link">GPS Софтуер</a>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                                                                                            <a href="/Technomarket/getProducts" class="ui-link">GPS Аксесоари</a>
                                                                                                                                    </li>
                                                                                                                            <li>
                                                                                                                                            <a href="/Technomarket/getProducts" class="ui-link">GPS Приемници</a>
                                                                                                                                    </li>
                                                                                                                    
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Батерии и зарядни</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Фенери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Батерии</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Презареждащи батерии</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Зарядни устройства</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                    </ul>
                                    </div>
            </div>
        </div>
            </li>
        <li class=" dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Компютри и Периферия</a>
        <div class="dropdown-menu">
            <div class="container">
                <div class="row">
                                            <ul>
                                                                                                                        <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Лаптопи</a>
                                                                                                                                                                                                                                                                        
                                                                                                                                        <ul>
                                                    <li>
                                                        <a href="/Technomarket/getProducts" class="ui-link ui-link-all">Всички Лаптопи</a>
                                                    </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">ACER</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">ASUS</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Apple</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">DELL</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">HP</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Lenovo</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Toshiba</a>
                                                        </li>
                                                                                                    </ul>
                                                                                    
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Аксесоари за Лаптоп</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Чанти за лаптопи</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Oхладители за лаптопи</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Лаптоп Аксесоари</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Компютърни кабели</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Компютри</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Монитори</a>
                                                                                                            </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Периферни устройства</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="has-2cols">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Адаптери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Мишки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Разклонители</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">PC микрофони</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">PC слушалки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Game контролери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Оптични устройства</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Рутери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Web камери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">PC колонки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Клавиатури</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Принтери и скенери</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Мастиленоструйни принтери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Лазерни принтери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Мастиленоструйни МФП</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Лазерни мултифункционални устройства</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Скенери</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Консумативи за принтери</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Консумативи Мастиленоструйни Принтери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Тонер касети за Лазерни Принтери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Копирна и Фото хартия</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">HDD &amp; USB Flash</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">USB Flash</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Хард дискове</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Външни HDD</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Дискове</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Проектори</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Софтуер</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Калкулатори</a>
                                                                                                            </li>
                                                                                    </ul>
                                    </div>
            </div>
        </div>
            </li>
        <li class=" dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Телефони и Таблети</a>
        <div class="dropdown-menu">
            <div class="container">
                <div class="row">
                                            <ul>
                                                                                                                        <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Мобилни Телефони</a>
                                                                                                                                                                                                                                                                        
                                                                                                                                        <ul>
                                                    <li>
                                                        <a href="/Technomarket/getProducts" class="ui-link ui-link-all">Всички Мобилни Телефони</a>
                                                    </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Apple</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">HTC</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Huawei</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">LG</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Lenovo</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Microsoft</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Moto</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Nokia</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Samsung</a>
                                                        </li>
                                                                                                            <li>
                                                            <a href="/Technomarket/getProducts" class="ui-link">Sony</a>
                                                        </li>
                                                                                                    </ul>
                                                                                    
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Smart часовници и гривни</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Apple аксесоари</a>
                                                                                                            </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Аксесоари за мобилни телефони</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Протектори за мобилни телефони</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Калъфи за мобилни телефони</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аудио аксесоари за мобилни телефони</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Докинг станции за Андроид</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Зарядни за мобилни телефони</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Други аксесоари</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Таблети</a>
                                                                                                            </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Аксесоари за Таблети</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Протектори за Таблети</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Калъфи за Таблети</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">E-Book</a>
                                                                                                            </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Стационарни Телефони и Факс апарати</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Стандартни телефони</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Безжични телефони</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за безжични телефони</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                    </ul>
                                    </div>
            </div>
        </div>
            </li>
        <li class=" dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Електроуреди</a>
        <div class="dropdown-menu">
            <div class="container">
                <div class="row">
                                            <ul>
                                                                                                                        <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Климатици</a>
                                                                                                            </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Уреди за вграждане</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Микровълнови фурни за вграждане</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Съдомиялни машини</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Абсорбатори за вграждане</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Перални за вграждане</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Хладилници за вграждане</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Фурни за вграждане</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Плотове</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Хладилници и фризери</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Хладилници</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Side by Side хладилници</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Фризери и ракли</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Хладилни витрини</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Сушилни машини</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Перални машини</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Миялни машини</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Микровълнови фурни</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Готварски печки</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Бойлери</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Абсорбатори</a>
                                                                                                            </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Аксесоари</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за Хладилници</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за Перални машини</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за Съдомиялни машини</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за Готварски печки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за климатици</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за Абсорбатори</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Автомат за вода</a>
                                                                                                            </li>
                                                                                    </ul>
                                    </div>
            </div>
        </div>
            </li>
        <li class=" dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Малки електроуреди</a>
        <div class="dropdown-menu">
            <div class="container">
                <div class="row">
                                            <ul>
                                                                                                                        <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Уреди за кухнята</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="has-2cols">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кухненски везни</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Фритюрници</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Тостери и сандвич скари</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Сокоизтисквачки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кухненски роботи</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Пасатори</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Хлебопекарни</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Миксери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Месомелачки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Електрически кани</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кафемашини</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кафе</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Грил &amp; Барбекю</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Блендери</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Уреди за готвене на пара</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Multi Cooker</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кафемелачки</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Здраве и красота</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Ел.Четки за зъби</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Преси и маши</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Сешоари</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Самобръсначки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Машинки за подстригване</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Епилатори</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Фотоепилатори</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Ел. везни</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Грижа за въздуха</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Грижа за тялото</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Уреди за дома</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Прахосмукачки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Ютии</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Отоплителни уреди</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Вентилатори</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Шевни машини</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Продукти за Бебе</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Енергоспестяващи крушки</a>
                                                                                                            </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Аксесоари</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за Прахосмукачки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари Грижа за тялото</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за Шевни Машини</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Почистване и Аксесоари</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                    </ul>
                                    </div>
            </div>
        </div>
            </li>
        <li class=" dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Фото и Видео</a>
        <div class="dropdown-menu">
            <div class="container">
                <div class="row">
                                            <ul>
                                                                                                                        <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Фотоапарати</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Хибридни</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Фотоапарати - компактни</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">DSLR Фотоапарати</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Камери</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Фото рамки</a>
                                                                                                            </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="/Technomarket/getProducts" class="ui-link">Карти памет</a>
                                                                                                            </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Аксесоари Фото и Видео</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за фотоапарти</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за SLR</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Стативи</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Зарядни устройства</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Батерии</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Чанта за Фото</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="">

                                                                                                                       <a href="binokyl.html" class="ui-link">Бинокли</a>
                                                                                                            </li>
                                                                                    </ul>
                                    </div>
            </div>
        </div>
            </li>
        <li class=" dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Забавления</a>
        <div class="dropdown-menu">
            <div class="container">
                <div class="row">
                                            <ul>
                                                                                                                        <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Игрови конзоли</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Sony Playstation</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">XBOX360</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Nintendo</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Други</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Аксесоари</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за PLAYSTATION</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за XBOX360</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за Nintendo</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Игри</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="has-2cols">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за PC</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за PSP</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за PLAYSTATION VITA</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за PLAYSTATION 2</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за PLAYSTATION 3</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за PLAYSTATION 4</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за XBOX360</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за Nintendo Wii</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за Nintendo 3DS</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за Nintendo DS</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Игри за  Nintendo GBA</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                    </ul>
                                    </div>
            </div>
        </div>
            </li>
        <li class=" dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">@Home</a>
        <div class="dropdown-menu">
            <div class="container">
                <div class="row">
                                            <ul>
                                                                                                                        <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Кухня</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Домакински прибори</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li class="has-children">
                                                                                                                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Сервизи за хранене</a>
                                                                    <ul>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кафе и чай</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Сервизи</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Чинии</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Плата</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Супници</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Сосиери</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Канички за мляко</a>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Чаши</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Ножове лъжици и вилици</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li class="has-children">
                                                                                                                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Кухненски съдове и аксесоари</a>
                                                                    <ul>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за готвене</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Декорация</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Сушилни за съдове</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Kутии за съхранение</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кутии и кошници за хляб</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Поставки и подложки</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Тенджери</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Тигани</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Дъски за рязане</a>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Подноси</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li class="has-children">
                                                                                                                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Кухненски текстил</a>
                                                                    <ul>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Покривки</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Подложки</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Салфетки</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кухненски кърпи</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Престилки</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Ръкавици</a>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li class="has-children">
                                                                                                                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Продукти за печене</a>
                                                                    <ul>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Oгнеупорно стъкло</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Форми за хляб</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Форми  за  сладкиши</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Тави</a>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кана с филтър</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Спалня</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Възглавници</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Завивки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Матраци</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Спално бельо</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Декорация</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="has-2cols">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li class="has-children">
                                                                                                                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Сезонни стоки</a>
                                                                    <ul>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Свети Валентин</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Великден</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Коледа</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Лято</a>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Декоративни съдове</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Вази</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Свещи</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Свещници</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Изкуствени цветя</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Одеяла</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Възглавници</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Часовници</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Картини</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Стикери за стена</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Рамки</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Огледала</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари за бижута</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">За Децата</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Детски чаши</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Детска стая</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Детски сервизи</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Текстил</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Училище</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Баня</a>
                                                                                                                                                                                                                                                                        
                                                                                            <ul class="">
                                                                                                                                                                        <li class="has-children">
                                                                                                                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Пране и почистване</a>
                                                                    <ul>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Домакински стълби</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Закачалки</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Етажерки за обувки</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Кутии и кошове</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Почистване</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Гладене</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Закачалки за дрехи</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Изтривалки</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Пране</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Сушилници</a>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Арома терапия</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Завеси за баня</a>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li class="has-children">
                                                                                                                                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Текстил за баня</a>
                                                                    <ul>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Хавлии</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Халати</a>
                                                                                                                                                            </li>
                                                                                                                                                    <li>
                                                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Постелки за баня</a>
                                                                                                                                                            </li>
                                                                                                                                            </ul>
                                                                                                                            </li>
                                                        
                                                                                                                                                                        <li>
                                                                                                                                    <a href="/Technomarket/getProducts" class="ui-link">Аксесоари</a>
                                                                                                                            </li>
                                                        
                                                                                                    </ul>

                                                                                                                                
                                                                    </li>
                                                                                                                            <li class="has-children">

                                                                                                                        <a href="/Technomarket/getProducts" class="ui-link">Outlet</a>
                                        
                                                                    </li>
                                                                                    </ul>
                                    </div>
            </div>
        </div>
            </li>
    </ul>
            </div>
        </div>
    </nav><!-- /.navbar -->
</header>
                                        
        <section>
    <div class="container">
        <div class="security">
    <div class="row-split">
        <div class="col-half">
            <h2>Регистрация</h2>
            <c:if test="${ acceptedTerms }">
            	<font color="red">Трябва да приемете условията за да се регистрирате!</font>
            	<% session.removeAttribute("acceptedTerms"); %>
            	</br>
            </c:if>
            <c:if test="${ passwordMissmatch }">
            	<font color="red">Паролите не съвпадат!</font>
            	<% session.removeAttribute("passwordMissmatch"); %>
            	</br>
            </c:if>
            <c:if test="${ invalidEmail }">
            	<font color="red">Невалиден email!</font>
            	<% session.removeAttribute("invalidEmail"); %>
            	</br>
            </c:if>
            <c:if test="${ dayUnselected }">
            	<font color="red">Не сте избрали ден на раждане!</font>
            	<% session.removeAttribute("dayUnselected"); %>
            	</br>
            </c:if>
            <c:if test="${ monthUnselected }">
            	<font color="red">Не сте избрали месец на раждане!</font>
            	<% session.removeAttribute("monthUnselected"); %>
            	</br>
            </c:if>
            <c:if test="${ yearUnselected }">
            	<font color="red">Не сте избрали година на раждане!</font>
            	<% session.removeAttribute("yearUnselected"); %>
            	</br>
            </c:if>
            <c:if test="${ unchosenSex }">
            	<font color="red">Не сте избрали пол!</font>
            	<% session.removeAttribute("unchosenSex"); %>
            	</br>
            </c:if>
            <c:if test="${ passwordEmpty }">
            	<font color="red">Полетата с парола и повтори парола са задължителни!</font>
            	<% session.removeAttribute("passwordEmpty"); %>
            	</br>
            </c:if>
            <c:if test="${ nameEmpty }">
            	<font color="red">Полетата с име и фамилия са задължителни!</font>
            	<% session.removeAttribute("nameEmpty"); %>
            	</br>
            </c:if>
            <c:if test="${ passwordTooLong }">
            	<font color="red">Паролата не може да бъде по-голяма от 20 цифри!</font>
            	<% session.removeAttribute("passwordTooLong"); %>
            	</br>
            </c:if>
            <c:if test="${ emailExists }">
            	<font color="red">Съществува потребител с такъв емайл!</font>
            	<% session.removeAttribute("emailExists"); %>
            	</br>
            </c:if>
            <form action="/Technomarket/addUser"  method="POST" class="fos_user_registration_register form-horizontal"><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_first_name">
                    Име
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_first_name" name="fos_user_registration_form[first_name]" pattern=".{2,}" class="form-control" required="required" /><span class="bar"></span></div></div>
                <div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_last_name">
                    Фамилия
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_last_name" name="fos_user_registration_form[last_name]" pattern=".{2,}" class="form-control" required="required"/><span class="bar"></span></div></div>
                <div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_email">
                    E-mail
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="email" id="fos_user_registration_form_email" name="fos_user_registration_form[email]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_plainPassword_first">
                    Парола
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="password" id="fos_user_registration_form_plainPassword_first" name="fos_user_registration_form[plainPassword][first]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_plainPassword_second">
                    Парола (отново)
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="password" id="fos_user_registration_form_plainPassword_second" name="fos_user_registration_form[plainPassword][second]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required">
                    Пол
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><div class="control-group"><label class="required radio-inline"><input type="radio" id="fos_user_registration_form_sex_0" name="fos_user_registration_form[sex]" required="required" value="1" />Мъж</label><label class="required radio-inline"><input type="radio" id="fos_user_registration_form_sex_1" name="fos_user_registration_form[sex]" required="required" value="2" />Жена</label></div><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required">
                    Дата на раждане
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><div id="fos_user_registration_form_birthday" class="form-inline"><select id="fos_user_registration_form_birthday_day" name="fos_user_registration_form[birthday][day]" required="required" class="form-control"><option value="" selected="selected">ден</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select><select id="fos_user_registration_form_birthday_month" name="fos_user_registration_form[birthday][month]" required="required" class="form-control"><option value="" selected="selected">месец</option><option value="1">01</option><option value="2">02</option><option value="3">03</option><option value="4">04</option><option value="5">05</option><option value="6">06</option><option value="7">07</option><option value="8">08</option><option value="9">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select><select id="fos_user_registration_form_birthday_year" name="fos_user_registration_form[birthday][year]" required="required" class="form-control"><option value="" selected="selected">година</option><option value="1896">1896</option><option value="1897">1897</option><option value="1898">1898</option><option value="1899">1899</option><option value="1900">1900</option><option value="1901">1901</option><option value="1902">1902</option><option value="1903">1903</option><option value="1904">1904</option><option value="1905">1905</option><option value="1906">1906</option><option value="1907">1907</option><option value="1908">1908</option><option value="1909">1909</option><option value="1910">1910</option><option value="1911">1911</option><option value="1912">1912</option><option value="1913">1913</option><option value="1914">1914</option><option value="1915">1915</option><option value="1916">1916</option><option value="1917">1917</option><option value="1918">1918</option><option value="1919">1919</option><option value="1920">1920</option><option value="1921">1921</option><option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option></select></div>
                                            <span class="bar"></span></div></div><div class="form-group"><div class="col-sm-6"></div><div class="col-sm-10"><div class="checkbox"><label class="required"><input type="checkbox" id="fos_user_registration_form_subscribe" name="fos_user_registration_form[subscribe]" required="required" value="1" />Искам да получавам информация за промоции и нови продукти.</label></div></div></div><div class="form-group"><div class="col-sm-6"></div><div class="col-sm-10"><input type="checkbox" id="fos_user_registration_form_accept_terms" name="fos_user_registration_form[accept_terms]" required="required" value="1" /><a href="/Technomarket/conditionsForMarketing" target="_blank" class="color-inherit">Приемам условията за ползване</a></div></div><input type="hidden" id="fos_user_registration_form__token" name="fos_user_registration_form[_token]" class="form-control" value="Krjne80piNBsqAJqOJMu6HN5W9V7cPDmBpDmv2Am1k8" /><div class="form-group">
                    <div class="col-sm-offset-6 col-sm-10">
                         <input class="btn btn-tm" type="submit" value="Регистрация" />
                    </div>
                </div>      
            </form>
        </div>
        <div class="col-half">
            <h2>Имаш профил?</h2>
            <a href="/Technomarket/login" class="btn btn-tm">Вход в сайта</a>
            <hr>
                                                        </div>
    </div>
</div>    </div>
</section>    

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
                            <img src="img/cards.png" alt="Technomarket" />
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
                })(window,document,'script','../../www.google-analytics.com/analytics.js','ga');

                ga('create', 'UA-8418537-1', 'auto');
                ga('send', 'pageview');

            </script>
            <!-- Facebook Pixel Code -->
            <script>
                !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
                        n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
                    n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
                    t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
                                document,'script','../../connect.facebook.net/en_US/fbevents.js');

                fbq('init', '376584362536011');
                fbq('track', "PageView");</script>
            	<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=376584362536011&amp;ev=PageView&amp;noscript=1"/></noscript>
            <!-- End Facebook Pixel Code -->
                        
        <!-- Begin Cookie Consent plugin by Silktide - http://silktide.com/cookieconsent -->
        <script type="text/javascript">
            window.cookieconsent_options = {"message":'Technomarket.bg използва &quot;бисквитки&quot;.',"dismiss":'Ок',"learnMore":'Виж повече',"link":'/cookie',"theme":false};
        </script>

        <script type="text/javascript" src="../../cdnjs.cloudflare.com/ajax/libs/cookieconsent2/1.0.9/cookieconsent.min.js"></script>
        <!-- End Cookie Consent plugin -->
        
    </body>

<!-- Mirrored from www.technomarket.bg/register/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:13:16 GMT -->
</html>
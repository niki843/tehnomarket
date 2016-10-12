<!doctype html>
<%@page import="com.tm.dbModels.TypeModelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<html class="no-js" lang="">
    
<!-- Mirrored from www.technomarket.bg/promocii by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:12:37 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
                                            <title>Промоции - Технoмаркет - онлайн магазин</title>
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
	                                											<li><a href="/Technomarket/orders">Поръчки</a></li>
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
													<li><a
														href="/Technomarket/getProducts?nadtype=<%=s%>&type=<%=ss%>&model=<%= map.get(s).get(ss).get(i) %>"
														class="ui-link ui-link-all"><%= map.get(s).get(ss).get(i) %></a>
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
    
    

                    
                                	             
        <section class=" section section-odd" >
            <div class="container">
            	                <div class="row">
                                                            	    <div class="col-full" >

    <aside class="col-md-3 sidebar">
	<h3 class="aside-filter-title"><a aria-controls="aside-filter" aria-expanded="true" href="#aside-filter-57f39bc8b5542" data-toggle="collapse" role="button" class="tm-collapse">Филтър</a></h3>
    <div id="aside-filter-57f39bc8b5542" class="aside-filter collapse in">
        <form name="filter_form" method="get" action="#" class="form-horizontal"><div id="filter_form"><fieldset class="filter-box"><header><h3><a  class="required" for="filter_form_sort">Подреди по</a></h3></header><div class="filter-content"><select id="filter_form_sort" name="filter_form[sort]" class="form-control"><option value="default">по подразбиране</option><option value="type">по тип</option><option value="price">по цена</option><option value="brand">по марка</option></select></div></fieldset><fieldset class="filter-box"><header><h3><a  class="required">Категории</a></h3></header><div class="filter-content"><div id="filter_form_main_categories"><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_main_categories_0" name="filter_form[main_categories][]" value="@Home" /><span>@Home</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_main_categories_1" name="filter_form[main_categories][]" value="Електроуреди" /><span>Електроуреди</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_main_categories_2" name="filter_form[main_categories][]" value="Забавления" /><span>Забавления</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_main_categories_3" name="filter_form[main_categories][]" value="Компютри и Периферия" /><span>Компютри и Периферия</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_main_categories_4" name="filter_form[main_categories][]" value="Малки електроуреди" /><span>Малки електроуреди</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_main_categories_5" name="filter_form[main_categories][]" value="Телевизори и Аудио" /><span>Телевизори и Аудио</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_main_categories_6" name="filter_form[main_categories][]" value="Телефони и Таблети" /><span>Телефони и Таблети</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_main_categories_7" name="filter_form[main_categories][]" value="Фото и Видео" /><span>Фото и Видео</span></label></div></div></div></fieldset><fieldset class="filter-box"><header><h3><a  class="required">Тип</a></h3></header><div class="filter-content"><div id="filter_form_types"><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_0" name="filter_form[types][]" value="CD Плейъри" /><span>CD Плейъри</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_1" name="filter_form[types][]" value="DSLR Фотоапарати" /><span>DSLR Фотоапарати</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_2" name="filter_form[types][]" value="DVD плейъри" /><span>DVD плейъри</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_3" name="filter_form[types][]" value="Kутии за съхранение" /><span>Kутии за съхранение</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_4" name="filter_form[types][]" value="MP3 плейъри" /><span>MP3 плейъри</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_5" name="filter_form[types][]" value="Multi Cooker" /><span>Multi Cooker</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_6" name="filter_form[types][]" value="Oхладители за лаптопи" /><span>Oхладители за лаптопи</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_7" name="filter_form[types][]" value="PC колонки" /><span>PC колонки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_8" name="filter_form[types][]" value="PC слушалки" /><span>PC слушалки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_9" name="filter_form[types][]" value="Side by Side хладилници" /><span>Side by Side хладилници</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_10" name="filter_form[types][]" value="Абсорбатори за вграждане" /><span>Абсорбатори за вграждане</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_11" name="filter_form[types][]" value="Аксесоари за мобилни телефони" /><span>Аксесоари за мобилни телефони</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_12" name="filter_form[types][]" value="Антени" /><span>Антени</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_13" name="filter_form[types][]" value="Аудио аксесоари за мобилни телефони" /><span>Аудио аксесоари за мобилни телефони</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_14" name="filter_form[types][]" value="Блендери" /><span>Блендери</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_15" name="filter_form[types][]" value="Бойлери" /><span>Бойлери</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_16" name="filter_form[types][]" value="Вази" /><span>Вази</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_17" name="filter_form[types][]" value="Великден" /><span>Великден</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_18" name="filter_form[types][]" value="Готварски печки" /><span>Готварски печки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_19" name="filter_form[types][]" value="Декоративни съдове" /><span>Декоративни съдове</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_20" name="filter_form[types][]" value="Декорация" /><span>Декорация</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_21" name="filter_form[types][]" value="Домашно кино" /><span>Домашно кино</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_22" name="filter_form[types][]" value="Други аксесоари" /><span>Други аксесоари</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_23" name="filter_form[types][]" value="Дъски за рязане" /><span>Дъски за рязане</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_24" name="filter_form[types][]" value="Ел.Четки за зъби" /><span>Ел.Четки за зъби</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_25" name="filter_form[types][]" value="Електрически кани" /><span>Електрически кани</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_26" name="filter_form[types][]" value="Епилатори" /><span>Епилатори</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_27" name="filter_form[types][]" value="Зарядни за мобилни телефони" /><span>Зарядни за мобилни телефони</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_28" name="filter_form[types][]" value="Игри за PLAYSTATION 3" /><span>Игри за PLAYSTATION 3</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_29" name="filter_form[types][]" value="Игри за PLAYSTATION 4" /><span>Игри за PLAYSTATION 4</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_30" name="filter_form[types][]" value="Камери" /><span>Камери</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_31" name="filter_form[types][]" value="Канички за мляко" /><span>Канички за мляко</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_32" name="filter_form[types][]" value="Кафе и чай" /><span>Кафе и чай</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_33" name="filter_form[types][]" value="Кафемашини" /><span>Кафемашини</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_34" name="filter_form[types][]" value="Клавиатури" /><span>Клавиатури</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_35" name="filter_form[types][]" value="Климатици" /><span>Климатици</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_36" name="filter_form[types][]" value="Компютри" /><span>Компютри</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_37" name="filter_form[types][]" value="Компютърни кабели" /><span>Компютърни кабели</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_38" name="filter_form[types][]" value="Кутии и кошници за хляб" /><span>Кутии и кошници за хляб</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_39" name="filter_form[types][]" value="Лаптопи" /><span>Лаптопи</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_40" name="filter_form[types][]" value="Машинки за подстригване" /><span>Машинки за подстригване</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_41" name="filter_form[types][]" value="Месомелачки" /><span>Месомелачки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_42" name="filter_form[types][]" value="Микро системи" /><span>Микро системи</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_43" name="filter_form[types][]" value="Микровълнови фурни" /><span>Микровълнови фурни</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_44" name="filter_form[types][]" value="Мини системи" /><span>Мини системи</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_45" name="filter_form[types][]" value="Мишки" /><span>Мишки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_46" name="filter_form[types][]" value="Миялни машини" /><span>Миялни машини</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_47" name="filter_form[types][]" value="Мобилни Телефони" /><span>Мобилни Телефони</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_48" name="filter_form[types][]" value="Монитори" /><span>Монитори</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_49" name="filter_form[types][]" value="Отоплителни уреди" /><span>Отоплителни уреди</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_50" name="filter_form[types][]" value="Пасатори" /><span>Пасатори</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_51" name="filter_form[types][]" value="Перални машини" /><span>Перални машини</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_52" name="filter_form[types][]" value="Плата" /><span>Плата</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_53" name="filter_form[types][]" value="Плотове" /><span>Плотове</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_54" name="filter_form[types][]" value="Подложки" /><span>Подложки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_55" name="filter_form[types][]" value="Поставки и подложки" /><span>Поставки и подложки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_56" name="filter_form[types][]" value="Прахосмукачки" /><span>Прахосмукачки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_57" name="filter_form[types][]" value="Преси и маши" /><span>Преси и маши</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_58" name="filter_form[types][]" value="Проектори" /><span>Проектори</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_59" name="filter_form[types][]" value="Радиокасетофони с CD" /><span>Радиокасетофони с CD</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_60" name="filter_form[types][]" value="Радиочасовници" /><span>Радиочасовници</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_61" name="filter_form[types][]" value="Рамки" /><span>Рамки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_62" name="filter_form[types][]" value="Самобръсначки" /><span>Самобръсначки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_63" name="filter_form[types][]" value="Свещници" /><span>Свещници</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_64" name="filter_form[types][]" value="Сервизи" /><span>Сервизи</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_65" name="filter_form[types][]" value="Сешоари" /><span>Сешоари</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_66" name="filter_form[types][]" value="Слушалки" /><span>Слушалки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_67" name="filter_form[types][]" value="Сокоизтисквачки" /><span>Сокоизтисквачки</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_68" name="filter_form[types][]" value="Сосиери" /><span>Сосиери</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_69" name="filter_form[types][]" value="Стойки за стена" /><span>Стойки за стена</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_70" name="filter_form[types][]" value="Сушилни машини" /><span>Сушилни машини</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_71" name="filter_form[types][]" value="Съдомиялни машини" /><span>Съдомиялни машини</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_72" name="filter_form[types][]" value="Таблети" /><span>Таблети</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_73" name="filter_form[types][]" value="Тави" /><span>Тави</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_74" name="filter_form[types][]" value="Телевизори" /><span>Телевизори</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_75" name="filter_form[types][]" value="Фотоапарати - компактни" /><span>Фотоапарати - компактни</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_76" name="filter_form[types][]" value="Фотоепилатори" /><span>Фотоепилатори</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_77" name="filter_form[types][]" value="Фризери и ракли" /><span>Фризери и ракли</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_78" name="filter_form[types][]" value="Фурни за вграждане" /><span>Фурни за вграждане</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_79" name="filter_form[types][]" value="Хладилници" /><span>Хладилници</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_80" name="filter_form[types][]" value="Хлебопекарни" /><span>Хлебопекарни</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_81" name="filter_form[types][]" value="Чанти за лаптопи" /><span>Чанти за лаптопи</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_82" name="filter_form[types][]" value="Чаши" /><span>Чаши</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_83" name="filter_form[types][]" value="Чинии" /><span>Чинии</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_types_84" name="filter_form[types][]" value="Ютии" /><span>Ютии</span></label></div></div></div></fieldset><fieldset class="filter-box"><header><h3><a  class="required">Марки</a></h3></header><div class="filter-content"><div id="filter_form_brands"><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_0" name="filter_form[brands][]" value="ACER" /><span>ACER</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_1" name="filter_form[brands][]" value="AMICA" /><span>AMICA</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_2" name="filter_form[brands][]" value="APPLE" /><span>APPLE</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_3" name="filter_form[brands][]" value="BABYLISS" /><span>BABYLISS</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_4" name="filter_form[brands][]" value="BELKIN" /><span>BELKIN</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_5" name="filter_form[brands][]" value="BLAUPUNKT" /><span>BLAUPUNKT</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_6" name="filter_form[brands][]" value="BOSCH" /><span>BOSCH</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_7" name="filter_form[brands][]" value="BRACKETS" /><span>BRACKETS</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_8" name="filter_form[brands][]" value="BRAUN" /><span>BRAUN</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_9" name="filter_form[brands][]" value="CELLULAR" /><span>CELLULAR</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_10" name="filter_form[brands][]" value="DIVA" /><span>DIVA</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_11" name="filter_form[brands][]" value="ELDOM INVEST" /><span>ELDOM INVEST</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_12" name="filter_form[brands][]" value="ELECTROLUX" /><span>ELECTROLUX</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_13" name="filter_form[brands][]" value="ELIKOR" /><span>ELIKOR</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_14" name="filter_form[brands][]" value="GEMBIRD" /><span>GEMBIRD</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_15" name="filter_form[brands][]" value="GORENJE" /><span>GORENJE</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_16" name="filter_form[brands][]" value="HOTPOINT-ARISTON" /><span>HOTPOINT-ARISTON</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_17" name="filter_form[brands][]" value="HP" /><span>HP</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_18" name="filter_form[brands][]" value="HUAWEI" /><span>HUAWEI</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_19" name="filter_form[brands][]" value="INDESIT" /><span>INDESIT</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_20" name="filter_form[brands][]" value="LENOVO" /><span>LENOVO</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_21" name="filter_form[brands][]" value="LG" /><span>LG</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_22" name="filter_form[brands][]" value="LIEBHERR" /><span>LIEBHERR</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_23" name="filter_form[brands][]" value="LOGITECH" /><span>LOGITECH</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_24" name="filter_form[brands][]" value="MICROSOFT" /><span>MICROSOFT</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_25" name="filter_form[brands][]" value="MIELE" /><span>MIELE</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_26" name="filter_form[brands][]" value="NEO" /><span>NEO</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_27" name="filter_form[brands][]" value="PHILIPS" /><span>PHILIPS</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_28" name="filter_form[brands][]" value="REMINGTON" /><span>REMINGTON</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_29" name="filter_form[brands][]" value="ROWENTA" /><span>ROWENTA</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_30" name="filter_form[brands][]" value="SAMSUNG" /><span>SAMSUNG</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_31" name="filter_form[brands][]" value="SONOROUS" /><span>SONOROUS</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_32" name="filter_form[brands][]" value="SONY" /><span>SONY</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_33" name="filter_form[brands][]" value="SONY PLAYSTATION" /><span>SONY PLAYSTATION</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_34" name="filter_form[brands][]" value="SPEEDLINK" /><span>SPEEDLINK</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_35" name="filter_form[brands][]" value="TARGUS" /><span>TARGUS</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_36" name="filter_form[brands][]" value="TEFAL" /><span>TEFAL</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_37" name="filter_form[brands][]" value="TEFAL ЕЛЕКТРОУРЕДИ" /><span>TEFAL ЕЛЕКТРОУРЕДИ</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_38" name="filter_form[brands][]" value="TESY" /><span>TESY</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_39" name="filter_form[brands][]" value="TRUST" /><span>TRUST</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_40" name="filter_form[brands][]" value="TURBOAIR" /><span>TURBOAIR</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_41" name="filter_form[brands][]" value="VILLEROY&amp;BOCH" /><span>VILLEROY&amp;BOCH</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_42" name="filter_form[brands][]" value="WHIRLPOOL" /><span>WHIRLPOOL</span></label></div><div class="checkbox"><label class=""><input type="checkbox" id="filter_form_brands_43" name="filter_form[brands][]" value="ZANUSSI" /><span>ZANUSSI</span></label></div></div></div></fieldset><fieldset class="filter-box"><header><h3><a  class="required">Цена</a></h3></header><div class="filter-content"><div class="range-widget"><input type="text" id="filter_form_price_min" name="filter_form[price][min]" required="required" placeholder="" class="form-control" value="3" /><input type="text" id="filter_form_price_max" name="filter_form[price][max]" required="required" placeholder="" class="form-control" value="9499" /></div></div></fieldset></div></form>
    </div>	
</aside>
<main class="col-md-13 filter-container">
    <div class="row">
		<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="car-audio/sony-dsx-a200ui-09149223.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09149223/56e27bfa19676.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="car-audio/sony-dsx-a200ui-09149223.html"><span itemprop="name">SONY DSX-A200UI</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09149223</span></small>
            <ul itemprop="description" class="product-description">
                            <li>MP3 АВТОМОБИЛЕН ПЛЕЙЪР</li>
                            <li>4 X 55W ОБЩА ИЗХОДНА ЗВУКОВА МОЩНОСТ</li>
                            <li>ПРЕДЕН USB / АУДИО ВХОД</li>
                            <li>ВЪЗПРОИЗВЕЖДАНЕ НА МУЗИКА </li>
                            <li>ОТ ANDROID™ СМАРТФОН </li>
                            <li>ЦИФРОВ RDS FM ТУНЕР</li>
                            <li>2V ПРЕДИЗХОД ЗА УСИЛВАТЕЛ</li>
                            <li>MEGA BASS</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">99.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">115.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09149223" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="kutiq-za-syhranenie/villeroy-boch-petite-fleur-charm-4477-50011229.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/50011229/560b5127b3ebd.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="kutiq-za-syhranenie/villeroy-boch-petite-fleur-charm-4477-50011229.html"><span itemprop="name">VILLEROY&amp;BOCH PETITE FLEUR CHARM 4477</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">50011229</span></small>
            <ul itemprop="description" class="product-description">
                            <li>Буркан за съхранение малък</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">37.<sup>79</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">62.<sup>99</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="50011229" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="kutiq-za-syhranenie/villeroy-boch-french-garden-charm-4474-50011084.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/50011084/560b511f6aa5d.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="kutiq-za-syhranenie/villeroy-boch-french-garden-charm-4474-50011084.html"><span itemprop="name">VILLEROY&amp;BOCH FRENCH GARDEN CHARM 4474</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">50011084</span></small>
            <ul itemprop="description" class="product-description">
                            <li>Буркан за съхранение среден</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">50.<sup>39</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">83.<sup>99</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="50011084" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="mp3/philips-sa4rga04rf-12-mp3-player-09122976.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09122976/560a7c5b36b74.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="mp3/philips-sa4rga04rf-12-mp3-player-09122976.html"><span itemprop="name">PHILIPS SA4RGA04RF/12 MP3 PLAYER</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09122976</span></small>
            <ul itemprop="description" class="product-description">
                            <li>МОДЕЛ SA4RGA04RF/12</li>
                            <li>MP3 ПЛЕЙЪРЪТ GOGEAR RAGA</li>
                            <li>ВГРАДЕНА ПАМЕТ (RAM): 4 GB </li>
                            <li>ФОРМАТ НА КОМПРЕСИРАНЕ: MP3, WAV, WMA </li>
                            <li>РАЗМЕР НА ЕКРАНА ПО ДИАГОНАЛ (ИНЧОВЕ): 1,1  ИНЧ</li>
                            <li>РАЗДЕЛИТЕЛНА СПОСОБНОСТ: 128 X 64</li>
                            <li>СЪОТНОШЕНИЕ СИГНАЛ/ШУМ: &gt; 84 DB </li>
                            <li>ИЗХОДНА МОЩНОСТ (RMS): 2 X 2,5 MW</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">75.<sup>90</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">85.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09122976" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="mp3/sony-nw-ws413g-09150357.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09150357/57557a8e820ae.png" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="mp3/sony-nw-ws413g-09150357.html"><span itemprop="name">SONY NW-WS413G</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09150357</span></small>
            <ul itemprop="description" class="product-description">
                            <li>ВОДОУСТОЙЧИВОСТ (ДОРИ И В СОЛЕНА ВОДА), ПРАХОУСТОЙЧИВ (IP65/IP68)</li>
                            <li>РАБОТИ ПРИ ТЕМПЕРАТУРИ ОТ -5°C ДО 45°C</li>
                            <li>ДО 12 ЧАСА ЖИВОТ НА БАТЕРИЯТА</li>
                            <li>РАЗМЕР НА ПАМЕТТА: 4 GB, 8 GB</li>
                            <li>USB 2.0</li>
                            <li>БЪРЗО ЗАРЕЖДАНЕ-3 МИНУТИ = 60 МИН.УПОТРЕБА</li>
                            <li>ЦВЯТ:  ЛАЙМ</li>
                            <li>ТЕГЛО: 32 Г.</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">199.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">219.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09150357" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="komputerni-kolonki/trust-20419-stdixxo-led-09149184.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09149184/5702496cdf15c.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="komputerni-kolonki/trust-20419-stdixxo-led-09149184.html"><span itemprop="name">TRUST 20419 STDIXXO LED</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09149184</span></small>
            <ul itemprop="description" class="product-description">
                            <li>ПОРТАТИВНА КОЛОНКА</li>
                            <li>BLUETOOTH ТЕХНОЛОГИЯ, ОБХВАТ ДО 10М</li>
                            <li>LED СВЕТЛИНИ С РАЗЛИЧНИ ЕФЕКТИ</li>
                            <li>МОЩНОСТ 10W</li>
                            <li>ВГРАДЕН МP3 ПЛЕЪР ЗА СЛУШАНЕ НА МУЗИКА ОТ USB mSD КАРТА</li>
                            <li>ПРЕЗАРЕЖДАЩА БАТЕРИЯ, ДО 15 ЧАСА РАБОТА</li>
                            <li>ХЕНДСФРИ РЕЖИМ</li>
                            <li>БУТОНИ ЗА УПРАВЛЕНИЕ НА ЗВУКА И ПЛЕЪРА</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">99.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09149184" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="komputerni-kolonki/philips-bt6000b-12-wifi-speaker-09146508.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09146508/563a3354e1964.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="komputerni-kolonki/philips-bt6000b-12-wifi-speaker-09146508.html"><span itemprop="name">PHILIPS BT6000B/12 WIFI SPEAKER</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09146508</span></small>
            <ul itemprop="description" class="product-description">
                            <li>МОДЕЛ BT6000B/12</li>
                            <li>ИЗХОДНА МОЩНОСТ (RMS) 2 X 6W</li>
                            <li>BLUETOOTH, NFC</li>
                            <li>ОБХВАТ НА BLUETOOTH ПРЯКА ВИДИМОСТ, 10 М (30 ФУТА)</li>
                            <li>АУДИО ВХОД (3.5 ММ), СТЕРЕО ЗВУК 2 X 1.5&quot;</li>
                            <li>ВОДОУСТОЙЧИВОСТ IPX4</li>
                            <li>ВГРАДЕН МИКРОФОН - ЗА КОНФЕРЕНТНИ РАЗГОВОРИ ЧРЕЗ ГОВОРИТЕЛЯ</li>
                            <li>ЗАРЕЖДАНЕ ОТ USB</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">179.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">219.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09146508" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="komputerni-kolonki/logitech-ue-boom-2-orange-984-000559-09151918.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09151918/57c6dd5547217.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="komputerni-kolonki/logitech-ue-boom-2-orange-984-000559-09151918.html"><span itemprop="name">LOGITECH UE BOOM 2 ORANGE 984-000559</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09151918</span></small>
            <ul itemprop="description" class="product-description">
                            <li>ПРЕНОСИМА КОЛОНКА</li>
                            <li>ЦВЯТ ОРАНЖЕВ</li>
                            <li>BLUETOOTH ТЕХНОЛОГИЯ, ОБХВАТ ДО 30М</li>
                            <li>ВОДОУСТОЙЧИВА</li>
                            <li>ДО 15 ЧАСА РАБОТА  С ЕДНО ЗАРЕЖДАНЕ</li>
                            <li>ТЕГЛО - 548 ГР.</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">319.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">349.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09151918" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="komputerni-kolonki/logitech-ue-megaboom-black-984-000438-09151925.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09151925/57c6dee5cc632.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="komputerni-kolonki/logitech-ue-megaboom-black-984-000438-09151925.html"><span itemprop="name">LOGITECH UE MEGABOOM BLACK 984-000438</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09151925</span></small>
            <ul itemprop="description" class="product-description">
                            <li>ПРЕНОСИМА КОЛОНКА</li>
                            <li>ЦВЯТ ЧЕРЕН</li>
                            <li>BLUETOOTH ТЕХНОЛОГИЯ, ОБХВАТ ДО 30М</li>
                            <li>ВОДОУСТОЙЧИВА</li>
                            <li>ДО 20 ЧАСА РАБОТА  С ЕДНО ЗАРЕЖДАНЕ</li>
                            <li>ТЕГЛО - 877 ГР.</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">499.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">549.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09151925" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="komputerni-slushalki/speedlink-sl-8783-bk-coniux-headset-09136422.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09136422/560ac3fb648d5.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="komputerni-slushalki/speedlink-sl-8783-bk-coniux-headset-09136422.html"><span itemprop="name">SPEEDLINK SL-8783-BK CONIUX HEADSET</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09136422</span></small>
            <ul itemprop="description" class="product-description">
                            <li>ГЕЙМЪРСКИ СЛУШАЛКИ С МИКРОФОН</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">39.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09136422" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="absorbatori/elikor-integra-wood-60-white-oak-09147683.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09147683/56715fb1a70ef.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="absorbatori/elikor-integra-wood-60-white-oak-09147683.html"><span itemprop="name">ELIKOR INTEGRA WOOD 60 WHITE/OAK</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09147683</span></small>
            <ul itemprop="description" class="product-description">
                            <li>- АБСОРБАТОР</li>
                            <li>- ТЕЛЕСКОПИЧЕН ТИП</li>
                            <li>- 3 СТЕПЕНИ НА МОЩНОСТ</li>
                            <li>- ОСВЕТЛЕНИЕ</li>
                            <li>- АЛУМИНИЕВ, МИЕЩ СЕ ФИЛТЪР</li>
                            <li>- ВСМУКАТЕЛНА МОЩНОСТ - 301 куб.м./час</li>
                            <li>- МАКСИМАЛНО НИВО НА ШУМ - 63 dB</li>
                            <li>- ПРЕДЕН ПАНЕЛ - ЕСТЕСТВЕН ДЪБ</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">99.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">119.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09147683" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="absorbatori/amica-okc624s-09149829.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09149829/570247ea87312.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="absorbatori/amica-okc624s-09149829.html"><span itemprop="name">AMICA OKC624S</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09149829</span></small>
            <ul itemprop="description" class="product-description">
                            <li>АСПИРАТОР</li>
                            <li>ЕДИН МОТОР</li>
                            <li> 3 СТЕПЕНИ НА МОЩНОСТ</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">199.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">239.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09149829" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="cellular-clearbook-iphone-7-gold-09152315.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09152315/57f2352c4bee0.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="cellular-clearbook-iphone-7-gold-09152315.html"><span itemprop="name">CELLULAR CLEARBOOK IPHONE 7 GOLD</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09152315</span></small>
            <ul itemprop="description" class="product-description">
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">26.<sup>90</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">29.<sup>90</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09152315" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="audio-za-telefoni/sony-srs-x11r-09142400.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09142400/560ad83c7d4e0.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="audio-za-telefoni/sony-srs-x11r-09142400.html"><span itemprop="name">SONY SRS-X11R</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09142400</span></small>
            <ul itemprop="description" class="product-description">
                            <li>Преносим безжичен високоговорител</li>
                            <li>Изходна мощност: 10 W</li>
                            <li>Честотна характеристика: 20 – 20 000 Hz </li>
                            <li>Безжични връзки: Bluetooth/NFC</li>
                            <li>Hands-Free функция</li>
                            <li>Батерия: Вътрешна акумулаторна батерия</li>
                            <li>Живот на батерията: 12 часа</li>
                            <li>Цвят: Червен</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">99.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">129.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09142400" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="blenderi/tefal-bl142a38-09146801.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09146801/563a5b399fe12.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="blenderi/tefal-bl142a38-09146801.html"><span itemprop="name">TEFAL BL142A38</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09146801</span></small>
            <ul itemprop="description" class="product-description">
                            <li>- БЛЕНДЕР</li>
                            <li>- МОЩНОСТ 300 W </li>
                            <li>- 2 СКОРОСТИ</li>
                            <li>- ФУНКЦИЯ ЗА ТРОШЕНЕ НА ЛЕД</li>
                            <li>- 0,6 Л СТЪКЛЕНА КАНА </li>
                            <li>- БРОЙ ОСТРИЕТА: 2 </li>
                            <li>- ПОДВИЖНИ ОСТРИЕТА</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">99.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">125.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09146801" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="boiler/tesy-gcu-0615-m01-rc-09110344.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09110344/560b0914b7c0e.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="boiler/tesy-gcu-0615-m01-rc-09110344.html"><span itemprop="name">TESY GCU-0615 M01 RC</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09110344</span></small>
            <ul itemprop="description" class="product-description">
                            <li>-ОБЕМ: 6 Л</li>
                            <li>-МОНТАЖ: ПОД МИВКА</li>
                            <li>-МОЩНОСТ НАГРЕВАТЕЛЕН ЕЛЕМЕНТ: 1.5 KW</li>
                            <li>-ПОКРИТИЕ:  СТЪКЛОКЕРАМИЧНО</li>
                            <li>-ТЕГЛО :  7.1 КГ</li>
                            <li>-ВЪНШЕН ТЕРМОРЕГУЛАТОР С ИНДИКАЦИЯ ЗА 4 ТЕМПЕРАТУРНИ РЕЖИМА:</li>
                            <li>-ПОЗИЦИЯ &quot;ПРОТИВ ЗАМРЪЗВАНЕ&quot;</li>
                            <li>-ЛЕТЕН РЕЖИМ</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">109.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">119.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09110344" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="boiler/tesy-gcv-80-47-30-c21-tsr-09151677.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09151677/579b1258e5b81.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="boiler/tesy-gcv-80-47-30-c21-tsr-09151677.html"><span itemprop="name">TESY GCV 80 47 30 C21 TSR</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09151677</span></small>
            <ul itemprop="description" class="product-description">
                            <li>-БОЙЛЕР</li>
                            <li>-ВЕРТИКАЛЕН ТИП</li>
                            <li>-ОБЕМ: 82 Л.</li>
                            <li>-ДИАМЕТЪР: 47 СМ</li>
                            <li>-BILIGHT НДИКАТОР</li>
                            <li>-ПРЕКЪСНАТ ТЕРМОСТАТ - ДО 16 % ПО-НИСКИ ЕНЕРГИЙНИ ЗАГУБИ</li>
                            <li>-PISTON ЕФЕКТ - ОСИГУРЯВА ДО 15 % ПОВЕЧЕ ТОПЛА ВОДА</li>
                            <li>--5 ГОДИНИ ПЪЛНА ГАРАНЦИЯ</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">199.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">219.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09151677" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="velikden/villeroy-boch-14-8604-4863-50039649.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/50039649/560b37d48d546.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="velikden/villeroy-boch-14-8604-4863-50039649.html"><span itemprop="name">VILLEROY&amp;BOCH 14-8604-4863</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">50039649</span></small>
            <ul itemprop="description" class="product-description">
                            <li>FARMERS SPRING МЪГ &quot;ПЕТЕЛ И КОКОШКА&#039;&#039;; ЦВЯТ: БЯЛ С ФЛОРАЛНИ МОТИВИ; СЪСТАВ: ПОРЦЕЛАН</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">22.<sup>19</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">36.<sup>99</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="50039649" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="velikden/villeroy-boch-14-8604-2641-50039651.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/50039651/560b37d4b7f91.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="velikden/villeroy-boch-14-8604-2641-50039651.html"><span itemprop="name">VILLEROY&amp;BOCH 14-8604-2641</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">50039651</span></small>
            <ul itemprop="description" class="product-description">
                            <li>FARMERS SPRING &quot;ПЕТЕЛ И КОКОШКА&#039;&#039;ЧИНИЯ ЗА САЛАТА; РАЗМЕР: 23 СМ; ЦВЯТ БЯЛ С ФЛОРАЛНИ МОТИВИ; СЪСТАВ: ПОРЦЕЛАН</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">25.<sup>79</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">42.<sup>99</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="50039651" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
	<div class="col-md-4">
	
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="velikden/villeroy-boch-14-8619-2906-50039637.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/50039637/560b37d3a0bf1.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="velikden/villeroy-boch-14-8619-2906-50039637.html"><span itemprop="name">VILLEROY&amp;BOCH 14-8619-2906</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">50039637</span></small>
            <ul itemprop="description" class="product-description">
                            <li>EASTER DELIGHT ПЛАТО; РАЗМЕР: 29Х22 СМ; ЦВЯТ: БЯЛ С ФЛОРАЛНИ МОТИВИ; СЪСТАВ: ПОРЦЕЛАН</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">37.<sup>79</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">62.<sup>99</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="50039637" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

	</div>
 
<div class="clear filter_load_more" data-from="20" data-size="20"></div>
    </div>
</main>
<hr class="clear">
<script type="text/javascript">
    require(['app', 'jquery'], function(app, $){
        app.facets($('#aside-filter-57f39bc8b5542'), "/promocii|j1_1|j1_2");
    });
</script>
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

<!-- Mirrored from www.technomarket.bg/promocii by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:12:48 GMT -->
</html>
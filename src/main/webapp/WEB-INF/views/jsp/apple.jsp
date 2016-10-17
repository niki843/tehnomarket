<%
response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
response.addHeader("Pragma", "no-cache"); 
response.addDateHeader ("Expires", 0);
%><!doctype html>
<%@page import="com.tm.dbModels.TypeModelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.tm.model.UserManager"%>
<html class="no-js" lang="">
    
<!-- Mirrored from www.technomarket.bg/apple-shop by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:12:26 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
                                            <title>Apple Shop - Електромаркет - онлайн магазин</title>
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
                	<span itemprop="name" class="hidden">Електромаркет</span>
                    <a itemprop="url" href="/Technomarket/index">
                          <img itemprop="logo" src="img/electromarket.png" alt="Technomarket" />
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
    
    

                    
                <section class="tabPanel  section" >
                        	<div class="tabPanel-item-container section-even">
                                        <div class="tabPanel-item" style="">                        
                            <div class="col-md-16 text-center" >

        	    	<figure>
        	<div class="figure-image">
                   <a href="iphone-7.html">
                        <picture>                	
                            <source srcset="img/Banner_iPhone7_1420x500_2609.jpg" media="(max-width: 990px)" />
                            <img src="img/Banner_iPhone7_1420x500_2609.jpg" alt="iPhone 7" title="iPhone 7">
                        </picture>
                   </a>
            </div>
        </figure>        
    </div>


                        <div class="tabPanel-mobile">
                            <span class="title">iPhone 7</span>
                            <span class="subtitle">Поръчай сега!</span>
                        </div>
                    </div>
          			<div class="tabPanel-item" style="display: none;">                        
                            <div class="col-md-16 text-center" >

        	    	<figure>
        				<div class="figure-image">
                               <a href="apple-macbook-all.html">
		                        <picture>                	
		                            <source srcset="img/Baner_AS_BTS_1420x500_0109_MacBook_Air.jpg" media="(max-width: 990px)" />
		                            <img src="img/Baner_AS_BTS_1420x500_0109_MacBook_Air.jpg" alt="На училище с MacBook" title="На училище с MacBook">
		                        </picture>
		                       </a>
                        </div>
        </figure>        
    </div>


                        <div class="tabPanel-mobile">
                            <span class="title">На училище с MacBook</span>
                            <span class="subtitle"></span>
                        </div>
                    </div>
                                        <div class="tabPanel-item" style="display: none;">                        
                            <div class="col-md-16 text-center" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="apple-ipad-air-2-wifi-16gb-all.html">
                        <picture>                	
                            <source srcset="img/Baner_AS_BTS_1420x500_iPad_Air2.jpg" media="(max-width: 990px)" />
                            <img src="img/Baner_AS_BTS_1420x500_iPad_Air2.jpg" alt="НА училище с iPad Air 2" title="НА училище с iPad Air 2">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                        <div class="tabPanel-mobile">
                            <span class="title">НА училище с iPad Air 2</span>
                            <span class="subtitle"></span>
                        </div>
                    </div>
                                        <div class="tabPanel-item" style="display: none;">                        
                            <div class="col-md-16 text-center" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="ipad-mini-4.html">
                        <picture>                	
                            <source srcset="img/Baner_AS_BTS_1420x500_iPad_mini4.jpg" media="(max-width: 990px)" />
                            <img src="img/Baner_AS_BTS_1420x500_iPad_mini4.jpg 2016/Baner_AS_BTS_1420x500_iPad_mini4.jpg" alt="На училище с iPad mini 4" title="На училище с iPad mini 4">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                        <div class="tabPanel-mobile">
                            <span class="title">На училище с iPad mini 4</span>
                            <span class="subtitle"></span>
                        </div>
                    </div>
                                        <div class="tabPanel-item" style="display: none;">                        
                            <div class="col-md-16 text-center" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="macbook-pro.html">
                        <picture>                	
                            <source srcset="img/Baner_AS_BTS_1420x500_MacBook_Pro.jpg" media="(max-width: 990px)" />
                            <img src="img/Baner_AS_BTS_1420x500_MacBook_Pro.jpg" alt="На училище с MacBook Pro" title="На училище с MacBook Pro">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                        <div class="tabPanel-mobile">
                            <span class="title">На училище с MacBook Pro</span>
                            <span class="subtitle"></span>
                        </div>
                    </div>
                                        <div class="tabPanel-item" style="display: none;">                        
                            <div class="col-md-16 text-center" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="iphone-6s.html">
                        <picture>                	
                            <source srcset="img/Baner_AS_BTS_1420x500_iPhone6s.jpg" media="(max-width: 990px)" />
                            <img src="img/Baner_AS_BTS_1420x500_iPhone6s.jpg" alt="На училище с iPhone 6s" title="На училище с iPhone 6s">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                        <div class="tabPanel-mobile">
                            <span class="title">На училище с iPhone 6s</span>
                            <span class="subtitle"></span>
                        </div>
                    </div>
                                    </div>                
                <div class="tabPanel-nav-wrapp"> 
                	<div class="container">                  
                        <ul class="tabPanel-nav">
                                                        <li class="active">
                                <a>
                                    <span class="title">iPhone 7</span>
                                    <span class="subtitle">Поръчай сега!</span>
                                </a>
                            </li>
                                                        <li class="">
                                <a>
                                    <span class="title">На училище с MacBook</span>
                                    <span class="subtitle"></span>
                                </a>
                            </li>
                                                        <li class="">
                                <a>
                                    <span class="title">НА училище с iPad Air 2</span>
                                    <span class="subtitle"></span>
                                </a>
                            </li>
                                                        <li class="">
                                <a>
                                    <span class="title">На училище с iPad mini 4</span>
                                    <span class="subtitle"></span>
                                </a>
                            </li>
                                                        <li class="">
                                <a>
                                    <span class="title">На училище с MacBook Pro</span>
                                    <span class="subtitle"></span>
                                </a>
                            </li>
                                                        <li class="">
                                <a>
                                    <span class="title">На училище с iPhone 6s</span>
                                    <span class="subtitle"></span>
                                </a>
                            </li>
                                                    </ul>
                    </div>
                </div>
                    </section>
            
    

                    
                                	             
        <section class=" section section-odd" >
            <div class="container">
            	                <div class="row">
                                                            <div class="col-full" >

	    	<div class="container-inner">
        	<div class="container-cell">
                <div class="as-tabs">
<ul>
	<li><a href="apple-shop-help.html">Консултация на място</a></li>
	<li><a href="apple-shop-faq.html">Задай въпрос онлайн</a></li>
	<li><a href="apple-shop-events.html">Календар на събитията</a></li>
	<li><a href="apple-shop-info.html">Интересно</a></li>
</ul>
</div>
            </div>
        </div>
    </div>


                                                    </div>
            </div>
        </section>
            
    

                    
                                	                	                	                	                	                	             
        <section class=" section section-even" >
            <div class="container">
            	                <div class="row">
                                                                <div class="col-third" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="apple-ipad.html">
                        <picture>                	
                            <source srcset="img/Baneri_460x300_iPad.jpg" media="(max-width: 990px)" />
                            <img src="img/Baneri_460x300_iPad.jpg" alt="" title="">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                                                <div class="col-third" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="apple-iphone.html">
                        <picture>                	
                            <source srcset="img/Baneri_460x300_iPhone.jpg" media="(max-width: 990px)" />
                            <img src="img/Baneri_460x300_iPhone.jpg" alt="" title="">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                                                <div class="col-third" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="apple-mac.html">
                        <picture>                	
                            <source srcset="img/Baneri_460x300_mac.jpg" media="(max-width: 990px)" />
                            <img src="img/Baneri_460x300_mac.jpg" alt="" title="">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                                                <div class="col-third" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="apple-tv-i-ipod.html">
                        <picture>                	
                            <source srcset="img/Baneri_460x300_iPod_Tv.jpg" media="(max-width: 990px)" />
                            <img src="img/Baneri_460x300_iPod_Tv.jpg" alt="" title="">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                                                <div class="col-third" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="apple-aksesoari-all.html">
                        <picture>                	
                            <source srcset="img/Baneri_460x300_accessories.jpg" media="(max-width: 990px)" />
                            <img src="img/Baneri_460x300_accessories.jpg" alt="" title="">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                                                <div class="col-third" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="apple-beats.html">
                        <picture>                	
                            <source srcset="img/Baneri_460x300_beats.jpg" media="(max-width: 990px)" />
                            <img src="img/Baneri_460x300_beats.jpg" alt="" title="">
                        </picture>
                        </a>
                                                </div>
        </figure>        
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

<!-- Mirrored from www.technomarket.bg/apple-shop by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:12:37 GMT -->
</html>
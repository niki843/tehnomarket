<!doctype html>
<%@page import="com.tm.dbModels.TypeModelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<html class="no-js" lang="">
<!-- Mirrored from www.technomarket.bg/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:08:36 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
                                            <title>Technomarket - Технoмаркет - онлайн магазин</title>
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
        <% Map<String, HashMap<String,ArrayList<String>>> map = TypeModelDAO.getInstance().getModelType();%>
        <% for(String s : map.keySet()){ %>        
        <li class=" dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%= s %></a>
        	<div class="dropdown-menu">
            	<div class="container">
                	<div class="row">
        				<% for(String ss : map.get(s).keySet()){ %>                                            
        					<ul>
        					<% if(map.get(s).get(ss) != null){ %>
							<li class="has-children">
							<%}%>
							<a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%= ss %></a>
        					<% if(map.get(s).get(ss) != null){ %>
								<ul>
							<%}%>
        					<% for(int i = 0; i < map.get(s).get(ss).size();i++){ %>
                                	<li>
                                    	<a href="/Technomarket/getProducts" class="ui-link ui-link-all"><%= map.get(s).get(ss).get(i) %></a>
                                    </li>
            				<%} %> 
            				<% if(map.get(s).get(ss) != null){ %>
								</ul> 
							<%}%>
        					<% if(map.get(s).get(ss) != null){ %>
            					</li>          
							<%}%>                                                                           
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
    
    

                    
	<section class="tabPanel  section" style="background:url(_http_/cdn.technomarket.bg/uploads/BG/slides/Back%20to%20school/bg3.html) no-repeat center; background-size:cover; background-attachment:fixed; color:#000;;">
		<div class="tabPanel-item" style="">                        
			<div class="col-md-16 text-center" >
        	    <figure>
        			<div class="figure-image">
                        <a href="/Technomarket/hotpointPromo">
	                        <picture>                	
	                            <source srcset="img/1440x500-hotpoint2.jpg" media="(max-width: 990px)" />
	                            <img src="img/1440x500-hotpoint2.jpg" alt="HOTPOINT ARISTON" title="HOTPOINT ARISTON">
	                        </picture>
                        </a>
                	</div>
        		</figure>        
    		</div>
    	</div>                
	</section>
            
    

                    
     <section class=" section" style="background:url(_http_/cdn.technomarket.bg/uploads/BG/slides/Back%20to%20school/bg3.html) no-repeat center; background-size:cover; background-attachment:fixed; color:#000;;">
            <div class="container">            	
                    
                <div class="slider-row">            	
                    <div class="slider" data-slick='{"infinite":false,"dots":true,"speed":300,"slidesToShow":5,"slidesToScroll":1,"swipeToSlide":true,"variableWidth":false,"arrows":false,"responsive":[{"breakpoint":1400,"settings":{"slidesToShow":4,"arrows":true,"slidesToScroll":4,"infinite":true}},{"breakpoint":1200,"settings":{"slidesToShow":3,"arrows":true,"slidesToScroll":3,"infinite":true}},{"breakpoint":768,"settings":{"slidesToShow":2,"arrows":true,"slidesToScroll":2}},{"breakpoint":480,"settings":{"slidesToShow":1,"arrows":true,"slidesToScroll":1}}]}'>
                                                                            <div class="col-fourth" >

        	    	<figure>
        	<div class="figure-image">
                        <a href="/Technomarket/brochure">
                        <picture>                	
                            <source srcset="img/promo.jpg" media="(max-width: 990px)" />
                            <img src="img/promo.jpg" alt="Промоционална брошура" title="Промоционална брошура">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                                                            <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                                        <div class="badge-label badge-energy_class energy-class-klas_12" title="badge.energy_class">A+</div>

    
                </div>
        <a itemprop="url" href="side-by-side-hladilnitzi/lg-gsp-325pvcv-09136130.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09136130/560b021d04604.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="side-by-side-hladilnitzi/lg-gsp-325pvcv-09136130.html"><span itemprop="name">LG GSP-325PVCV</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09136130</span></small>
            <ul itemprop="description" class="product-description">
                            <li>- КОМБИНИРАН ХЛАДИЛНИК</li>
                            <li>- ЕНЕРГИЕН КЛАС А+</li>
                            <li>- СИСТЕМА НА ОХЛАЖДАНЕ NO FROST</li>
                            <li>- ДИСПЕНСЕР ЗА СТУДЕНА ВОДА</li>
                            <li>- ЛЕДОГЕНЕРАТОР</li>
                            <li>- МИНИБАР </li>
                            <li>- ПОЛЕЗЕН ОБЕМ ХЛАДИЛНА ЧАСТ - 345 л.</li>
                            <li>- ПОЛЕЗЕН ОБЕМ ФРИЗЕР - 162 л.</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">1990.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">2199.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09136130" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
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
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="absorbatori/turboair-tt-26-st-grx-a-60-09134707.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09134707/560af9ef3c8de.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="absorbatori/turboair-tt-26-st-grx-a-60-09134707.html"><span itemprop="name">TURBOAIR TT-26 ST GRX/A/60</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09134707</span></small>
            <ul itemprop="description" class="product-description">
                            <li>- АБСОРБАТОР ТЕЛЕСКОПИЧЕН ТИП</li>
                            <li>- 2 МИЕЩИ СЕ АЛУМИНИЕВИ ФИЛТЪРА</li>
                            <li>- ПРЕДЕН ПАНЕЛ ОТ НЕРЪЖДАЕМА СТОМАНА</li>
                            <li>- ШИРОЧИНА 60 см.</li>
                            <li>- ВСМУКАТЕЛНА МОЩНОСТ 600 куб. м. на час ( ПО IEC )</li>
                            <li>- ДВЕ ХАЛОГЕННИ ОСВЕТИТЕЛНИ ТЕЛА </li>
                            <li>- 3 СТЕПЕНИ НА РАБОТА</li>
                            <li>- МАКСИМАЛНО НИВО НА ШУМ - 64 dB</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">179.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">229.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09134707" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
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
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="absorbatori/gorenje-bhp-623e12bg-09149632.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09149632/56e6b4dcddf8f.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="absorbatori/gorenje-bhp-623e12bg-09149632.html"><span itemprop="name">GORENJE BHP-623E12BG</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09149632</span></small>
            <ul itemprop="description" class="product-description">
                            <li>- АБСОРБАТОР ЗА ВГРАЖДАНЕ</li>
                            <li>- ЕНЕРГИЕН КЛАС С</li>
                            <li>- НИВО НА ШУМА: 71 DB</li>
                            <li>- МЕХАНИЧНО УПРАВЛЕНИЕ</li>
                            <li>- МАКСИМАЛНА ЦИРКУЛАЦИЯ НА ВЪЗДУХ ПРИ ВРЪЗКА С КОМИН: 435 M3/H</li>
                            <li>- ФИЛТЪР ЗА МАЗНИНИ: ПОЧИСТВАЩ СЕ АЛУМИНИЙ С ПОЛИУРЕТАНОВА ПЯНА</li>
                            <li>- КЛАПАН ЗА НЕДОПУСКАНЕ НА ОБРАТЕН ПОТОК: 150 MM</li>
                            <li>- РАЗМЕРИ (ШХВХД): 60 / 17 / 31.5 СМ</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">269.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">299.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09149632" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="absorbatori/gorenje-whcr-623e15x-09148842.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09148842/56af23c0c9346.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="absorbatori/gorenje-whcr-623e15x-09148842.html"><span itemprop="name">GORENJE WHCR-623E15X</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09148842</span></small>
            <ul itemprop="description" class="product-description">
                            <li>АБСОРБАТОР</li>
                            <li>КОМИНЕН ТИП</li>
                            <li>ЕНЕРГИЕН КЛАС: C</li>
                            <li>МАКСИМАЛНА ЦИРКУЛАЦИЯ ПРИ ВРЪЗКА С КОМИН: 408  M3/H</li>
                            <li>ФИЛТЪР ОТ ПОЛИУРЕТАНОВА ПЯНА</li>
                            <li>LED ОСВЕТЛЕНИЕ</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">269.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">299.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09148842" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="boiler/tesy-gca-0615-m01rc-09110340.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09110340/560b09145c961.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="boiler/tesy-gca-0615-m01rc-09110340.html"><span itemprop="name">TESY GCA-0615 M01RC</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09110340</span></small>
            <ul itemprop="description" class="product-description">
                            <li>-ОБЕМ: 6 Л</li>
                            <li>-МОНТАЖ: НАД  МИВКА</li>
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
                <input type="hidden" value="09110340" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
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
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="boiler/gorenje-tgr80ngc6-09148194.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09148194/57987c4d7ea6b.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="boiler/gorenje-tgr80ngc6-09148194.html"><span itemprop="name">GORENJE TGR80NGC6</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09148194</span></small>
            <ul itemprop="description" class="product-description">
                            <li>БОЙЛЕР</li>
                            <li>ОБЕМ: 76,1 Л</li>
                            <li>ВЪЗМОЖНОСТ ЗА ВЕРТИКАЛЕН МОНТАЖ</li>
                            <li>МОЩНОСТ: 2000 W</li>
                            <li>НАПРЕЖЕНИЕ ПРИ РАБОТА: 6 BAR</li>
                            <li>ВОДОСЪДЪРЖАТЕЛ ОТ ЕМАЙЛИРАНА СТОМАНА</li>
                            <li>ЕЛЕКТРОННО-МЕХАНИЧНО РЕГУЛИРАНЕ НА ТЕМПЕРАТУРАТА</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">169.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09148194" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="boiler/gorenje-tgr-100-n-09122418.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09122418/560b091c0ee6c.png" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="boiler/gorenje-tgr-100-n-09122418.html"><span itemprop="name">GORENJE TGR-100 N</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09122418</span></small>
            <ul itemprop="description" class="product-description">
                            <li>БОЙЛЕР, 100 Л</li>
                            <li>ВЕРТИКАЛЕН МОНТАЖ</li>
                            <li>ЕМАЙЛИРАН ВОДОСЪДАРЖАТЕЛ</li>
                            <li>ТЕРМОРЕГУЛАТОР</li>
                            <li>ВРЕМЕ ЗА ЗАГРЯВАНЕ НА ВОДАТА ОТ 15 ДО 70 С- 3Ч. 55 МИН</li>
                            <li>ПРЕДНАЗНАЧЕН ЗА  БРОЙ ЛИЦА  3-4БР.</li>
                            <li>ТЕГЛО НЕТО/БРУТО/ПЪЛЕН  КГ  - 31/33/131</li>
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
                <input type="hidden" value="09122418" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
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
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="boiler/gorenje-gbf80smc6-09148190.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09148190/56af60d03ef49.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="boiler/gorenje-gbf80smc6-09148190.html"><span itemprop="name">GORENJE GBF80SMC6</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09148190</span></small>
            <ul itemprop="description" class="product-description">
                            <li>БОЙЛЕР</li>
                            <li>ОБЕМ: 76,1 Л</li>
                            <li>ВЪЗМОЖНОСТ ЗА ВЕРТИКАЛЕН МОНТАЖ</li>
                            <li>МОЩНОСТ: 2000 W</li>
                            <li>НАПРЕЖЕНИЕ ПРИ РАБОТА: 6 BAR</li>
                            <li>ИНДИРЕКТЕН (СУХ) НАГРЕВАТЕЛ</li>
                            <li>ВОДОСЪДЪРЖАТЕЛ ОТ ЕМАЙЛИРАНА СТОМАНА</li>
                            <li>ЕЛЕКТРОНЕН ТЕРМОМЕТЪР</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">249.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">279.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09148190" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="pechka/neo-e-525mf-tr-09055874.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09055874/560b08220245e.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="pechka/neo-e-525mf-tr-09055874.html"><span itemprop="name">NEO E-525MF-TR</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09055874</span></small>
            <ul itemprop="description" class="product-description">
                            <li>- ГОТВАРСКА ПЕЧКА</li>
                            <li>- ДВА ГАЗОВИ КОТЛОНА</li>
                            <li>- ДВА ЕЛЕКТРИЧЕСКИ КОТЛОНА</li>
                            <li>- ЕДИН БЪРЗОНАГРЯВАЩ КОТЛОН</li>
                            <li>- ЕЛЕКТРИЧЕСКИ ГРИЛ</li>
                            <li>- ВЕНТИЛАТОРНА МУЛТИФУНКЦИОНАЛНА ФУРНА</li>
                            <li>- ЕЛЕКТРОННА ЗАПАЛКА НА ГАЗТА</li>
                            <li>- ЕНЕРГИЕН КЛАС  -&quot;Б&quot;</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">319.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">369.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09055874" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="pechka/gorenje-e-55106-aw-09138233.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09138233/560b0893efcf5.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="pechka/gorenje-e-55106-aw-09138233.html"><span itemprop="name">GORENJE E-55106 AW</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09138233</span></small>
            <ul itemprop="description" class="product-description">
                            <li>-ЕЛЕКТРИЧЕСКА ПЕЧКА</li>
                            <li>-ЕНЕРГИЕН КЛАС: A</li>
                            <li>-МОЩНОСТ НА ГРИЛА: 1850 W</li>
                            <li>-КОТЛОНИ - 1 БЪРЗОНАГРЯВАЩ + 2 СТАНДАРТНИ + 1 СТАНДАРТЕН С ЛИМИТ НА ТЕМПЕРАТУРАТА</li>
                            <li>-МАКСИМАЛНА ТЕМПЕРАТУРА ВЪВ ФУРНАТА 250 °C</li>
                            <li>-ВЕНТИЛАТОРНА ФУРНА - 48 Л</li>
                            <li>-РЕЖИМ ПИЦА</li>
                            <li>-ЕРГОНОМИЧЕН ДИЗАЙН НА ДРЪЖКАТА И КОПЧЕТАТА</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">449.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">499.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09138233" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="pechka/amica-508ce2-30ehp-w-09148977.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09148977/577e0e627b0a5.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="pechka/amica-508ce2-30ehp-w-09148977.html"><span itemprop="name">AMICA 508CE2.30EHP (W)</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09148977</span></small>
            <ul itemprop="description" class="product-description">
                            <li>КЕРАМИЧНА ГОТВАРСКА ПЕЧКА</li>
                            <li>ЕНЕРГИЕН КЛАС&quot;А&quot;</li>
                            <li>4 КЕРАМИЧНИ КОТЛОНА</li>
                            <li>8 ФУНКЦИИ НА ФУРНАТА</li>
                            <li>1 ТАВА ЗА ПЕЧЕНЕ</li>
                            <li>1 СКАРА</li>
                            <li>РАЗМЕРИ-В/Ш/Д/ 85X50X60</li>
                            <li>ЕЛ.ГРИЛ</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">449.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">499.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09148977" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                </div>
        <a itemprop="url" href="pechka/gorenje-ec-67320bx-09148769.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09148769/56aa2fb9b8992.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="pechka/gorenje-ec-67320bx-09148769.html"><span itemprop="name">GORENJE EC-67320BX</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09148769</span></small>
            <ul itemprop="description" class="product-description">
                            <li>ГОТВАРСКА ПЕЧКА</li>
                            <li>ЕНЕРГИЕН КЛАС А</li>
                            <li>СТЪКЛОКЕРАМИЧЕН ПЛОТ: 4 НАГРЕВАТЕЛНИ ЗОНИ </li>
                            <li>МУЛТИФУНКЦИОНАЛНА ФУРНА 67 Л</li>
                            <li>8 ФУНКЦИИ НА ФУРНАТА</li>
                            <li>ИНДИКАТОР ЗА ОСТАТЪЧНА ТОПЛИНА</li>
                            <li>ТАЙМЕР СЪС СЕНЗОРНО УПРАВЛЕНИЕ</li>
                            <li>ГОТВЕНЕ НА ПОВЕЧЕ НИВА ЕДНОВРЕМЕННО</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">829.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">899.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09148769" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                                        <div class="badge-label badge-blue badge-free_install" title="Безплатен монтаж"><i class="icon-tools"></i> <em>+<br>монтаж</em></div>

    
                </div>
        <a itemprop="url" href="invertorni-klimatitzi/lg-e09em-nsw-e09em-ua3-09141368.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09141368/560af54045d26.png" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="invertorni-klimatitzi/lg-e09em-nsw-e09em-ua3-09141368.html"><span itemprop="name">LG E09EM.NSW/E09EM.UA3</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09141368</span></small>
            <ul itemprop="description" class="product-description">
                            <li>КЛИМАТИЧНА ИНВЕРТОРНА СИСТЕМА</li>
                            <li>ОТДАВАНА МОЩНОСТ</li>
                            <li>ОХЛАЖДАНЕ - 2.5 (0.89-3.7) KW</li>
                            <li>ОТОПЛЕНИЕ - 3.2 (0.89-4.1) KW</li>
                            <li>КОНСУМИРАНА МОЩНОСТ:</li>
                            <li>ОХЛАЖДАНЕ - 0.73 KW</li>
                            <li>ОТОПЛЕНИЕ - 0.95 KW</li>
                            <li>SEER -5.7 /EER - 3.42 / SCOP - 3.8 / COP - 3.37</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">879.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09141368" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                                        <div class="badge-label badge-blue badge-free_install" title="Безплатен монтаж"><i class="icon-tools"></i> <em>+<br>монтаж</em></div>

    
                </div>
        <a itemprop="url" href="invertorni-klimatitzi/lg-e09el-nsh-e09el-ua3-09134577.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09134577/560af52e32f4b.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="invertorni-klimatitzi/lg-e09el-nsh-e09el-ua3-09134577.html"><span itemprop="name">LG E09EL.NSH/E09EL.UA3</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09134577</span></small>
            <ul itemprop="description" class="product-description">
                            <li>КЛИМАТИЧНА ИНВЕРТОРНА СИСТЕМА</li>
                            <li>ОТДАВАНА МОЩНОСТ</li>
                            <li>ОХЛАЖДАНЕ - 2.5 (0.89-3.7) KW</li>
                            <li>ОТОПЛЕНИЕ - 3.2 (0.89-4.1) KW</li>
                            <li>КОНСУМИРАНА МОЩНОСТ:</li>
                            <li>ОХЛАЖДАНЕ - 0.69 KW</li>
                            <li>ОТОПЛЕНИЕ - 0.86 KW</li>
                            <li>SEER -5.9 /EER - 3.62 / SCOP - 3.8 / COP - 3.72</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">879.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">900.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09134577" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                                        <div class="badge-label badge-blue badge-free_install" title="Безплатен монтаж"><i class="icon-tools"></i> <em>+<br>монтаж</em></div>

    
                </div>
        <a itemprop="url" href="invertorni-klimatitzi/lg-e12em-nsh-e12em-ua3-09141369.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09141369/575bc0052973c.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="invertorni-klimatitzi/lg-e12em-nsh-e12em-ua3-09141369.html"><span itemprop="name">LG E12EM.NSH/E12EM.UA3</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09141369</span></small>
            <ul itemprop="description" class="product-description">
                            <li>КЛИМАТИЧНА ИНВЕРТОРНА СИСТЕМА</li>
                            <li>ОТДАВАНА МОЩНОСТ</li>
                            <li>ОХЛАЖДАНЕ - 3.5 (0.9-4.04) KW</li>
                            <li>ОТОПЛЕНИЕ - 3.8 (0.89-5.1) KW</li>
                            <li>КОНСУМИРАНА МОЩНОСТ:</li>
                            <li>ОХЛАЖДАНЕ - 1.12 KW</li>
                            <li>ОТОПЛЕНИЕ - 1.04 KW</li>
                            <li>SEER -5.8 /EER - 3.13 / SCOP - 3.8 / COP - 3.65</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">979.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09141369" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>
    <div class="col-md-3">
        
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        	<div class="badges">
                                        <div class="badge-label badge-red badge-promo" title="Промо цена">Промо цена</div>

    
                                        <div class="badge-label badge-blue badge-free_install" title="Безплатен монтаж"><i class="icon-tools"></i> <em>+<br>монтаж</em></div>

    
                </div>
        <a itemprop="url" href="invertorni-klimatitzi/lg-d09rn-nsj-d09rn-ul2-09149785.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09149785/573d5f591a9c8.jpg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="invertorni-klimatitzi/lg-d09rn-nsj-d09rn-ul2-09149785.html"><span itemprop="name">LG D09RN.NSJ/D09RN.UL2</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09149785</span></small>
            <ul itemprop="description" class="product-description">
                            <li>ИНВЕРТОРЕН КЛИМАТИК СПЛИТ СИСТЕМА </li>
                            <li>ОТДАВАНА МОЩНОСТ</li>
                            <li> ОХЛАЖДАНЕ - 2.5 (0.89-3.7) KW </li>
                            <li>ОТОПЛЕНИЕ - 3.2 (0.89-5.0) KW </li>
                            <li>КОНСУМИРАНА МОЩНОСТ: </li>
                            <li>ОХЛАЖДАНЕ - 0.55 KW </li>
                            <li>ОТОПЛЕНИЕ - 0.7 KW </li>
                            <li>SEER -7.7 /EER - 4.5 / SCOP - 4.6 / COP - 4.5 </li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">1299.<sup>00</sup>  <small>лв.</small></span>
                                <span itemprop="price" class="old">1330.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09149785" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->

    </div>


                                                            
                    </div>
                </div>
            </div>
        </section>
            
    

                    
                                	             
        <section class=" section section-odd" style="background:url(_http_/cdn.technomarket.bg/uploads/BG/slides/Back%20to%20school/bg3.html) no-repeat center; background-size:cover; background-attachment:fixed; color:#000;;">
            <div class="container">
            	                <div class="row">
                                                            <div class="col-md-16 text-center" >

	    	<div class="container-inner">
        	<div class="container-cell">
                <p><a href="/Technomarket/warranty"><img alt="" src="img/warranty.jpg" /></a></p>
            </div>
        </div>
    </div>


                                                    </div>
            </div>
        </section>
            
    

                    
                                                                                                                            <section class=" section" style="background:url(_http_/cdn.technomarket.bg/uploads/BG/slides/Back%20to%20school/bg3.html) no-repeat center; background-size:cover; background-attachment:fixed; color:#000;;">
            <div class="container">            	
                    
                <div class="slider-row">            	
                    <div class="slider" data-slick='{"infinite":false,"dots":true,"speed":300,"slidesToShow":3,"slidesToScroll":1,"swipeToSlide":true,"variableWidth":false,"arrows":false,"responsive":[{"breakpoint":1400,"settings":{"slidesToShow":3,"arrows":true,"slidesToScroll":4,"infinite":true}},{"breakpoint":1200,"settings":{"slidesToShow":3,"arrows":true,"slidesToScroll":3,"infinite":true}},{"breakpoint":768,"settings":{"slidesToShow":2,"arrows":true,"slidesToScroll":2}},{"breakpoint":480,"settings":{"slidesToShow":1,"arrows":true,"slidesToScroll":1}}]}'>
                                                                            <div class="col-third" >

        	    	<figure>
        	<div class="figure-image">
                        <a href="/Technomarket/lgWarranty">
	                        <picture>                	
	                            <source srcset="img/lg-5-460x300.jpg" media="(max-width: 990px)" />
	                            <img src="img/lg-5-460x300.jpg" alt="" title="">
	                        </picture>
                        </a>
            </div>
        </figure>        
    </div>


                                                        <div class="col-third" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="/Technomarket/logitechPromo">
                        <picture>                	
                            <source srcset="img/logitech.jpg" media="(max-width: 990px)" />
                            <img src="img/logitech.jpg" alt="" title="">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>
                                             
                    </div>
                </div>
            </div>
        </section>
            
    

                    
                                	             
        <section class=" section section-odd" style="background:url(_http_/cdn.technomarket.bg/uploads/BG/slides/Back%20to%20school/bg3.html) no-repeat center; background-size:cover; background-attachment:fixed; color:#000;;">
            <div class="container">
            	                <div class="row">
                                                            <div class="col-md-16 text-center" >

	    	<div class="container-inner">
        	<div class="container-cell">
                <p><a href="/Technomarket/OnlineToShop"><img alt="" src="img/banner_takefroms.jpg" /></a></p>
            </div>
        </div>
    </div>


                                                    </div>
            </div>
        </section>
            
    

                    
                                                                                                                            <section class=" section" style="background:url(_http_/cdn.technomarket.bg/uploads/BG/slides/Back%20to%20school/bg3.html) no-repeat center; background-size:cover; background-attachment:fixed; color:#000;;">
            <div class="container">            	
                    
                <div class="slider-row">            	
                    <div class="slider" data-slick='{"infinite":false,"dots":true,"speed":300,"slidesToShow":3,"slidesToScroll":1,"swipeToSlide":true,"variableWidth":false,"arrows":false,"responsive":[{"breakpoint":1400,"settings":{"slidesToShow":3,"arrows":true,"slidesToScroll":4,"infinite":true}},{"breakpoint":1200,"settings":{"slidesToShow":3,"arrows":true,"slidesToScroll":3,"infinite":true}},{"breakpoint":768,"settings":{"slidesToShow":2,"arrows":true,"slidesToScroll":2}},{"breakpoint":480,"settings":{"slidesToShow":1,"arrows":true,"slidesToScroll":1}}]}'>
                                                                            <div class="col-third" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="/Technomarket/canonCashBack">
                        <picture>                	
                            <source srcset="img/TM_ALEX_460x300.jpg" media="(max-width: 990px)" />
                            <img src="img/TM_ALEX_460x300.jpg" alt="" title="">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                                                        <div class="col-third text-center" >

        	    	<figure>
        	<div class="figure-image">
                        <a href="/Technomarket/vaucher">
	                        <picture>                	
	                            <source srcset="img/vauchers_460x300.jpg" media="(max-width: 990px)" />
	                            <img src="img/vauchers_460x300.jpg" alt="" title="">
	                        </picture>
                        </a>
            </div>
        </figure>        
    </div>                                               
                    </div>
                </div>
            </div>
        </section>
            
    

                    
                                	             
        <section class=" section section-odd" style="background:url(_http_/cdn.technomarket.bg/uploads/BG/slides/Back%20to%20school/bg3.html) no-repeat center; background-size:cover; background-attachment:fixed; color:#000;;">
            <div class="container">
            	                <div class="row">
                                                            <div class="col-md-16 text-center" >

	    	<div class="container-inner">
        	<div class="container-cell">
                <p><a href="/Technomarket/home"><img alt="" src="img/athome.jpg" /></a></p>
            </div>
        </div>
    </div>


                                                    </div>
            </div>
        </section>                        	             
        <section class=" section section-odd" style="background:url(_http_/cdn.technomarket.bg/uploads/BG/slides/Back%20to%20school/bg3.html) no-repeat center; background-size:cover; background-attachment:fixed; color:#000;;">
            <div class="container">
            	                <div class="row">
                                                                <div class="col-md-16 text-center" >

        	    	<figure>
        	<div class="figure-image">
                                                            <a href="/Technomarket/lgClima">
                        <picture>                	
                            <source srcset="img/1420x3005godini-garanciq-3.png" media="(max-width: 990px)" />
                            <img src="img/1420x3005godini-garanciq-3.png" alt="" title="">
                        </picture>
                        </a>
                                                </div>
        </figure>        
    </div>


                                                    </div>
            </div>
        </section>
            
    

                    
                                	             
        <section class=" section section-odd" style="background:url(_http_/cdn.technomarket.bg/uploads/BG/slides/Back%20to%20school/bg3.html) no-repeat center; background-size:cover; background-attachment:fixed; color:#000;;">
            <div class="container">
            	                <div class="row">
                                                            <div class="col-md-16 text-center" >

	    	<div class="container-inner">
        	<div class="container-cell">
                <h2 class="as-heading-dark text-center"><a href="/Technomarket/iphone7">Той е 7. iPhone 7.</a></h2>
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

<!-- Mirrored from www.technomarket.bg/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:12:20 GMT -->
</html>
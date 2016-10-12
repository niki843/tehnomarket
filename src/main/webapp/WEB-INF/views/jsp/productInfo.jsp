<!doctype html>
<%@page import="com.tm.dbModels.TypeModelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<html class="no-js" lang="">

<!-- Mirrored from www.technomarket.bg/televizor by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:13:16 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta property="og:type" content="website" />
<meta property="og:title"
	content="Телевизори - Технoмаркет - онлайн магазин" />
<meta property="og:image"
	content="http://cdn.technomarket.bg/bundles/taumediatechnomarketcms/img/product-thumb.svg" />
<title>Продукти - Технoмаркет - онлайн магазин</title>
<meta name="Description"
	CONTENT="Най-добрите цени на телевизори! Купи бързо и лесно онлайн или от магазин на Техномаркет. LG, SAMSUNG, PHILIPS, SONY, TOSHIBA и много други на страхотни цени. Купи бързо и лесно онлайн с безплатна доставака!">
<meta name="google-site-verification"
	content="4GUfQ24-SB-8p2dO6_vCnz-rDTs7NGJm_rr2pfXBAl4" />
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="img/favicon.ico">
<link rel="stylesheet" href="css/cdn.technomarket.bg/css/f38a55a.css" />
<script type="text/javascript"
	src="css/cdn.technomarket.bg/assets/vendor/requirejs/require.js"></script>

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
				<a href="#" class="navbar-toggle collapsed" data-toggle="collapse"
					data-target="#extranav" aria-expanded="false"
					aria-controls="extranav"><span class="icon-dot"></span> <span
					class="icon-dot"></span> <span class="icon-dot"></span></a>
				<div itemscope itemtype="http://schema.org/Organization"
					id="extranav" class="navbar-collapse collapse">
					<link itemprop="url" href="/Technomarket/index">
					<ul itemprop='contactPoint' itemscope
						itemtype='http://schema.org/ContactPoint'
						class="nav navbar-nav nav-left">
						<meta itemprop="contactType" content="Customer service">
						<li><a href="/Technomarket/contacts"><strong><i
									class="icon-phone"></i> <span itemprop='telephone'
									class="hidden">+359-02-9421-103</span> 0700 10 800</strong></a></li>
						<li class="nav-at-home"><a href="/Technomarket/home"> <img
								src="img/home.svg" alt="@Home" class="hidden-xs" /> <span
								class="visible-xs">@Home</span>
						</a></li>
						<li class="nav-apple-shop"><a href="/Technomarket/apple">
								<img src="img/apple.jpg" alt="Apple Shop" class="hidden-xs" />
								<span class="visible-xs">Apple Shop</span>
						</a></li>
						<li class="nav-promo"><a href="/Technomarket/sales"><i
								class="icon-gift"></i> Промоции</a></li>
						<li><a href="/Technomarket/stores"><i
								class="icon-location"></i> Магазини</a></li>
					</ul>
					<ul itemscope itemtype="http://schema.org/Organization"
						class="nav navbar-nav nav-right">
						<link itemprop="url" href="/Technomarket/index">
						<li class="icon-social"><a itemprop="sameAs"
							href="https://www.facebook.com/technomarket/" target="_blank"><i
								class="icon-facebook"></i> <span class="visible-xs">Facebook</span></a></li>
						<li class="icon-social"><a itemprop="sameAs"
							href="https://plus.google.com/+technomarket/" target="_blank"><i
								class="icon-google"></i> <span class="visible-xs">Google
									+</span></a></li>
						<li class="icon-social"><a itemprop="sameAs"
							href="https://twitter.com/technomarketbg/" target="_blank"><i
								class="icon-twitter"></i> <span class="visible-xs">Twitter</span></a></li>
						<li class="icon-social"><a itemprop="sameAs"
							href="https://www.youtube.com/technomarket/" target="_blank"><i
								class="icon-youtube"></i> <span class="visible-xs">You
									Tube</span></a></li>
						<li class="icon-social"><a itemprop="sameAs"
							href="https://www.linkedin.com/company/technomarket/"
							target="_blank"><i class="icon-linkedin"></i> <span
								class="visible-xs">Linked In</span></a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /.header-top -->
		<div class="heading">
			<div class="container">
				<div class="row">
					<div class="logo" itemscope
						itemtype="http://schema.org/Organization">
						<span itemprop="name" class="hidden">Техномаркет</span> <a
							itemprop="url" href="/Technomarket/index"> <img
							itemprop="logo" src="img/tehnomarket.png" alt="Technomarket" />
						</a>
					</div>
					<!-- /.logo -->
					<div class="heading-collapse">
						<div itemscope itemtype="http://schema.org/WebSite" class="search">
							<link itemprop="url" href="/Technomarket/index" />
							<form itemprop="potentialAction" itemscope
								itemtype="http://schema.org/SearchAction"
								action="http://www.technomarket.bg/search/" method="get"
								class="input-group">
								<meta itemprop="target" content="http://www.technomarket.bg/search/?query={query}" />
								<input itemprop="query-input" type="text" name="query"
									placeholder="Търси..." class="form-control"> <span
									class="search-bar"></span> <span class="input-group-btn">
									<button class="btn btn-search" type="submit">
										<i class="icon-search"></i>
									</button>
								</span>
							</form>
							<!-- /.input-group -->
						</div>
						<!-- /.search -->
						<div class="user-bar">
							<div class="user-account dropdown">
								<button class="btn btn-tm dropdown-toggle" type="button"
									id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="true">
									<i class="icon-profile"></i> <span class="hidden-xs"> <c:choose>
											<c:when test="${ name == null }">
																		Вход
																	</c:when>
											<c:otherwise>
												<c:out value="${ name }" />
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
													<li><a href="/Technomarket/addProduct">Добави
															продук</a></li>
													<li><a href="/Technomarket/addSale">Добави
															промоция за продукт</a></li>
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
							</div>
							<!-- /.user-account -->
							<div class="basket">
								<a href="/Technomarket/cart" class="btn btn-tm"> <i
									class="icon-basket"></i> -
								</a>
							</div>
							<!-- /.basket -->
						</div>
						<!-- /.user-bar -->
					</div>
					<!-- /.heading-collapse -->
				</div>
			</div>
		</div>
		<!-- /.heading -->
		<nav class="navbar">
			<a href="#" class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#navbar" aria-expanded="false" aria-controls="navbar"><span
				class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="hidden-xs">Категории</span></a>
			<div class="container">
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav nav-main">
						<% Map<String, HashMap<String,ArrayList<String>>> map = TypeModelDAO.getInstance().getModelType(); %>
						<%for(String s : map.keySet()){ %>
						<li class=" dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false"><%= s %></a>
							<div class="dropdown-menu">
								<div class="container">
									<div class="row">
										<%for(String ss : map.get(s).keySet()){ %>
										<ul>
											<% if(map.get(s).get(ss) != null){ %>
											<li class="has-children">
												<%} %> <a class="dropdown-toggle" data-toggle="dropdown"
												role="button" aria-haspopup="true" aria-expanded="false"><%= ss %></a>
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
												</ul> <%} %> <% if(map.get(s).get(ss) != null){ %>
											</li>
											<%} %>
										</ul>
										<%} %>
									</div>
								</div>
							</div></li>
						<%} %>
					</ul>
				</div>
			</div>
		</nav>
		<!-- /.navbar -->
</header>
                                        
            <div class="">
    
    

                    <section class="">
            <div class="container">            	
                    
                	    
    		<div class="row">
            <figure itemscope itemtype="http://schema.org/Product" class="product product-details clearfix">
                <div class="product-thumb photoswipe">
                    <div class="product-heading">
                                                <div class="product-category"><a href="../laptopi.html"><i class="icon-arrow-long-left"></i> Лаптопи</a></div>
                                                <h1><a href="acer-aspire-e5-571g-35e2-09141527.html"><span itemprop="name">${ productP.getName() }</span></a></h1>
                        <div class="product-model">Арт.№: <span itemprop="productID">${ productP.getArt_number() }</span>, EAN: <span itemprop="gtin13">${ productP.getEan() }</span></div>
                    </div>                                
                    <a href="#" class="product-image"  data-photoswipe="//cdn.technomarket.bg/uploads/library/product/09141527/563a2030654cf.png">
                    	                        <img itemprop="image" src="${ productP.getRealtivePath() }" alt="Technomarket" />
                    	                    </a>  
                    <div class="product-gallery">
                                        </div><!--/.product-gallery-->

                                    </div><!--.product-thumb-->
                <figcaption>
                    <div class="product-name">    
                                                 
                        
                        <div class="product-share">                                      
                            <ul>
                                <li>
                                                                            <a href="../login.html" class="favorites favorites-add"><i class="icon-heart"></i> Любими</a>
                                                                    </li>
                                <li>
                                                                                                                <a href="acer-aspire-e5-571g-35e2-09141527.html" class="compare compare-add"><i class="icon-compare"></i> Сравни</a>
                                                                    </li>                       	
                            </ul>
                            
                                                        
                            
                        </div><!--/.product-share-->


                                                                                                <ul itemprop="description" class="product-description moreLines">
                                                            <li>ПРЕНОСИМ КОМПЮТЪР </li>
                                                            <li>DISPLAY 15.6&quot; (39.6 СМ) LED-BACKLIT HD 1366X768 </li>
                                                            <li>CPU INTEL CORE I3-4005U 3M CACHE, 1.70 GHZ</li>
                                                            <li>RAM 4 GB DDR3 </li>
                                                            <li>HDD 1000 GB </li>
                                                            <li>VIDEO NVIDIA GEFORCE 820 2 GB</li>
                                                            <li>DVD RW SUPER MULTI DL </li>
                                                        <li class="view_more_trigger"><a>виж повече</a></li>
                                                            <li class="view_more_item">WIRELESS 802.11B/G/N, BLUETOOTH 4.0 </li>
                                                            <li class="view_more_item">1.3 MPXL WEBCAM, 2-IN-1 CARDREADER </li>
                                                            <li class="view_more_item">2X USB2.0, 1X USB3.0, HDMI, VGA </li>
                                                            <li class="view_more_item">OS WINDOWS 8.1 64 BITS</li>
                                                            <li class="view_more_item">ТЕГЛО 2.35КГ</li>
                                                     </ul>
                                                <div class="fb-share-button" data-href="http://www.technomarket.bg/laptopi/acer-aspire-e5-571g-35e2-09141527" data-layout="button"></div>
                        <div class="g-plus" data-width="150" data-action="share" data-href="http://www.technomarket.bg/laptopi/acer-aspire-e5-571g-35e2-09141527"></div>
                    </div>
                                        <div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="product-price">
                    	<meta itemprop="priceCurrency" content="BGN" />
                    	<div class="price-row price-online clearfix">
                        	<div class="price-title">Купи сега</div>
                                                        <var class="price">

                                <span itemprop="price" class="new">999.<sup>00</sup>  <small>лв.</small></span>
                            </var>

                        </div>      
                                                
                        <form action="/Technomarket/addProductInCart">

                                                        <div class="extra-warranty">
                                                                    Стандартна гаранция - 24 месеца
                            	                            </div>    
                                                                                    <div class="buy-now">
                                <input type="hidden" value="09141527" name="product">
                                                                <button type="submit" class="btn btn-tm">
                                    <i class="icon-basket"></i> Купи онлайн
                                </button>
                                                            </div>
                        </form>                     
                        
                        <ul class="extra">
                                                                                    <li><a href="#product-nav-tab-3" id="show_credits_link">Купи на изплащане</a></li>
                                                                                    <li>Безплатна доставка</li>
                                                                                    <li>В наличност</li>
                                                        
                        </ul>
                        <div class="partials-info">
                                                                                </div><!--/.partials-->                         
                    </div><!--.product-price-->                   
                                    </figcaption>
                <div class="partials">
                    <div class="col-md-12">
                                                <div class="row">
                                                    </div>
                    </div>
                </div>
            </figure><!--.product-details-->          
        </div>




        
       
    <div class="row row-brp">            
        <div class="col-md-12">                             
            <div class="tm-tabs">
                                <ul class="nav nav-tabs">
                                        
                    <li class="active">
                        <a aria-expanded="true" aria-controls="product-tab1" data-toggle="tab" role="tab" id="product-nav-tab-1" href="#product-tab1">
                            Спецификации
                        </a>
                    </li>
                                                                                    <li class="kiosk-hidden ">
                        <a aria-expanded="true" aria-controls="product-tab2" data-toggle="tab" role="tab" id="product-nav-tab-2" href="#product-tab2">
                            Наличност по магазини
                        </a>
                    </li>
                                                                                    <li class="">
                        <a aria-expanded="true" aria-controls="product-tab3" data-toggle="tab" role="tab" id="product-nav-tab-3" href="#product-tab3">
                            Купи на кредит
                        </a>
                    </li>
                                                                                    <li class="">
                        <a aria-expanded="true" aria-controls="product-tab4" data-toggle="tab" role="tab" id="product-nav-tab-4" href="#product-tab4">
                            Аксесоари
                        </a>
                    </li>
                                                                                    
                </ul>        
            </div><!--/.tm-tabs-->
            <div class="tab-content">  
                  
                          
                <div id="product-tab1" class="tab-pane fade active in" role="tabpanel">
                    <section class="product-specifications">                      
                        <table class="table tm-table">
                            <tbody>
                                        <tr>
        <th><i class="icon-arrow-right"></i>Размер на екрана, inch:</th>
        <td>
                            15.6
                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Дисплей, резолюция:</th>
        <td>
                            1366x768                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Памет (RAM):</th>
        <td>
                            4GB                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Процесор, серия:</th>
        <td>
                            Intel Core i3                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Хардиск (GB):</th>
        <td>
                            1000
                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Хардиск, тип:</th>
        <td>
                            SATA                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Видео карта (VGA Chip):</th>
        <td>
                            NVIDIA                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Видео памет, GB:</th>
        <td>
                            2 GB                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Операционна система:</th>
        <td>
                            Windows                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Тегло (кг):</th>
        <td>
                            2.35
                    </td>
    </tr>
        <tr>
        <th><i class="icon-arrow-right"></i>Оптични устройства:</th>
        <td>
                                                <div class="specs-value" title="Да"><i class="icon-check"></i> </div>
                                    </td>
    </tr>
    
                            </tbody>
                        </table>
                    </section>                         
                </div>
                                                                    <div id="product-tab2" class="kiosk-hidden tab-pane fade" role="tabpanel">
                    <section class="product-stock">               
                        <div class="stock-legend">
	<ul>
   		<li class="stock-max">
        	<i class="icon-check"></i>
            Продуктът е наличен 
        </li>
   		<li class="stock-mid">
        	<i class="icon-check"></i>
            Ограничена наличност 
        </li>
   		<li class="stock-min">
        	<i class="icon-check"></i>
            Побързай, може да свърши 
        </li>                
    </ul>
</div>
<hr>
<ul>
            	           	            <li class="stock-mid">    	
    	<a href="../sofiq/tehnomarket-sofiq-carigradsko-shose.html" title="Ограничена наличност">        
    	<i class="icon-check"></i>
        ТЕХНОМАРКЕТ СОФИЯ ЦАРИГРАДСКО ШОСЕ
        </a>
	</li>
        	           	            <li class="stock-min">    	
    	<a href="../plovdiv/tehnomarket-plovdiv-2.html" title="Побързай, може да свърши">        
    	<i class="icon-check"></i>
        ТЕХНОМАРКЕТ ПЛОВДИВ 2
        </a>
	</li>
        	           	            <li class="stock-min">    	
    	<a href="../plovdiv/tehnomarket-plovdiv.html" title="Побързай, може да свърши">        
    	<i class="icon-check"></i>
        ТЕХНОМАРКЕТ ПЛОВДИВ
        </a>
	</li>
        	           	            <li class="stock-min">    	
    	<a href="../stara-zagora/tehnomarket-stara-zagora.html" title="Побързай, може да свърши">        
    	<i class="icon-check"></i>
        ТЕХНОМАРКЕТ СТАРА ЗАГОРА
        </a>
	</li>
        	           	            <li class="stock-min">    	
    	<a href="../sofiq/tehnomarket-retejl-park-sredec.html" title="Побързай, може да свърши">        
    	<i class="icon-check"></i>
        ТЕХНОМАРКЕТ РЕТЕЙЛ ПАРК СРЕДЕЦ
        </a>
	</li>
        	           	            <li class="stock-min">    	
    	<a href="../goce-delchev/tehnomarket-goce-delchev.html" title="Побързай, може да свърши">        
    	<i class="icon-check"></i>
        ТЕХНОМАРКЕТ ГОЦЕ ДЕЛЧЕВ
        </a>
	</li>
        	           	            <li class="stock-min">    	
    	<a href="../sofiq/tehnomarket-sofiq-vladimir-vazov.html" title="Побързай, може да свърши">        
    	<i class="icon-check"></i>
        ТЕХНОМАРКЕТ СОФИЯ ВЛАДИМИР ВАЗОВ
        </a>
	</li>
        	           	            <li class="stock-min">    	
    	<a href="../sofiq/tehnomarket-sofiq-mall-of-sofia.html" title="Побързай, може да свърши">        
    	<i class="icon-check"></i>
        ТЕХНОМАРКЕТ СОФИЯ MALL OF SOFIA
        </a>
	</li>
        	           	            <li class="stock-min">    	
    	<a href="../kyrdzhali/tehnomarket-kyrdzhali.html" title="Побързай, може да свърши">        
    	<i class="icon-check"></i>
        ТЕХНОМАРКЕТ КЪРДЖАЛИ
        </a>
	</li>
    </ul>


		                                                                    
                    </section>
                </div>
                                                                    <div id="product-tab3" class="tab-pane fade" role="tabpanel">
                    <section class="product-credit">                        
                                    <div class="row row-brp">
        <div class="tm-tabs col-md-4" id="credit_tabs">
            <ul class="nav nav-stacked">
                                <li>
                    <a aria-expanded="true" data-uri="/credit/buy/tbicredit/09141527" aria-controls="tab1" data-toggle="tab" role="tab" id="nav-tab-1" href="#tab1">
                                                <img src="http://cdn.technomarket.bg/images/de9f1ba.png" alt="TBI Bank" />
                                
                    </a>
                </li>
                                                                <li>
                    <a aria-expanded="true" data-uri="/credit/buy/unicredit/09141527" aria-controls="tab2" data-toggle="tab" role="tab" id="nav-tab-2" href="#tab2">
                                                <img src="http://cdn.technomarket.bg/images/d0755a0.png" alt="UniCredit" />
                           
                    </a>
                </li>
                                                
            </ul>        
        </div>
        <div class="tm-tab-content tab-content col-md-12">
            <div class="tab-pane active in" role="tabpanel">
                Изберите схема за продукт на изплащане
            </div>    
            <div id="tab1" class="tab-pane fade" role="tabpanel">
            </div>
            <div id="tab2" class="tab-pane fade" role="tabpanel">
            </div>
            <div id="tab3" class="tab-pane fade" role="tabpanel">
            </div>
        </div>
    </div>
    <script type="text/javascript">

    require(['jquery'], function($){
        var loaded = [];
        $('#show_credits_link').click(function(e){

            $('a[href="' + '#product-tab3' + '"]').tab('show');

        });

        $('#show_vivacom_link').click(function(e){

            $('a[href="' + '#product-tab5' + '"]').tab('show');

        });
        $('#credit_tabs a[data-toggle="tab"]').on('show.bs.tab', function (e) {
    
            var $e = $(e.target);
            var tabId = $e.attr('href');

            if ($.inArray(tabId, loaded) > -1)
                return;
    
            var $tab = $(tabId);
            $tab.load($e.attr('data-uri'));
            loaded.push(tabId)
        })
    });

    </script>
    
                     
                    </section>
                </div>
                                                                 <div id="product-tab4" class="tab-pane fade" role="tabpanel">
                    <section class="product-accessories">
                            <div class="row">
                                <div class="col-fifth">
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        <a itemprop="url" href="" class="product-thumb">
                <img itemprop="image" src="${ product.getRealtivePath() }" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="../softuer/office365-university-eng-4yr-r4t-00039-09128056.html"><span itemprop="name">OFFICE365 UNIVERSITY ENG 4YR R4T-00039</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09128056</span></small>
            <ul itemprop="description" class="product-description">
                            <li>OFFICE 365 UNIVERSITY Е ЧЕТИРИГОДИШЕН АБОНАМЕНТ ЗА OFFICE </li>
                            <li>ЗА СТУДЕНТИ, УНИВЕРСИТЕТСКИ ПРЕПОДАВАТЕЛИ И СЛУЖИТЕЛИ </li>
                            <li>В АКРЕДИТИРАНИ ИНСТИТУЦИИ</li>
                            <li>ВКЛЮЧВА - WORD, EXCEL, POWERPOINT, OUTLOOK, ONENOTE*, PUBLISHER* </li>
                            <li>И ACCESS* </li>
                            <li>С OFFICE 365 UNIVERSITY МОЖЕТЕ ДА ИНСТАЛИРАТЕ OFFICE НА ДВА КОМПЮТЪРА PC ИЛИ MAC И ДВА СМАРТФОНА ИЛИ ТАБЛЕТА</li>
                            <li>СЪЩО ТАКА ПОЛУЧАВАТЕ АВТОМАТИЧНИ НАДСТРОЙКИ, ДОПЪЛНИТЕЛНО МЯСТО ЗА СЪХРАНЕНИЕ В SKYDRIVE ОТ 20 GB ЗА ЛЕСЕН ДОСТЪП И СПОДЕЛЯНЕ НА ДОКУМЕНТИ </li>
                            <li>60 МИНУТИ ВРЕМЕ ЗА РАЗГОВОРИ В SKYPE ВСЕКИ МЕСЕЦ С ПОВЕЧЕ ОТ 40 СТРАНИ &quot;OFFICE ПРИ ПОИСКВАНЕ&quot;- ЗА ДА МОЖЕТЕ ДА УСТАНОВИТЕ ПЪЛНА ВЕРСИЯ НА OFFICE НА КОМПЮТРИ PC, КЪДЕТО НЯМА ИНСТАЛАЦИЯ (ВСИЧКО, ОТ КОЕТО ИМАТЕ НУЖДА, Е КОМПЮТЪР С WINDOWS 7 ИЛИ 8 И ИНТЕРНЕТ ВРЪЗКА)</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">159.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09128056" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->
</div>
                                            <div class="col-fifth">
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        <a itemprop="url" href="../softuer/office-365-home-premium-eng-1yr-6gq-0002-09128055.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09128055/560aa56ec06ad.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="../softuer/office-365-home-premium-eng-1yr-6gq-0002-09128055.html"><span itemprop="name">OFFICE 365 HOME PREMIUM ENG 1YR 6GQ-0002</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09128055</span></small>
            <ul itemprop="description" class="product-description">
                            <li>OFFICE 365 HOME PREMIUM Е ЕДНОГОДИШЕН АБОНАМЕНТ ЗА OFFICE ЗА НЕТЪРГОВСКО ПОЛЗВАНЕ</li>
                            <li>ВКЛЮЧВА - WORD, EXCEL, POWERPOINT, OUTLOOK, ONENOTE*, PUBLISHER* И ACCESS*</li>
                            <li>С OFFICE 365 HOME PREMIUM МОЖЕТЕ ДА ИНСТАЛИРАТЕ OFFICE НА ПЕТ КОМПЮТЪРА PC ИЛИ MAC И ПЕТ СМАРТФОНА ИЛИ ТАБЛЕТА, СЪЩО ТАКА ПОЛУЧАВАТЕ АВТОМАТИЧНИ НАДСТРОЙКИ, </li>
                            <li>ДОПЪЛНИТЕЛНО МЯСТО ЗА СЪХРАНЕНИЕ В SKYDRIVE ОТ 20 GB ЗА ЛЕСЕН ДОСТЪП И СПОДЕЛЯНЕ НА ДОКУМЕНТИ, </li>
                            <li>60 МИНУТИ ВРЕМЕ ЗА РАЗГОВОРИ В SKYPE ВСЕКИ МЕСЕЦ С ПОВЕЧЕ ОТ 40 СТРАНИ &quot;OFFICE ПРИ ПОИСКВАНЕ&quot;, ЗА ДА МОЖЕТЕ ДА УСТАНОВИТЕ ПЪЛНА ВЕРСИЯ НА OFFICE НА КОМПЮТРИ PC, КЪДЕТО НЯМА ИНСТАЛАЦИЯ (ВСИЧКО, ОТ КОЕТО ИМАТЕ НУЖДА, Е КОМПЮТЪР С WINDOWS 7 ИЛИ 8 И ИНТЕРНЕТ ВРЪЗКА)</li>
                            <li>* PUBLISHER, ACCESS И ONENOTE СА НАЛИЧНИ САМО ЗА PC</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">189.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09128055" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->
</div>
                                            <div class="col-fifth">
<figure itemscope itemtype="http://schema.org/Product" class="product">
	        <a itemprop="url" href="../softuer/office-home-and-business-2013-eng-t5d-01-09128054.html" class="product-thumb">
                <img itemprop="image" src="http://cdn.technomarket.bg/media/cache/resolve/my_thumb/uploads/library/product/09128054/560aa56e715c5.jpeg" alt="Technomarket" />
            </a>
    <figcaption>
        <div class="product-name">
            <h3><a itemprop="url" href="../softuer/office-home-and-business-2013-eng-t5d-01-09128054.html"><span itemprop="name">OFFICE HOME AND BUSINESS 2013 ENG T5D-01</span></a></h3>
            <small class="product-model">Арт.№: <span itemprop="productID">09128054</span></small>
            <ul itemprop="description" class="product-description">
                            <li>ЛИЦЕНЗ ЗА ОФИС ПАКЕТ</li>
                            <li>ЗА 1 КОМПЮТЪР </li>
                            <li>ВКЛЮЧВА - WORD, EXCEL, POWERPOINT, ONENOTE И OUTLOOK</li>
                            <li>БЕЗПРОБЛЕМНА РАБОТА С БЕЗПЛАТНИТЕ OFFICE WEB APPS </li>
                            <li>ЗА ДОСТЪП, РЕДАКТИРАНЕ И СПОДЕЛЯНЕ НА ДОКУМЕНТИ</li>
                            <li>7 GB МЯСТО ЗА СЪХРАНЕНИЕ В SKYDRIVE ЗА ЛЕСЕН ДОСТЪП</li>
                            <li>И СПОДЕЛЯНЕ НА ДОКУМЕНТИ</li>
                            <li>ЕДНОКРАТНО ЗАКУПУВАНЕ ЗА ЦЕЛИЯ ПЕРИОД НА ПОЛЗВАНЕ</li>
                        </ul>            
        </div>
        <div class="product-price">
            <var itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="price">
            	<meta itemprop="priceCurrency" content="BGN" />
                <span itemprop="price" class="new">489.<sup>00</sup>  <small>лв.</small></span>
                                <div><link itemprop="itemCondition" href="http://schema.org/NewCondition" /> <span class="hidden">New</span></div>
            </var>
            <form action="http://www.technomarket.bg/cart/add">
                <input type="hidden" value="09128054" name="product">
                <button type="submit" class="btn btn-tm">
                	<i class="icon-basket"></i> Купи онлайн
                </button>
            </form>            
        </div>
    </figcaption>
</figure><!--.product-->
</div>
                        </div>

                    </section>
                </div>
                                                                                </div><!--/.tab-content-->          
        </div>
    </div><!--.row-->
    <div class="row">
        <div class="partials">
            <div class="col-md-12">
                                <div class="row">
                                    </div>
            </div>
        </div>
    </div><!--/.row-->

    <div id="flix-minisite" style="display: none;"></div>
    <div id="flix-inpage"></div>

    <!-- Root element of PhotoSwipe. Must have class pswp. -->
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

        <!-- Background of PhotoSwipe.
             It's a separate element as animating opacity is faster than rgba(). -->
        <div class="pswp__bg"></div>

        <!-- Slides wrapper with overflow:hidden. -->
        <div class="pswp__scroll-wrap">

            <!-- Container that holds slides.
                PhotoSwipe keeps only 3 of them in the DOM to save memory.
                Don't modify these 3 pswp__item elements, data is added later on. -->
            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>

            <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
            <div class="pswp__ui pswp__ui--hidden">

                <div class="pswp__top-bar">

                    <!--  Controls are self-explanatory. Order can be changed. -->

                    <div class="pswp__counter"></div>

                    <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

                    <button class="pswp__button pswp__button--share" title="Share"></button>

                    <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

                    <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>

                    <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
                    <!-- element will get class pswp__preloader--active when preloader is running -->
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                            <div class="pswp__preloader__cut">
                                <div class="pswp__preloader__donut"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div>
                </div>

                <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
                </button>

                <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
                </button>

                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>

            </div>

        </div>

    </div>

    
    <script type="text/javascript" src="css/media.flixfacts.com/js/loader.js" data-flix-distributor="8847" data-flix-language="bg" data-flix-brand="ACER" data-flix-mpn="" data-flix-ean="4713147793686" data-flix-sku="" data-flix-button="flix-minisite" data-flix-inpage="flix-inpage" data-flix-button-image="" data-flix-price=""></script>

            </div>
        </section>    
        
    
    </div>

	<footer>
		<div class="inner">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<h4>
							<a aria-controls="technomarket" aria-expanded="true"
								href="#technomarket" data-toggle="collapse" role="button"
								class="tm-collapse">Техномаркет</a>
						</h4>
						<ul id="technomarket" class="footer-menu collapse in">
							<li><a href="/Technomarket/stores">Магазини</a></li>
							<li><a href="/Technomarket/contacts">Контакти</a></li>
						</ul>
					</div>
					<div class="col-md-5">
						<h4>
							<a aria-controls="easy-shopping" aria-expanded="true"
								href="#easy-shopping" data-toggle="collapse" role="button"
								class="tm-collapse">Лесно пазаруване</a>
						</h4>
						<ul id="easy-shopping" class="footer-menu collapse in">
							<li><a href="/Technomarket/conditionsForMarketing">Условия
									за Online пазаруване</a></li>
							<li><a href="/Technomarket/delivery">Бърза и безплатна
									доставка до дома Ви</a></li>
							<li><a href="/Technomarket/onlinePay">Сигурно Online
									разплащане</a></li>
							<li><a href="/Technomarket/tbiConditions">Условия за TBI
									Credit кредитиране</a></li>
							<li><a href="/Technomarket/uniConditions">Условия за
									UniCredit кредитиране</a></li>
						</ul>
					</div>
					<div class="col-md-4">
						<h4>
							<a aria-controls="contacts" aria-expanded="true" href="#contacts"
								data-toggle="collapse" role="button" class="tm-collapse">Контакти</a>
						</h4>
						<div id="contacts" class="footer-menu collapse in">
							<p>
								<strong>Национален телефон на клиента</strong>
							</p>
							<h3>
								<strong>0700 10 800</strong>
							</h3>
							<p>
								<small>на цената на един градски разговор</small>
							</p>
							<br>
							<ul itemscope itemtype="http://schema.org/Organization"
								class="social-icons">
								<link itemprop="url" href="index.html">
								<li><a itemprop="sameAs"
									href="https://www.facebook.com/technomarket/" target="_blank"
									title="Facebook"><i class="icon-facebook"></i></a></li>
								<li><a itemprop="sameAs"
									href="https://plus.google.com/+technomarket/" target="_blank"
									title="Google +"><i class="icon-google"></i></a></li>
								<li><a itemprop="sameAs"
									href="https://twitter.com/technomarketbg/" target="_blank"
									title="Twitter"><i class="icon-twitter"></i></a></li>
								<li><a itemprop="sameAs"
									href="https://www.youtube.com/technomarket/" target="_blank"
									title="YouTube"><i class="icon-youtube"></i></a></li>
								<li><a itemprop="sameAs"
									href="https://www.linkedin.com/company/technomarket/"
									target="_blank" title="Linked In"><i class="icon-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="online-info">
					Уважаеми клиенти, цените на technomarket.bg се обновяват на всеки
					един час. Възможно е несъответствие с цените в магазините. Всички
					цени са за покупки онлайн.<br> При възникване на спор, свързан
					с покупка онлайн можете да ползвате сайта <a
						href="https://webgate.ec.europa.eu/odr/main/index.cfm?event=main.home.show&amp;lng=BG"
						target="_blank" rel="nofollow">ОРС</a>.
				</div>
			</div>
		</div>
		<!-- /.inner -->
		<div class="copyrights">
			<div class="container">
				<span class="copy">Copyright &reg; 2016 Техномаркет. Всички
					права запазени.</span> <span class="mc-logos"> <img
					src="img/cards.png" alt="Technomarket" />
				</span>
			</div>
		</div>
		<!-- /.copyrights -->
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
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=376584362536011&amp;ev=PageView&amp;noscript=1" />
	</noscript>
	<!-- End Facebook Pixel Code -->

	<!-- Begin Cookie Consent plugin by Silktide - http://silktide.com/cookieconsent -->
	<script type="text/javascript">
            window.cookieconsent_options = {"message":'Technomarket.bg използва &quot;бисквитки&quot;.',"dismiss":'Ок',"learnMore":'Виж повече',"link":'/cookie',"theme":false};
        </script>

	<script type="text/javascript"
		src="css/cdnjs.cloudflare.com/ajax/libs/cookieconsent2/1.0.9/cookieconsent.min.js"></script>
	<!-- End Cookie Consent plugin -->

</body>

<!-- Mirrored from www.technomarket.bg/televizor by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 12:13:28 GMT -->
</html>
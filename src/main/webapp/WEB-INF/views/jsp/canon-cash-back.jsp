<!doctype html>
<%@page import="com.tm.dbModels.TypeModelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<html class="no-js" lang="">
    
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
                                            <title>Canon Cash Back - Електромаркет - онлайн магазин</title>
<meta name="Description"
	CONTENT="Електромаркет верига за продажба на електроника.">
<meta name="google-site-verification"
	content="4GUfQ24-SB-8p2dO6_vCnz-rDTs7NGJm_rr2pfXBAl4" />
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="img/favicon.ico">
<link rel="stylesheet" href="css/cdn.electromarket.bg/css/f38a55a.css" />
<script type="text/javascript"
	src="css/cdn.electromarket.bg/assets/vendor/requirejs/require.js"></script>

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
					<link itemprop="url" href="/Electromarket/index">
					<ul itemprop='contactPoint' itemscope
						itemtype='http://schema.org/ContactPoint'
						class="nav navbar-nav nav-left">
						<meta itemprop="contactType" content="Customer service">
						<li><a href="/Electromarket/contacts"><strong><i
									class="icon-phone"></i> <span itemprop='telephone'
									class="hidden">+359888372407</span> 0888 372 407</strong></a></li>
						<li class="nav-promo"><a href="/Electromarket/sales"><i
								class="icon-gift"></i> Промоции</a>
						</li>
					</ul>
					<ul itemscope itemtype="http://schema.org/Organization"
						class="nav navbar-nav nav-right">
						<link itemprop="url" href="/Electromarket/index">
						<li class="icon-social"><a itemprop="sameAs"
							href="https://www.facebook.com/profile.php?id=100013962152373" target="_blank"><i
								class="icon-facebook"></i> <span class="visible-xs">Facebook</span></a></li>
						<li class="icon-social"><a itemprop="sameAs"
							href="https://plus.google.com/100014758101449735523" target="_blank"><i
								class="icon-google"></i> <span class="visible-xs">Google
									+</span></a></li>
						<li class="icon-social"><a itemprop="sameAs"
							href="https://twitter.com/mailelectromar1" target="_blank"><i
								class="icon-twitter"></i> <span class="visible-xs">Twitter</span></a></li>
						<li class="icon-social"><a itemprop="sameAs"
							href="https://www.youtube.com/channel/UCgLn2t-ykM98m4oY0Dgo3tg" target="_blank"><i
								class="icon-youtube"></i> <span class="visible-xs">You
									Tube</span></a></li>
						<li class="icon-social"><a itemprop="sameAs"
							href="https://www.linkedin.com/in/electro-market-057b9212b?trk=nav_responsive_tab_profile_pic"
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
						<span itemprop="name" class="hidden">Електромаркет</span> <a
							itemprop="url" href="/Electromarket/index"> <img
							itemprop="logo" src="img/electromarket.png" alt="Electromarket" />
						</a>
					</div>
					<!-- /.logo -->
					<div class="heading-collapse">
						<div itemscope itemtype="http://schema.org/WebSite" class="search">
							<link itemprop="url" href="/Electromarket/index" />
							<form itemprop="potentialAction" itemscope
								itemtype="http://schema.org/SearchAction"
								action="/Electromarket/searchProduct" method="GET"
								class="input-group">
								<input itemprop="query-input" type="text" name="search"
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
											<li><a href="/Electromarket/login">Вход</a></li>
											<li><a href="/Electromarket/register">Регистрация</a></li>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${ isAdmin }">
													<li><a href="/Electromarket/profile">Профил</a></li>
													<li><a href="/Electromarket/addProduct">Добави продук</a></li>
													<li><a href="/Electromarket/addSale">Добави промоция за продукт</a></li>
               										<li><a href="/Electromarket/deleteProduct">Премахни продукт</a></li>
                									<li><a href="/Electromarket/getChaneQuantity">Смени количеството от продукт</a></li>
													<li><a href="/Electromarket/logOut">Изход</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="/Electromarket/profile">Профил</a></li>
													<li><a href="/Electromarket/orders">Поръчки</a></li>
													<li><a href="/Electromarket/logOut">Изход</a></li>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</ul>
							</div>
							<!-- /.user-account -->
							<div class="basket">
								<a href="/Electromarket/cart" class="btn btn-tm"> <i
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
														href="/Electromarket/getProducts?nadtype=<%=s%>&type=<%=ss%>&model=<%= map.get(s).get(ss).get(i) %>"
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
                                                                <div class="col-md-16 text-center" >

        	    	<figure>
        	<div class="figure-image">
                                <picture>                	
                    <source srcset="img/CBG_ALEX%20960x400_tcm135-1464344.jpg" media="(max-width: 990px)" />
                    <img src="img/CBG_ALEX 960x400_tcm135-1464344.jpg" alt="" title="">
                </picture>
                            </div>
        </figure>        
    </div>


                                            <div class="col-auto" >

	    	<div class="container-inner">
        	<div class="container-cell">
                <p>1. ИЗБЕРЕТЕ</p>

<p>2. КУПЕТЕ</p>

<p>3. <a href="https://canon-ccee-epic-images.sales-promotions.com/?country_promotion=23&amp;lng=bg" target="_blank">РЕГИСТРИРАЙТЕ</a></p>

<p>Купете един от промоционалните фотоапарати и обективи и вземете едногодишен абонамент за Adobe Creative Cloud Photography и онлайн курс по фотография от Fotoshkola.</p>

<p><em>УНИКАЛНИ ПОДАРЪЦИ С ВСЯКА ПОКУПКА</em></p>

<p>Adobe Creative Cloud Photography за редактиране и организиране на вашите снимки</p>

<p>Усъвършенствайте снимките си с най-добрия софтуер за обработка на изображения, независимо дали сте начинаещ, или професионалист. Организирайте, редактирайте и конвертирайте своите снимки по всяко време и навсякъде. Синхронизирайте снимките си на всичките си устройства. Така всичките ви снимки ще са на едно място.</p>

<p align="center">Какво включва пакетът:</p>

<p align="center">Lightroom</p>

<p align="center">Photoshop</p>

<p align="center">Photoshop Mix</p>

<p align="center">Adobe Voice</p>

<p align="center">Adobe Slate</p>

<p align="center">Обучение за софтуера на Adobe</p>

<p align="center">Незабавен достъп до нови функции и актуализации</p>

<p align="center">&nbsp;</p>

<p align="center"><strong>Подобрете фотографските си умения с онлайн курсовете по фотография на Fotoshkola</strong></p>

<p>Обучението с Fotoshkola е невероятно приключение, където преминавате през онлайн лекции с богато и интересно съдържание, изпълнявате вдъхновяващи фотографски задачи и получавате полезни съвети от истински професионалисти.</p>

<p>Издигнете своите фотографски умения до ново ниво с личен наставник.</p>

<p>Можете да получите един от петте невероятни курса:</p>

<p>&nbsp;</p>

<ul>
	<li>Canon. Най-добрите снимки</li>
	<li>Основи на композицията</li>
	<li>Основи на портретната фотография</li>
	<li>Как да снимаме деца</li>
	<li>Фотографиране на пътешествия</li>
</ul>

<p>&nbsp;</p>

<p>Вече сте закупили?</p>

<p><a href="https://canon-ccee-epic-images.sales-promotions.com/?country_promotion=23&amp;lng=bg">Регистрирайте покупката си сега, за да получите подаръци</a></p>

<p>* Едногодишен абонамент за Adobe Creative Cloud Photography на стойност 275 лв. и онлайн курс по фотография от Fotoshkola с личен наставник на стойност от 115 лв.</p>

<p>&nbsp;</p>

<p>Предложението е валидно от 01.09.2016 до 31.10.2016</p>

<p>Пълните условия на предложението ще намерите <a href="https://canon-ccee-epic-images.sales-promotions.com/bg/terms-and-conditions-promotion/?country_promotion=23">тук</a>.</p>
            </div>
        </div>
    </div>                                                    </div>
            </div>
        </section>
            
    </div>

	<footer>
		<div class="inner">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<h4>
							<a aria-controls="electromarket" aria-expanded="true"
								href="#electromarket" data-toggle="collapse" role="button"
								class="tm-collapse">Техномаркет</a>
						</h4>
						<ul id="electromarket" class="footer-menu collapse in">
							<li><a href="/Electromarket/contacts">Контакти</a></li>
						</ul>
					</div>
					<div class="col-md-5">
						<h4>
							<a aria-controls="easy-shopping" aria-expanded="true"
								href="#easy-shopping" data-toggle="collapse" role="button"
								class="tm-collapse">Лесно пазаруване</a>
						</h4>
						<ul id="easy-shopping" class="footer-menu collapse in">
							<li><a href="/Electromarket/conditionsForMarketing">Условия
									за Online пазаруване</a></li>
							<li><a href="/Electromarket/delivery">Бърза и безплатна
									доставка до дома Ви</a></li>
							<li><a href="/Electromarket/onlinePay">Сигурно Online
									разплащане</a></li>
							<li><a href="/Electromarket/tbiConditions">Условия за TBI
									Credit кредитиране</a></li>
							<li><a href="/Electromarket/uniConditions">Условия за
									UniCredit кредитиране</a></li>
						</ul>
					</div>
					<div class="col-md-4">
						<h4>
							<a aria-controls="contacts" aria-expanded="true"
								href="/Electromarket/contacts" data-toggle="collapse"
								role="button" class="tm-collapse">Контакти</a>
						</h4>
						<div id="contacts" class="footer-menu collapse in">
							<p>
								<strong>Национален телефон на клиента</strong>
							</p>
							<h3>
								<strong>0888 372 407</strong>
							</h3>
							<p>
								<small>на цената на един градски разговор</small>
							</p>
							<br>
							<ul itemscope itemtype="http://schema.org/Organization"
								class="social-icons">
								<link itemprop="url" href="/Electromarket/index">
								<li><a itemprop="sameAs"
									href="https://www.facebook.com/profile.php?id=100013962152373" target="_blank"
									title="Facebook"><i class="icon-facebook"></i></a></li>
								<li><a itemprop="sameAs"
									href="https://plus.google.com/100014758101449735523" target="_blank"
									title="Google +"><i class="icon-google"></i></a></li>
								<li><a itemprop="sameAs"
									href="https://twitter.com/mailelectromar1" target="_blank"
									title="Twitter"><i class="icon-twitter"></i></a></li>
								<li><a itemprop="sameAs"
									href="https://www.youtube.com/channel/UCgLn2t-ykM98m4oY0Dgo3tg" target="_blank"
									title="YouTube"><i class="icon-youtube"></i></a></li>
								<li><a itemprop="sameAs"
									href="https://www.linkedin.com/in/electro-market-057b9212b?trk=nav_responsive_tab_profile_pic"
									target="_blank" title="Linked In"><i class="icon-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="online-info">
					Уважаеми клиенти, цените на electromaket.bg се обновяват на всеки
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
				<span class="copy">Copyright &reg; 2016 Електромаркет. Всички
					права запазени.</span> <span class="mc-logos"> <img
					src="img/cards.png" alt="Electromarket" />
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

                $('.update-widget').each(function () {
                    $(this).load($(this).attr('data-url'));

                });
            });
			for(var f=document.forms,i=f.length;i--;)f[i].setAttribute("novalidate",i)
        </script>

	<a href="#top" class="scroll-top"><i class="icon-arrow-long-up"></i></a>

	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=376584362536011&amp;ev=PageView&amp;noscript=1" />
	</noscript>

	</body>
</html>
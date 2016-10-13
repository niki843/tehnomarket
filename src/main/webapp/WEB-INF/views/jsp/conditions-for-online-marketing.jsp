<!doctype html>
<%@page import="com.tm.dbModels.TypeModelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<html class="no-js" lang="">
    
<!-- Mirrored from www.technomarket.bg/uslovia-za-online-pazaruvane by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 13:08:18 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
                                            <title>Условия за Online пазаруване - Електромаркет - онлайн магазин</title>
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
    
    

                    
                                	             
        <section class=" section section-odd" >
            <div class="container">
            	                <div class="row">
                                                            <div class="col-auto" >

	    	<div class="container-inner">
        	<div class="container-cell">
                <p><img alt="" src="img/termsforonlinepurchasing-header.png" style="width: 1420px; height: 180px;" /></p>

<p>&nbsp;</p>

<p><font face="tahoma, arial, helvetica, sans-serif">ОБЩИ УСЛОВИЯ ЗА ПОЛЗВАНЕ НА УСЛУГИТЕ НА&nbsp;</font><b>Technomarket.bg</b><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">ВНИМАНИЕ! Внимателно прочетете тези Общи условия, преди да използвате този уеб сайт. Ако използвате този уеб сайт се счита, че приемате и сте съгласни с посочените Общи условия. Ако НЕ ПРИЕМАТЕ тези условия, не използвайте този уеб сайт!&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Настоящите ОБЩИ УСЛОВИЯ уреждат взаимоотношенията между &quot;Техномаркет България&quot; АД (</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">) и Потребителите на електронни (Интернет) страници и услуги, намиращи се на домейн www.</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;и поддомейните му (Сайт/ът) и използващи информационните и търговски услуги, предлагани от&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;(Услуги/те) на Сайта. За да получи възможност да използва Услугите на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">, Потребителят извършва регистрация на Сайта, с което се съгласява, изцяло приема и се задължава да спазва настоящите Общи условия..&nbsp;</font><br />
<br />
<b>&quot;Техномаркет България&quot; АД</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;е дружество, регистрирано в Република България, със седалище и адрес на управление: гр. София, бул. &bdquo;Цариградско шосе&rdquo; 361; вписано в Агенция по вписванията с ЕИК 200586330, телефон за контакт ..... / email: ......</font><br />
<br />
<b>1. Условия за използване на Сайта на Technomarket.bg</b><br />
<font face="tahoma, arial, helvetica, sans-serif">С извършването на регистрация на Сайта Потребителят потвърждава и декларира съгласието си със следното:</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; Информационните услуги на Сайта се предоставят &quot;във вида, в който са публикувани&quot;.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull;&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;не носи отговорност за точността на публикуваната информация.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull;&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;не носи отговорност и не се ангажира със срокове за доставяне на информация относно завършени поръчки на Потребителя, статусът на негови или на други Потребители запитвания, въпроси и коментари за продукти, наличност на продукти, както и за претърпени вреди и /или пропуснати ползи и други загуби от какъвто и да било вид и размер, настъпили след, в резултат на или поради използване / невъзможност за използване (поради технически проблеми, профилактика, решения на администратора и др.) на Сайта.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull;&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;не носи отговорност в случай, че при използване на Сайта или материали от него за потебителя възникнат вреди, за които е необходим ремонт или поправка на оборудване или загуба на информация, като всички разходи, свързани с отстраняването на такива вреди са за сметка на Потребителя.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; Оn-line системата за покупки през Сайта отразява наличността на артикулите към актуалния момент на проверката, като предвид динамиката в стокоооборота е възможно определени артикули и аксесоари към тях, публикувани и фигуриращи на Сайта като &bdquo;налични&ldquo; в магазини Техномаркет към момента на проверката, да бъдат изчерпани при заявката и да не могат да бъдат поръчани и доставени чрез on-line магазина. При всички случаи,&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;потвърждава възможността / невъзможността за доставка на заявената през Оn-line системата стока.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; Възможно е параметрите (срок/начин на доставка и др.подобни) на направена поръчка чрез Оn-line системата да бъдат променени, като&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;се задължава да съобщи на Потребителя за направените промени на предоставения от него е-мейл и/ или телефон за контакти и/или по друг подходящ начин, в срок най-късно до момента на изпращането на Потребителя на съобщението за доставка на потвърдената поръчка до адреса на потребителя.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; За да използва услугите на Сайта, Потребителят следва да получи достъп до World Wide Web пряко или чрез други устройства, които имат достъп до Web базирано съдържание, като си осигури цялото необходимо за достъп до World Wide Web оборудване, включително компютър, модем или другo средствo за достъп до Интернет мрежата.&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;не носи отговорност за каквито и да било смущения или технически проблеми, осуетяващи използването на Сайта, вследствие на качеството на експлоатираното компютърно оборудване от Потребителя.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; При регистрацията на Сайта Потребителят предоставя вярна, точна, актуална и пълна информация, необходима за осъществяване на продажбата, чрез попълване на всички задължителни полета на регистрационната форма.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull;&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;не носи отговорност за невярно и/или неточно изпълнена поръчка, в случай, че Потребителят предостави невярна, неточна, неактуална или непълна информация, като освен това има право да откаже по-нататъшен достъп на лицето до част или до всички услуги, предлагани на Сайта.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; Да получава информация чрез предоставените начини за контакт за продукти и услуги на</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">, като в случай че не желае да получава такава информация. Потребителят следва изрично да откаже получаването на същата чрез формите за запитване и контакт, посочени на Сайта.&nbsp;</font><br />
<br />
<b>2. Защита на личните данни.&nbsp;</b><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; &bdquo;Техномаркет България&rdquo; АД, ЕИК 200586330, в качеството си на Администратор на лични данни, вписан в &bdquo;Регистъра на администраторите на лични данни и на водените от тях регистри&rdquo; с идентификационен No 290128 и видно от Удостоверение, издадено на 20.11.2013 г. от Председателя на Комисията за защита на личните данни, получава лични данни от лицата, за които те се отнасят.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; &bdquo;Техномаркет България&rdquo; АД е Администратор на лични данни, установен на територията на Република България и обработва законосъобразно и добросъвестно лични данни във връзка с целите на своята дейност &ndash; търговия на стоки на едро и дребно и не ги обработва допълнително по начин, несъвместим с тези цели.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; Получателите или категориите получатели, на които личните данни могат да бъдат разкрити са физическите лица, за които се отнасят данните или други лица, ако това е предвидено в нормативен акт. Предоставените от Потребителя Лични данни не се отстъпват на трети лица за рекламни и промоционални цели.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; &bdquo;Техномаркет България&rdquo; АД обработва лични данни, само при условие, че физическото лице, за което се отнасят данните, е дало изрично своето съгласие, като при липса на изчрино съгласие от страна на лицето, за което се отнасят данните, &bdquo;Техномаркет България&rdquo; АД няма право да обработва данните му. С предоставянето на личните си данни, Потребителят автоматично дава изричното си съгласие те да бъдат обработвани.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; Всяко физическо лице има право на достъп с писмено заявление до отнасящи се за него лични данни, както и право по всяко време да поиска от &bdquo;Техномаркет България&rdquo; АД да заличи, коригира или блокира негови лични данни, обработването на които не отговаря на изискванията на ЗЗЛД.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bull; Потребителят се съгласява декларираните от него лични данни да бъдат предоставяни от</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;на &quot;Ти Би Ай Кредит&quot; ЕАД, в случай че избере начин на плащане &quot;На изплащане с &quot;TBI Credit&quot;&nbsp;</font><br />
<br />
<b>3. Авторски права и ограничения свързани с тях.</b><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Потребителите могат да използват всички услуги, предлагани на Сайта за лични нужди, с нестопанска цел ипри условие че не се нарушават авторските права на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;или на трети лица свързани пряко или косвено с материалите на Сайта. Забранява се изрично материалите, публикувани на този Сайт да да бъдат копирани, публично разпространявани или раздавани с каквато и да било цел от Потребителите.&nbsp;</font><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;си запазва правото да преотстъпва правата за публикуване на материали и друга информация, публикувана на Сайта, на трети лица при допълнително сключен договор в писмена форма, уреждащ правоотношенията, между&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;и лицето публикуващо информацията.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При закупуване на стока, представляваща обект на авторски и/или патентни права,&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">не предоставя никакви допълнителни права за ползване и разпространение, освен изрично упоменатите права и/или лицензии от производителя/дистрибутора на стоката.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Всички предоставени от&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;стоки и услуги, които се ползват със защита съгласно Закона за защита на авторското право и сродните му права , се предоставят на Потребителите в оригиналният си вид, опаковка и носител без каквото и да било въздействие от страна на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;и съгласно лицензите и правата за разпространение, предоставени от производителите и/или дистрибуторите им за Република България.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Линковете на Сайта към други сайтове, собственост на трети лица, са публикувани за удобство на потребителите. При употреба на такава препратка потребителите не използват услуга, предоставена от</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;и по отношение на използването на препратката извън Сайта настоящите Общи условия не се прилагат.</font><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;не носи отговорност по отношение на информацията и/или съдържанието на други сайтове, собственост на трети лица, като не налага и не препоръчва използването на тези сайтове или информацията публикувана в тях. Евентуалните рискове, свързани с използването на такива сайтове, се носят от Потребителите.&nbsp;</font><br />
<br />
<b>4. Представяни стоки и услуги на Сайта.</b><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Информацията за стоките в Сайта е разпределена по видове групи и подгрупи;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">В страницата (линка) към всеки артикул, посочен в Сайта е предоставена информация относно цената, основните характеристики на стоката и допълнителна информация, целяща подпомагането на извършването на информиран избор от Потребителите при покупката на продукта.&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;не носи отговорност за неточности в описанието на стоката, които не се отнасят към основните и характеристики на стоката и не претендира за изчерпателност на предоставената информация.</font><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;си запазва правото да публикува имена, модели и друга информация за стоки на Английски или друг език, когато:&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">а) Съществува опасност с преводът и да се изгуби ценна информация относно характеристиките на стоката;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">б) Няма общоприета еднозначна терминология на Български език;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">в) Самата стока е носител на информация на Английски или друг език, например, софтуер, музика и филми на Английски или друг език;&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Всички, посочени на сайта цени, са в Български Лева и с включен ДДС. В случай, че стоката има няколко модификации, на страницата и са посочени цените за всяка от модификациите.&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;има право по всяко време и без предупреждение да прави промени в публикуваните продукти, услуги, цени и други характеристики на стоките и Потребителите се считат информирани за посочените промени от датата на публикуването им. Информацията за част от публикуваните продукти е възможно да не е актуализирана, но във всички случаи Потребителите ще бъдат уведомени в случай на извършена поръчка на Сайта с форма за on-line покупки преди доставката им за неактуализирана информация на Сайта, свързана с поръчаните продукти. Част от информацията публикувана в Сайта е възможно да се отнася до продукти, услуги или програми, които не се предлагат и не са достъпни в момента.&nbsp;</font><br />
<br />
<b>5. Закупуване на стока и/или услуга от Сайта www.Technomarket.bg</b><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Потребителят има право да поръчва всички стоки и услуги, посочени в Сайта на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">. При извършване на поръчката Потребителят има право да избере вида, марката и модела на стоките и количеството им, условията за плащане, начина и сроковете за доставка, според предложените на Сайта възможности.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">По всяко време преди окончателното потвърждение на направената поръчка с попълването на формата за on-line покупки, Потребителят има право да извършва промени в избраните от него стоки и услуги.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При извършване на поръчка на Сайта Потребителят влиза в договорни отношения със &quot;Техномаркет България&quot; АД за покупко-продажба на избрания артикул, регламентирани с настоящите Общи условия, като направената поръчка се счита за утвърдена след получаване на потвърждение от страна на</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">, съдържащо всички гореизброени параметри и съгласно инструкциите, посочени в Сайта;&nbsp;</font><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;има право да променя цените, посочени в Сайта по свое усмотрение, по всяко време и без да е длъжен да уведомява предварително Потребителите. Потребителят е длъжен да заплати цената, която е била посочена на Сайта по време на извършване на поръчката, независимо дали е по-ниска или по-висока от актуализираната цена. При допуснати технически грешки в публикуваната информация на Сайта, в резултат на което поръчката не може да бъде изпълнена,&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;има правото да откаже изпълнението на поръчката като не дължи друго обещетение на Потребителя, освен възстановяване на сумите, заплатени и/или депозирани от потребителя за отменената поръчка, ако има такива.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Условия за Онлайн покупка на изплащане от Сайта</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">- Всеки потребител, който желае да закупи чрез онлайн магазина стока/и на изплащане, следва да кандидатства пред финансова институция за получаване на кредит.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">- Право да кандидатства за отпускане на кредит има само потребител, чиято конкретна онлайн поръчка е с обща онлайн цена (без цената на доставка), равна или по &ndash; голяма от 100 ( сто) лева, независимо от броя и единичната онлайн продажна цена на стоките включени в поръчката. Мобилни телефони подлежат на разрочено плащане до 15 месеца и към тях не се прилагат застраховки.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">- Кандидатстването се извършва: само онлайн, само чрез сайта, само чрез регистрирания от ползвателя на</font><b>www.technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;акаунт, посредством кликване върху бутона &quot;купи на кредит&quot;, след което се следва предвидената процедура.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">- Условията, на които потребителят следва да отговаря, за да му бъде отпуснат кредит се определят едностранно от финансовата институция, съобразно кредитната й политика. Техномаркет не участва по какъвто и да е начин в кредитирането на покупката, както и в което и да е от отношенията във връзка с кредитирането, включително, но не само в определянето на условията за кандидатстване за кредит, одобрението или отказът за кредитиране, определянето на условията и срока на договора за кредит, в случай на неизпълнение - в предприемането на предвидените в закона действия свързани с принудително изпълнение и др. Техномаркет не е представител и не извършва посредническа дейност в полза на която и да е търговска банка.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">- Доставката на закупени на изплащане, чрез онлайн магазина стока/и, се извършва само след като</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;бъде надлежно уведомен от финансовата институция, че кандидата е одобрен, с предмет кредитиране в пълен размер на съответната поръчка. Срокът за доставка на закупената на изплащане стока е от 24 часа до 7 дни дни и започва да тече от момента, в който&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;получи уведомлението по предходното изречение и се свърже с кандидата. При получаване на заявените стока/и, потребителят подписва Договора за потребителски кредит, Искането декларация за потребителски кредит и застрахователните сертификати, в случай, че е избрал защитен кредит. За целите на Договора за потребителски кредит с финансовата институция, кредитополучателят подготвя предварително копие от своята лична карта, на което пише собственоръчно &quot;Вярно с оригинала&quot; и подписва. Копието от личната карта се предава на куриера, който го предава директно на финансовата институция.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">- Доставката се изпълнява въз основа на данните (собствено име, фамилно име и ЕГН, адрес за доставка - служебен или настоящ адрес) посочени от клиента в Договора за потребителски кредит. Получаването на стоката/ите се извършва лично от лицето сключило договора за кредит, след като удостовери самоличността си чрез представяне на документ за самоличност. Картите за лоялни клиенти не могат да бъдат използвани за покупки онлайн.&nbsp;</font><br />
<br />
<b>6. Заплащане на закупени стоки и услуги&nbsp;</b><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При заплащане в брой с наложен платеж на поръчаните и доставени стоки и услуги Потребителят се задължава да заплати в момента на доставката на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;или на неговият представител/подизпълнител, извършващ доставката на поръчаната стока пълната й стойност съгласно потвърдената поръчка.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При заплащане по банков път, Потребителят заплаща сума, равна на стойността на доставената стока съгласно потвърдената поръчка по банковата сметка на &quot; Техномаркет България &quot; АД, посочена в генерираната фактура и едва след като плащането бъде потвърдено като получен и банковата сметка бъде заверена със съответната сума,&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;изпълнява доставката на поръчаните стоки и услуги.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При плащане чрез виртуален ПОС терминал, Потребителят заплаща сума, равна на стойността на доставяната стока съгласно потвърдената поръчка чрез виртуален ПОС терминал и едва след като транзакцията на плащането бъде потвърдена,&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;изпълнява доставката на поръчаните стоки и услуги.&nbsp;</font><br />
<br />
Ваучери Техномаркет не важат за онлайн пазаруване.<br />
<br />
<b>7. Доставка на закупени стоки</b><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Срокът за доставката на заявените с поръчка стоки, за които е получено плащане, до посочения от потребителя адрес е от 24 часа до 4 работни дни, след получаване на потвърждение на поръчката, като срокът може да бъде удължен при официалните празници и/или почивни дни със срока на неработните дни. Във всички случаи е възможно забавяне в посочените срокове за доставка, за което потребителят следва да бъде своевременно уведомен от страна на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Доставката на поръчаните стоки се извършва по избрания от Потребителя начин и според посочените срокове.&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;си запазва правото да удължава посочените срокове с до 7 (седем) дни, без да информира предварително Потребителите, и да удължава сроковете с повече от 7 (седем) дни с предварителното съгласие от страна на Потребителя, заявил доставката.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Стандартната цената за доставка може да бъде на стойност до 4 (четири) лв. за цялата страна, в зависимост от вида и размера на стоката, адреса за доставка и броя на продуктите в поръчката.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При поръчка за покупка от онлайн магазина, в &ldquo;Забележки&rdquo; потребителят има възможност да посочи удобен за него ден за доставка, като&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;съобразява доставката с предпочитанията на потребителя, за което същият е своевременно уведомен.</font><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;може да поиска допълнително потвърждение от потребителя за направената поръчка, включително по телефон, факс, електронна поща. В случай, че Потребителят откаже да предостави изисканата от&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;информация, отказът от предоставянето й води до автоматична отмяна на поръчката с или без допълнително уведомяване на Потребителя.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Цената на разходите за доставка се калкулира автоматично в стойността на поръчката и е посочена под информацията, публикувана за поръчвания артикул.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&bdquo;Техномаркет България&ldquo; АД няма задължение за монтаж и инсталация на доставените стоки. Доставка на закупена стока от &bdquo;Техномаркет България&ldquo; АД се осъществява до:</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">1. Врата на апартамент или офис за сгради, въведени в експлоатация с акт образец 16, с работещ асансьор позволяващ качването на уредите.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">2. Врата на двор, при къщи с дворно място или до врата на къща при къщи без дворно място, до които има проходим автомобилен път;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">3. Вход на жилищна сграда, когато същата не е въведена в експлоатация с акт образец 16 и/или няма работещ асансьор, както и при всяка друга хипотеза, необхваната от горепосочените условия.&nbsp;</font><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;не носи отговорност за забава на доставката поради независещи от&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">обстоятелства, като например забавяне от страна на куриера, извършващ доставката.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При извършване на доставката, стоките следва да бъдат прегледани внимателно от Потребителя и/или упълномощено от него лице. При констатиране на външни видими дефекти - евентуални повреди, удари и други щети, установени при доставка, Потребителят следва да подпише протокол за щети в присъствието на куриера, в който описва констатираните дефекти и незабавно уведомява&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;на тел. 070010800.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При приемане на доставката от Потребителя без забележки, всички и всякакви последващи претенции за въшни видими дефекти на получената стока се явяват неоснователни и като такива не следва да бъдат удовлетворявани. В случай че не бъде изготвен и подписан протокол за щети в присъствието на куриера при получаването на стоката и/или не уведоми незабавно&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;на тел 070010800, Потребителят губи правото си на привеждане на констатираните външни видими дефекти в съответствие с договора за продажбата.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При посочени неверен или грешен адрес, лице за контакти и/или телефон при подаване на заявката,</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;не носи отговорност за неточно изпълнение на поръчката в следствие на подадената невярна информация от Потребителя.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">При предаване на стоките, Потребителят или трето лице, посочено от него, са длъжни да подпишат придружаващите документи. За трето лице се счита всяко лице, което не е титуляр на заявлението, но приема стоката при доставка на посочения от Потребителя адрес за доставка.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">В случай, че Потребителят не бъде открит в срока за изпълнение на доставката на посочения от него адрес и/или не бъде осигурен достъп до адреса за доставка,&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;се освобождава от задължението си да достави заявените стоки и Потребителят губи възможността поръчаните от него стоки да му бъдат доставени.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Когато доставените стоки явно не съответстват на заявените за покупка от Потребителя и това може да се установи при обикновен преглед на доставените стоки, Потребителят има право да поиска доставената стока да бъде заменена със съответстваща на извършеното от него заявление за покупка на стоки в срок от 24 часа от уведомяването на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;за такова искане на тел 070010800 или на email online@technomarket.bg.</font><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;си запазва правото да избира / променя подизпълнителя, извършващ доставката, без да е длъжен да информира предварително Потребителя, стига това да не рефлектира на начина и срока на доставка.</font><br />
<br />
<b>Technomarket.bg&nbsp;</b><font face="tahoma, arial, helvetica, sans-serif">извършва доставки чрез подизпълнител/и само на територията на България.</font><br />
<br />
<b>8. Отказ от закупена стока&nbsp;</b><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Потребителят има право да се откаже от договора от разстояние или от договора извън търговския обект, без да посочва причина, без да дължи обезщетение или неустойка, в срок от 14 дни, считано от датата, на която Потребителя или трето лице, различно от превозвача и посочено от него, е влязло във владение на стоките или датата, на която Потребителя или трето лице, различно от превозвача и посочено от него, е влязло във владение на последната стока, при договор, съгласно който поръчвате много стоки с една поръчка.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">За да упражни правото си на отказ, Потребителят следва да уведоми Tehnomarket.bg за имената си, географския си адрес и ако има такива, телефонен номер, факс и електронен адрес и за решението си да се откаже от договора с недвусмислено заявление (например писмо, изпратено по пощата, факс или електронна поща). Потребителят можете да използва приложения стандартен формуляр за отказ, но това не е задължително:</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">_____________________________________________________________________________</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Стандартен формуляр за упражняване правото на отказ от договора (попълнете и изпратете настоящия формуляр единствено ако желаете да се откажете от договора)</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">До&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Техномаркет България АД</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">гр.София, бул. Цариградско шосе No 361,&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">факс 02/9421213&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">email: online@technomarket.bg:</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">С настоящото уведомявам/уведомяваме*, че се отказвам/отказваме* от сключения от мен/</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">нас* договор за покупка на следните стоки*/за предоставяне на следната услуга*:</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">..........................................................................................................................................................................</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">..........................................................................................................................................................................</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&ndash; Поръчано на*/Получено на* ........................................................................................</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&ndash; Име на потребителя/ите ...............................................................................................</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&ndash; Адрес на потребителя/ите ............................................................................................</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&ndash; Подпис на потребителя/ите ..........................................................................................</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">(само в случай, че настоящият формуляр е на хартия)</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">&ndash; Дата ..............................................................................................................................</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">------------------------------------------------------</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">* Ненужното се зачертава.&ldquo;&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">________________________________________________________________________________</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Потребителят може също така да попълни и подаде по електронен път стандартния формуляр за отказ или друго недвусмислено заявление за отказ на сайта&nbsp;</font><b>www.technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">, като в случай че използва тази възможност,&nbsp;</font><b>technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;незабавно ще изпрати на траен носител (например по електронна поща) съобщение за потвърждение на получаването на отказа. За да бъде спазен срока за отказ от договора, е достатъчно потребителят да изпрати съобщението си относно упражняването на право на отказ преди изтичането на срока за отказ от договора.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">В случай, че потребителят се откаже от договора,&nbsp;</font><b>technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;ще възстанови всички плащания, които е получил, включително разходите за доставка (с изключение на допълнителни разходи, свързани с избран от потребителя начин на доставка, различен от най-евтиния стандартен начин на доставка, предлаган от</font><b>technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">), без неоправдано забавяне и във всички случаи не по-късно от 14 дни считано от датата, на която потребителят информира&nbsp;</font><b>technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;за неговото решение за отказ от договора.<b>Тechnomarket.bg ще извърши възстановяването&nbsp;</b></font><font face="tahoma, arial, helvetica, sans-serif"><b>само по банкова или картова сметка на клиента.</b></font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Тechnomarket.bg има право да отложи възстановяването на плащанията до получаване на стоките обратно или докато не бъдат представени доказателства, че стоката е изпратена обратно, в зависимост от това, кое от двете събития е настъпило по-рано.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Потребителят следва да изпрати на Тechnomarket.bg или да върне обратно стоките без неоправдано забавяне и във всички случаи не по-късно от 14 дни след деня, в който потребителят е информирал&nbsp;</font><b>technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">за отказа си от договора.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Срокът се счита за спазен, ако потребителят изпрати обратно стоките на&nbsp;</font><b>technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;преди изтичането на 14-дневния срок.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Потребителят следва да поеме преките разходи по връщане на стоката в размер на до 4 лв.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Потребителят отговаря единствено за намаляване стойността на стоките вследствие на изпробването им, различно от необходимото за установяване на тяхното естество, характеристики и добро функциониране.</font><br />
&nbsp;</p>

<p><font face="tahoma, arial, helvetica, sans-serif">Отказ от закупени принтери и/или мултифункционални устройства и консумативите към тях може да бъде упражнен съгласно разпоредбите на Закона за защита на потребителите и при условие, че стоките се върнат от потребителя в пълна комплектовка и ненарушена опаковка на консумативите /тонер и др.под./.</font></p>

<p>&nbsp;</p>

<p><font face="tahoma, arial, helvetica, sans-serif">В случай, че целостта на опаковката на съответния консуматив е нарушена, потребителят може да упражни правото си на отказ от закупен &nbsp;принтер и/или мултифункционални устройства и консумативите към тях съгласно разпоредбите на Закона за защита на потребителите, като следва да заплати за своя сметка стойността на консуматив с нарушена опаковка.&nbsp;<br />
<br />
Стоката следва да бъде върната в оригинална опаковка в нейната цялост, пълна окомплектовка с придружаващата я документация и без увреждания. Тechnomarket.bg запазва правото си, в случай, че върнатата стока е с увредена опаковка, следи от употреба, драскотини, удари, увредена от токов удар, с липсващи аксесоари, гаранционна карта, да прецени дали да приеме върнатата стока.</font></p>

<p>&nbsp;</p>

<p><b>9. Гаранционно обслужване</b><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;отговаря за всяка липса на съответствие на потребителската стока с договора за продажба, която съществува при доставянето на стоката и се прояви до две години след доставянето й, дори и да не е знаел за несъответствието.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Търговска гаранция е всяко задължение, поето от търговеца или производителя към потребителя в допълнение към неговото задължение по този закон да осигури съответствие на стоката с договора за продажба, да възстанови заплатената сума или да замени или поправи стоката, или да предостави друг вид обслужване, свързано със стоката, когато тя не отговаря на спецификациите или евентуално на други изисквания, несвързани със съответствието на стоката с договора за продажба, посочени в заявлението за предоставяне на търговска гаранция или в съответната реклама, направена в момента на сключване или преди сключване на договора.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">С всяка доставка на стоки, подлежащи на гаранционно обслужване,&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;издава и предоставя на Потребителя надлежна гаранционна карта с нанесени данните за стоката и гаранционните срокове, както и посочени всички условия на предоставената търговска гаранция, ако има такава.</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Потребителят не може да се позове и губи правата си по предоставената Търговска гаранция:</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">а) в случай на изгубена гаранционна карта;&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">б) при опит за извършване на ремонт и отстраняване на несъответствие от неоторизирано от</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;лице или сервизен център;&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">в) в случай на повреди, причинени от неправилна експлоатация;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">г) в случай на нарушаване на физическата цялост на продукта;&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">д) в случай на химическо, електрическо и/или друго въздействие, несвързано с нормалната експлоатация на продукта;&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Предоставената за продукта търговска гаранция не покрива компоненти на продукта с ограничен срок на годност (батерии, консумативи и др.). Гаранционното обслужване се извършва само и единствено в посочените на гаранционната карта сервизни центрове, при наличие на пълна документация и окомплектовка на продукта.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Продуктите и услугите, посочени в този Сайт, са ограничени само до посочените в Сайта Общи условия и информация, без да бъдат осигурявани каквито и да било гаранции извън посочените, включително търговски и целеви. Задълженията на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;по отношение на продуктите и услугите, които се предлагат в този Сайт, се регламентират от съответните споразумения с вносителите и/или дистрибуторите на представяните продукти.</font><br />
<br />
<b>10. Други&nbsp;</b><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;има право да променя едностранно всички условия за доставка на предоставяните стоки и каквато и да било друга информация, публикувана на Сайта без предварително уведомление до Потребителя.</font><br />
<br />
<b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;си запазва правото да изпраща на Потребителя съобщения, свързани с нови продукти и услуги, с промоции и/или с промени в условията и начините за доставка на предоставяните стоки и каквато и да било друга информация, публикувана на Сайта&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;администрира този Сайт и неговото приложение е валидно само за територията на Република България.&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;декларира, че материалите или услугите, посочени в този Сайт, не са подходящи или достъпни извън територията на Република България и съответно достъпът до тях от територии, извън посочената територия, е невалиден.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Въпроси, запитвания и консултации на Потребителя могат да бъдат извършвани оn-line чрез Сайта на</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;на формата за въпроси и запитвания, или чрез сътрудник от отдел On-line на тел 070010800, в рамките на работното време: от 9:00 до 18:00 часа, от понеделник до петък.&nbsp;</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Настоящите Общи условия могат да бъдат актуализирани по всяко време, като публикуването им на Сайта се счита за уведомяване на потребителите за измененията. При използване на Сайта на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">, Потребителите се задължават да спазват настоящите Общи условия, както и приложимото за предоставяните на Сайта стоки и услуги законодателство на Република България, включително и международното законодателство.</font><br />
<br />
ПОТРЕБИТЕЛЯТ СЕ СЪГЛАСЯВА С УСЛОВИЯTA ЗА ИЗПОЛЗВАНЕ УСЛУГИТЕ НА&nbsp;<b>Technomarket.bg</b>&nbsp;<br />
С НАТИСКАНЕ (КЛИКВАНЕ) НА ВСЕКИ ЕДИН ОБЕКТ, ЛИНК ИЛИ БУТОН НА САЙТА НА&nbsp;<b>Technomarket.bg</b>, КАКТО И С ЛИНКА КЪМ НАСТОЯЩИТЕ ОБЩИ УСЛОВИЯ) И СЕ СЧИТА, ЧЕ Е ЗАПОЗНАТ С ОБЩИТЕ УСЛОВИЯ, ПРИЕМА ГИ И СЕ ЗАДЪЛЖАВА ДА ГИ СПАЗВА.&nbsp;<br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Координатите на&nbsp;</font><b>Technomarket.bg</b><font face="tahoma, arial, helvetica, sans-serif">&nbsp;са следните:</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">България, 1139 София, бул. Цариградско шосе 361</font><br />
<br />
<font face="tahoma, arial, helvetica, sans-serif">Тel. : +359 0700 10 800 / email: online@technomarket.bg / www.technomarket.bg</font></p>
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

<!-- Mirrored from www.technomarket.bg/uslovia-za-online-pazaruvane by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Oct 2016 13:08:18 GMT -->
</html>
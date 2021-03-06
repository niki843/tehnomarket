<!doctype html>
<%@page import="com.tm.dbModels.TypeModelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<html class="no-js" lang="">

<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
                                            <title>Условия за TBI Credit кредитиране - Електромаркет - онлайн магазин</title>
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
						<li class="nav-promo"><a href="/Electromarket/index"><i
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
		<!-- /.heading -->
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
            	                <div class="section-heading">
                    <h2>Условия за TBI Bank кредитиране</h2>
                                    </div><!-- /.section-heading -->
                                <div class="row">
                                                            <div class="col-auto" >

	    	<div class="container-inner">
        	<div class="container-cell">
                <p align="center"><strong><u>За целеви кредит към Ти Би Ай Банк ЕАД могат да кандидатстват:</u></strong></p>

<p>Физически лица, пълнолетни български граждани, или постоянно пребиваващи в България чуждестранни граждани, с регулярни доходи.<br />
&nbsp;</p>

<table border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
			<td>
			<p><strong>ОДОБРЕНИЕ</strong></p>
			</td>
			<td>
			<p>от 5 минути</p>
			</td>
			<td>
			<p>до 15&nbsp;минути</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>СРОК</strong></p>
			</td>
			<td>
			<p>от 3 месеца&nbsp;</p>
			</td>
			<td>
			<p>до&nbsp;36 месеца</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>РАЗМЕР</strong></p>
			</td>
			<td>
			<p>от 150 лева&nbsp;</p>
			</td>
			<td>
			<p>до 7 500 лева</p>
			</td>
		</tr>
		<tr>
			<td>
			<p>&nbsp;</p>
			</td>
			<td>
			<p>&nbsp;</p>
			</td>
			<td>
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<p align="center"><strong><em><u>Процедура - Онлайн кандидатстване</u></em></strong></p>

<p>Основните стъпки в процеса на онлайн кредитиране са следните:</p>

<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>Избирате стоката /стоките, която искате да закупите на изплащане и я /ги &nbsp;добавяте в кошницата. Избирате начин за плащане &bdquo; На кредит&quot;.</p>

<p><strong>На кредитиране подлежат стока/и на обща стойност над 150 лв.</strong></p>

<p><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>С помощта на специално разработен &nbsp;Ти Би Ай Банк ЕАД калкулатор, лесно може да се ориентирате за сроковете и оскъпяването на предлаганите схеми за разсрочено плащане и да изберете най-удобния за Вас вариант на погасяване. Системата автоматично изчислява всички полета на калкулатора след избор на срок на кредита.</p>

<p>След като изберете план на изплащане, за да продължите напред, трябва да дадете своето съгласие за обработка на личните данни. За целта се запознайте с документа &bdquo; Искане декларация за потребителски кредит&quot; и &nbsp;маркирайте&nbsp; полето за &laquo;<em>Съгласие за обработка на лични данни</em>&raquo;. По този начин извършвате електронно изявление, че сте запознати и приемате условията.</p>

<p><strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>Попълвате форма със следните данни - име, ЕГН, тел. за връзка, и-мейл, адрес.</p>

<p><strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>Трябва да сте запознати и да приемете Общите условия за онлайн покупка.</p>

<p><strong>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>След потвърждаване на цялата информация по поръчката от Вас&nbsp; Електромаркет България АД&nbsp; изпраща всички въведени данни на Ти Би Ай Банк ЕАД.</p>

<p><strong>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>Вие се информирате (чрез сайта), че в рамките на един час ( в работно време на Ти Би Ай Банк ЕАД от 9:00 до 19:00 ч.) искането Ви ще бъде разгледано и ще бъдете осведомен, от&nbsp; Електромаркет България АД за становището.</p>

<p><strong>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>Служител на Ти Би Ай Банк ЕАД ще се свърже с Вас на посочените &nbsp;телефони и ще допълни необходимата информация в искането за финансиране.</p>

<p><strong>8. </strong>Електромаркет България АД ще Ви информира за становището по искания кредит.</p>

<p><strong>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>Инструкции - подписване и връщане на документи Ти Би Ай Банк ЕАД от клиента към търговеца</p>

<p><em>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Клиентът се идентифицира с лична карта, като това задължително трябва да бъде титуляра по договора.&nbsp;</em></p>

<p><em>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Клиентът предоставя на куриера копие на лична си карта от двете страни. &nbsp;Собственоръчно вписва &nbsp;&bdquo;Вярно с оригинала!&quot;, датата и се подписва<strong>.</strong>&nbsp;</em></p>

<p><em>c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Куриерът дава за подпис на клиента: Искане-декларация за потребителски кредит, 2 екземпляра на Договор за потребителски кредит, 2 екземпляра на Застрахователен сертификат и Общи условия на засрахователното покритие - ако кредита е защитен &nbsp;и фактура.&nbsp;</em></p>

<ul>
	<li><em>Искане декларация за потребителски кредит - Клиентът вписва трите си имена, ЕГН, град, дата на обозначените места и се разписва на &bdquo;КАНДИДАТ&quot;. </em></li>
</ul>

<p>&nbsp;</p>

<ul>
	<li><em>Договор за потребителски кредит:<br />
	<br />
	Страници от 1 до 7 - клиентът се разписва в долния десен ъгъл на &bdquo;ПОТРЕБИТЕЛ&quot;<br />
	<br />
	Страница 7 - вписва трите си имена и се подписва на &bdquo;ПОТРЕБИТЕЛ&quot;. Попълва декларацията, в долната част на страницата с град и дата и се подписва на &bdquo; потребител&quot;.</em><br />
	<br />
	ДЕКЛАРАЦИЯТА СЕ ПОПЪЛВА САМО В СЛУЧАИТЕ, КОГАТО СТОКАТА СЕ ПРЕДАВА ФИЗИЧЕСКИ НА КЛИЕНТА, В МОМЕНТА НА ПОДПИСВАНЕ НА ДОГОВОРА!</li>
</ul>

<p>&nbsp;</p>

<ul>
	<li><em>Застрахователен сертификат и общи условия на застрахователното покритие<br />
	&bdquo;Възложител&quot; в договора за възлагане - подпис на клиента<br />
	&bdquo;Застрахован кредитополучател&quot; на едно или две места, в зависимост от&nbsp;&nbsp;&nbsp; вида на защитата - подпис на клиента </em></li>
</ul>

<p>&nbsp;</p>

<ul>
	<li><em>Фактура </em><em>&ndash;</em><em> <strong>с плащане по банков път</strong>!<br />
	Получател: подпис на клиента</em></li>
</ul>

<p>&nbsp;</p>

<p><em>d)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; След като попълните и се положат подписи на всички обозначени места в горните документи, куриерът прави проверка&nbsp; за пропуск или грешки.&nbsp;</em></p>

<p><em>e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; За клиента остава:&nbsp;</em></p>

<ul>
	<li><em>Екземпляр на договора за потребителски кредит </em></li>
	<li><em>Застрахователнен сертификат и Общи условия на застрахователното покритие, ако кредита е защитен</em></li>
	<li><em>Оригинална фактура </em></li>
</ul>

<p>&nbsp;</p>

<p><em>f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Куриерът трябва да върне към&nbsp; Електромаркет България АД следния набор от документи:&nbsp;</em></p>

<ul>
	<li><em>Искане - подписана декларация за потребителски кредит</em></li>
	<li><em>Договор за потребителски кредит - подписан</em></li>
	<li><em>Копие от личната карта на клиента - подписано ,вярно с оригинала</em></li>
	<li><em>Екземпляр от Застрахователния сертификат, ако кредита е защитен - подписан.</em></li>
	<li><em>Копие от фактура - подписана</em></li>
	<li><em>Други документи, ако предварително са били изискани такива - подписани.</em></li>
</ul>

<p>&nbsp;</p>

<p><strong>10.&nbsp; </strong>При връщане на стоката от Вас в законния 15 дневен срок за онлайн продажбите, Електромаркет България АД &nbsp;уведомява Ти Би Ай Банк ЕАД, за да бъде анулиран договора по надлежния ред.</p>

<p>&nbsp;</p>
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
						<h4>
							<a aria-controls="electromarket" aria-expanded="true"
								href="#electromarket" data-toggle="collapse" role="button"
								class="tm-collapse">Електромаркет</a>
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
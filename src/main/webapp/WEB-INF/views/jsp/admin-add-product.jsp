<!doctype html>
<%@page import="com.tm.model.Product"%>
<%@page import="com.tm.model.ProductManager"%>
<%@page import="com.tm.dbModels.TypeModelDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.tm.model.UserManager"%>
<html class="no-js" lang="">
    
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
        <title>Електромаркет - онлайн магазин</title>
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
        <%
			String username = (String) request.getSession().getAttribute("email");
			RequestDispatcher rd = null;
			if (username == null) {
				rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}
			if(!(UserManager.getInstance().getUser(username).isAdmin())){
				rd = request.getRequestDispatcher("profile.jsp");
				rd.forward(request, response);
			}
		%>
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
                    
        <section>
    <div class="container">
        <div class="page-title sh-heading">
     <h2>Профил</h2>
</div>
<div class="row">
    <div class="col-md-3">
       <div class="filter-box page-menu">
            <header>
                <h3><i class="icon-profile"></i> Профил</h3>
            </header>         
            <ul>
                <li><a href="/Electromarket/adminProfile">Моят профил</a></li>
                <li><a href="/Electromarket/addProduct">Добави продук</a></li>
                <li><a href="/Electromarket/addSale">Добави промоция за продукт</a></li>
                <li><a href="/Electromarket/deleteProduct">Премахни продукт</a></li>
                <li><a href="/Electromarket/getChaneQuantity">Смени количеството от продукт</a></li>
                <li><a href="/Electromarket/logOut">Изход</a></li>
            </ul>
        </div> 
    </div>
    <div class="col-md-6">
        <div class="fos_user_user_show form-horizontal">
	<div class="form-group">
    	
    </div>
        	<h2>Добави продукт</h2>
        	<c:if test="${ emptyName }">
            	<font color="red">Името на продукта е празно!</font>
            	<% session.removeAttribute("emptyName"); %>
            	</br>
            </c:if>
            <c:if test="${ tooLongName }">
            	<font color="red">Името на продуктът може да бъде до 45 символа!</font>
            	<% session.removeAttribute("tooLongName"); %>
            	</br>
            </c:if>
            <c:if test="${ firstDescEmpty }">
            	<font color="red">Първото описание е празно!</font>
            	<% session.removeAttribute("firstDescEmpty"); %>
            	</br>
            </c:if>
            <c:if test="${ firstDescTooLong }">
            	<font color="red">Първото описание е твърде дълго може да бъде до 45 символа!</font>
            	<% session.removeAttribute("firstDescTooLong"); %>
            	</br>
            </c:if>
            <c:if test="${ secondDescEmpty }">
            	<font color="red">Второто описание е празно!</font>
            	<% session.removeAttribute("secondDescEmpty"); %>
            	</br>
            </c:if>
            <c:if test="${ secondDescTooLong }">
            	<font color="red">Второто описание е твърде дълго може да бъде до 45 символа!</font>
            	<% session.removeAttribute("secondDescTooLong"); %>
            	</br>
            </c:if>
            <c:if test="${ thirdDescEmpty }">
            	<font color="red">Третото описание е празно!</font>
            	<% session.removeAttribute("thirdDescEmpty"); %>
            	</br>
            </c:if>
            <c:if test="${ thirdDescTooLong }">
            	<font color="red">Третото описание е твърде дълго може да бъде до 45 символа!</font>
            	<% session.removeAttribute("thirdDescTooLong"); %>
            	</br>
            </c:if>
            <c:if test="${ fourthDescEmpty }">
            	<font color="red">Четвъртото описание е празно!</font>
            	<% session.removeAttribute("fourthDescEmpty"); %>
            	</br>
            </c:if>
            <c:if test="${ fourthDescTooLong }">
            	<font color="red">Четвъртото описание е твърде дълго може да бъде до 45 символа!</font>
            	<% session.removeAttribute("fourthDescTooLong"); %>
            	</br>
            </c:if>
			<c:if test="${ invalidTypeForUpper }">
            	<font color="red">Типът не отговоря на надтипа!</font>
            	<% session.removeAttribute("invalidTypeForUpper"); %>
            	</br>
            </c:if>
            <c:if test="${ invaliModelForType }">
            	<font color="red">Меделът не отговаря на типа!</font>
            	<% session.removeAttribute("invaliModelForType"); %>
            	</br>
            </c:if>
            <c:if test="${ emptyUpperType }">
            	<font color="red">Надтипът не може да е празен!</font>
            	<% session.removeAttribute("emptyUpperType"); %>
            	</br>
            </c:if>
            <c:if test="${ emptyType }">
            	<font color="red">Типът не може да е празен!</font>
            	<% session.removeAttribute("emptyType"); %>
            	</br>
            </c:if>
            <c:if test="${ emptyModel }">
            	<font color="red">Моделът не може да е празен!</font>
            	<% session.removeAttribute("emptyModel"); %>
            	</br>
            </c:if>
            <c:if test="${ emptyArt }">
            	<font color="red">Артикулният номер е празен!</font>
            	<% session.removeAttribute("emptyArt"); %>
            	</br>
            </c:if>
            <c:if test="${ emptyEan }">
            	<font color="red">EАН е празен!</font>
            	<% session.removeAttribute("emptyEan"); %>
            	</br>
            </c:if>
            <c:if test="${ emptyQuantity }">
            	<font color="red">Не е въведено количеството на продукта!</font>
            	<% session.removeAttribute("emptyQuantity"); %>
            	</br>
            </c:if>
            <c:if test="${ invalidQuantity }">
            	<font color="red">Количеството трябва да бъде цифра!</font>
            	<% session.removeAttribute("invalidQuantity"); %>
            	</br>
            </c:if>
            <c:if test="${ negativeQuantity }">
            	<font color="red">Количеството не може да е отрицателно!</font>
            	<% session.removeAttribute("negativeQuantity"); %>
            	</br>
            </c:if>
            <c:if test="${ emptyPrice }">
            	<font color="red">Цената трябва да бъде цифра!</font>
            	<% session.removeAttribute("emptyPrice"); %>
            	</br>
            </c:if>
            <c:if test="${ negativePrice }">
            	<font color="red">Цената не може да бъде негативно число!</font>
            	<% session.removeAttribute("negativePrice"); %>
            	</br>
            </c:if>
            <c:if test="${ invalidPrice }">
            	<font color="red">Цената не да съдържа специални символи!</font>
            	<% session.removeAttribute("invalidPrice"); %>
            	</br>
            </c:if>
            <c:if test="${ pictureMissing }">
            	<font color="red">Липсва снимка!</font>
            	<% session.removeAttribute("pictureMissing"); %>
            	</br>
            </c:if>
            <c:if test="${ productWithNameExists }">
            	<font color="red">Вече съществува продукт с това име!</font>
            	<% session.removeAttribute("productWithNameExists"); %>
            	</br>
            </c:if>
            <form action="/Electromarket/addNewProduct"  method="POST" class="fos_user_registration_register form-horizontal" enctype="multipart/form-data"><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_first_name">
                                       Име на продукта
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_art_name" name="fos_user_registration_form[art_name]" required="required" pattern=".{2,}" class="form-control" /><span class="bar"></span></div></div>
                <div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_art_num">
                    Артикулен номер
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_art_num" name="fos_user_registration_form[art_num]" required="required" pattern=".{2,}" class="form-control" /><span class="bar"></span></div></div>
                <div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_art_ean">
                    ЕАН
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_art_ean" name="fos_user_registration_form[art_ean]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_first_description">
                    Първо описание
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_first_description" name="fos_user_registration_form[first_description]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_second_description">
                    Второ описание
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_second_description" name="fos_user_registration_form[second_description]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_third_description">
                    Трето описание
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_third_description" name="fos_user_registration_form[third_description]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_fourth_description">
                    Четвърто описание
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_fourth_description" name="fos_user_registration_form[fourth_description]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_in_stock">
                    Налично количество
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_in_stock" name="fos_user_registration_form[in_stock]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_price">
                    Цена
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="text" id="fos_user_registration_form_price" name="fos_user_registration_form[price]" required="required" class="form-control" /><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_pricture">
                    Снимка
                                            <span class="required" title="This field is required">*</span></label><div class="col-sm-10 control-bar"><input type="file" id="fos_user_registration_form_pricture" name="fos_user_registration_form[pricture]" required="required" class="form-control" accept="image/*"/><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required" for="fos_user_registration_form_price">
											</label><div class="col-sm-10 control-bar"><div class="control-group"></div><span class="bar"></span></div></div><div class="form-group"><label  class="col-sm-6 control-label required">
                    Надтип на продукта
                                            <span class="required" title="This field is required">*</span>
											</label><div class="col-sm-10 control-bar">
											<div id="fos_user_registration_form_birthday" class="form-inline">
											<select id="fos_user_registration_form_upper_type" name="fos_user_registration_form[upper_type]" required="required" class="form-control">
											<option value="" selected="selected">надтип</option>
                                            <% for(String s : map.keySet()){%>
                                            	<option value="<%= s %>"><%= s %></option>
                                            <%} %>
											</select></div><span class="bar">
											</span></div></div><div class="form-group"><label  class="col-sm-6 control-label required">
                    Тип на продукта
                                            <span class="required" title="This field is required">*</span>
											</label><div class="col-sm-10 control-bar">
											<div id="fos_user_registration_form_birthday" class="form-inline">
											<select id="fos_user_registration_form_type" name="fos_user_registration_form[type]" required="required" class="form-control">
											<option value="" selected="selected">тип</option>
                                            <% for(String s : map.keySet()){%>
                                            	<% for(String ss : map.get(s).keySet()){%>
                                            			<option value="<%= ss %>"><%= ss %></option>
                                            	<%} %>
                                            <%} %>
											</select></div><span class="bar">
											</span></div></div><div class="form-group"><label  class="col-sm-6 control-label required">
                    Модел
                                            <span class="required" title="This field is required">*</span>
											</label><div class="col-sm-10 control-bar">
											<div id="fos_user_registration_form_birthday" class="form-inline">
											<select id="fos_user_registration_form_model" name="fos_user_registration_form[model]" required="required" class="form-control">
											<option value="" selected="selected">модел</option>
                                            <% for(String s : map.keySet()){%>
                                            	<% for(String ss : map.get(s).keySet()){%>
                                            		<% for(int i = 0; i < map.get(s).get(ss).size(); i++){%>
                                            			<option value="<%= map.get(s).get(ss).get(i) %>"><%= map.get(s).get(ss).get(i) %></option>
                                            		<%} %>
                                            	<%} %>
                                            <%} %>
											</select></div><span class="bar">
											</span></div></div>
											<input type="hidden" id="fos_user_registration_form__token" name="fos_user_registration_form[_token]" class="form-control" value="Krjne80piNBsqAJqOJMu6HN5W9V7cPDmBpDmv2Am1k8" />
				<div class="form-group">
                    <div class="col-sm-offset-6 col-sm-10">
                         <input class="btn btn-tm" type="submit" value="Дабави" />
                    </div>
               </div>   
            </form>
</div>
    </div>
</div>
    </div>
</section>    

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
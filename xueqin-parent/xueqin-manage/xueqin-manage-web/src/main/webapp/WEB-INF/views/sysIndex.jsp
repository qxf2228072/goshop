<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/lib/tag.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>朗星后台管理系统</title>

	<meta name="description" content="overview &amp; stats" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="${ctx}/assets/css/bootstrap.css" />
	<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.css" />

	<!-- page specific plugin styles -->

	<!-- text fonts -->
	<link rel="stylesheet" href="${ctx}/assets/css/ace-fonts.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="${ctx}/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />

	<!--[if lte IE 9]>
	<link rel="stylesheet" href="${ctx}/assets/css/ace-part2.css" class="ace-main-stylesheet" />
	<![endif]-->

	<!--[if lte IE 9]>
	<link rel="stylesheet" href="${ctx}/assets/css/ace-ie.css" />
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->
	<script src="${ctx}/assets/js/ace-extra.js"></script>



	<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

	<!--[if lte IE 8]>
	<script src="${ctx}/assets/js/html5shiv.js"></script>
	<script src="${ctx}/assets/js/respond.js"></script>
	<![endif]-->
</head>

<body class="no-skin">
<!-- #section:basics/navbar.layout -->
<div id="navbar" class="navbar navbar-default">
	<script type="text/javascript">
		try{ace.settings.check('navbar' , 'fixed')}catch(e){}
	</script>

	<div class="navbar-container" id="navbar-container">
		<!-- #section:basics/sidebar.mobile.toggle -->
		<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
			<span class="sr-only">Toggle sidebar</span>

			<span class="icon-bar"></span>

			<span class="icon-bar"></span>

			<span class="icon-bar"></span>
		</button>

		<!-- /section:basics/sidebar.mobile.toggle -->
		<div class="navbar-header pull-left">
			<!-- #section:basics/navbar.layout.brand -->
			<a href="#" class="navbar-brand">
				<small>
					<i class="fa fa-leaf"></i>
					Ace Admin
				</small>
			</a>
		</div>

		<!-- #section:basics/navbar.dropdown -->
		<div class="navbar-buttons navbar-header pull-right" role="navigation">
			<ul class="nav ace-nav">
				<li class="grey">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<i class="ace-icon fa fa-tasks"></i>
						<span class="badge badge-grey">4</span>
					</a>

					<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header">
							<i class="ace-icon fa fa-check"></i>
							4 Tasks to complete
						</li>

						<li class="dropdown-content">
							<ul class="dropdown-menu dropdown-navbar">
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Software Update</span>
											<span class="pull-right">65%</span>
										</div>

										<div class="progress progress-mini">
											<div style="width:65%" class="progress-bar"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Hardware Upgrade</span>
											<span class="pull-right">35%</span>
										</div>

										<div class="progress progress-mini">
											<div style="width:35%" class="progress-bar progress-bar-danger"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Unit Testing</span>
											<span class="pull-right">15%</span>
										</div>

										<div class="progress progress-mini">
											<div style="width:15%" class="progress-bar progress-bar-warning"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Bug Fixes</span>
											<span class="pull-right">90%</span>
										</div>

										<div class="progress progress-mini progress-striped active">
											<div style="width:90%" class="progress-bar progress-bar-success"></div>
										</div>
									</a>
								</li>
							</ul>
						</li>

						<li class="dropdown-footer">
							<a href="#">
								See tasks with details
								<i class="ace-icon fa fa-arrow-right"></i>
							</a>
						</li>
					</ul>
				</li>

				<li class="purple">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<i class="ace-icon fa fa-bell icon-animated-bell"></i>
						<span class="badge badge-important">8</span>
					</a>

					<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header">
							<i class="ace-icon fa fa-exclamation-triangle"></i>
							8 Notifications
						</li>

						<li class="dropdown-content">
							<ul class="dropdown-menu dropdown-navbar navbar-pink">
								<li>
									<a href="#">
										<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<i class="btn btn-xs btn-primary fa fa-user"></i>
										Bob just signed up as an editor ..
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders
													</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
														Followers
													</span>
											<span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>
							</ul>
						</li>

						<li class="dropdown-footer">
							<a href="#">
								See all notifications
								<i class="ace-icon fa fa-arrow-right"></i>
							</a>
						</li>
					</ul>
				</li>

				<li class="green">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
						<span class="badge badge-success">5</span>
					</a>

					<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header">
							<i class="ace-icon fa fa-envelope-o"></i>
							5 Messages
						</li>

						<li class="dropdown-content">
							<ul class="dropdown-menu dropdown-navbar">
								<li>
									<a href="#" class="clearfix">
										<img src="${ctx}/assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ..
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
									</a>
								</li>

								<li>
									<a href="#" class="clearfix">
										<img src="${ctx}/assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ${ctx}.
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
									</a>
								</li>

								<li>
									<a href="#" class="clearfix">
										<img src="${ctx}/assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ${ctx}.
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
									</a>
								</li>

								<li>
									<a href="#" class="clearfix">
										<img src="${ctx}/assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ${ctx}.
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
									</a>
								</li>

								<li>
									<a href="#" class="clearfix">
										<img src="${ctx}/assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ${ctx}.
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
									</a>
								</li>
							</ul>
						</li>

						<li class="dropdown-footer">
							<a href="inbox.html">
								See all messages
								<i class="ace-icon fa fa-arrow-right"></i>
							</a>
						</li>
					</ul>
				</li>

				<!-- #section:basics/navbar.user_menu -->
				<li class="light-blue">
					<a data-toggle="dropdown" href="#" class="dropdown-toggle">
						<img class="nav-user-photo" src="${ctx}/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome,</small>

								</span>

						<i class="ace-icon fa fa-caret-down"></i>
					</a>

					<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
						<li>
							<a href="#">
								<i class="ace-icon fa fa-cog"></i>
								Settings
							</a>
						</li>

						<li>
							<a href="profile.html">
								<i class="ace-icon fa fa-user"></i>
								Profile
							</a>
						</li>

						<li class="divider"></li>

						<li>
							<a href="#">
								<i class="ace-icon fa fa-power-off"></i>
								Logout
							</a>
						</li>
					</ul>
				</li>

				<!-- /section:basics/navbar.user_menu -->
			</ul>
		</div>

		<!-- /section:basics/navbar.dropdown -->
	</div><!-- /.navbar-container -->
</div>

<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<script type="text/javascript">
		try{ace.settings.check('main-container' , 'fixed')}catch(e){}
	</script>

	<!-- #section:basics/sidebar -->
	<div id="sidebar" class="sidebar responsive">
		<script type="text/javascript">
			try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
		</script>

		<div class="sidebar-shortcuts" id="sidebar-shortcuts">
			<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
				<button class="btn btn-success">
					<i class="ace-icon fa fa-signal"></i>
				</button>

				<button class="btn btn-info">
					<i class="ace-icon fa fa-pencil"></i>
				</button>

				<!-- #section:basics/sidebar.layout.shortcuts -->
				<button class="btn btn-warning">
					<i class="ace-icon fa fa-users"></i>
				</button>

				<button class="btn btn-danger">
					<i class="ace-icon fa fa-cogs"></i>
				</button>

				<!-- /section:basics/sidebar.layout.shortcuts -->
			</div>

			<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
				<span class="btn btn-success"></span>

				<span class="btn btn-info"></span>

				<span class="btn btn-warning"></span>

				<span class="btn btn-danger"></span>
			</div>
		</div><!-- /.sidebar-shortcuts -->

		<ul class="nav nav-list">
			<li class="hover">
				<a  href="javascript:addTabs({id:'home',title:'首页',close: false,url: 'welcom.jsp'});">
					<i class="menu-icon fa fa-dashboard"></i>
					<span class="menu-text"> 首页 </span>
				</a>
			</li>
			<li class="">
				<a href="#" class="dropdown-toggle">
					<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text">
								个人信息
							</span>

					<b class="arrow fa fa-angle-down"></b>
				</a>
				<b class="arrow"></b>
				<ul class="submenu">
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-caret-right"></i>
								个人设置
							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="javascript:addTabs({id:'index',title:'修改密码',close: false,url: 'login.jsp'});">
									<i class="menu-icon fa fa-caret-right"></i>
									密码修改
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="tables.jsp" target="mainFrame">
									<i class="menu-icon fa fa-caret-right"></i>
									密码修改
								</a>

								<b class="arrow"></b>
							</li>

						</ul>
					</li>
				</ul>
			</li>
		</ul><!-- /.nav-list -->

		<!-- #section:basics/sidebar.layout.minimize -->
		<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
			<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
		</div>

		<!-- /section:basics/sidebar.layout.minimize -->
		<script type="text/javascript">
			try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
		</script>
	</div>

	<!-- /section:basics/sidebar -->
	<%--<div class="main-content">--%>

		<%--<iframe id="mainFrame" name="mainFrame" src="" style="overflow:visible;"--%>
				<%--scrolling="yes" frameborder="no" width="100%" height="650">--%>

		<%--</iframe>--%>

	<%--</div>--%>
	<div class="main-content">

		<div class="widget-box transparent" style="margin: 0px;">
			<div class="widget-header" style="background-color: #f9f9f9">
				<div class="widget-toolbar no-border active" style="float: left; padding: 0px;">
					<ul class="nav  nav-tabs nav-pills" id="myTab">
						<li id="tab-FirstPage" class="active"><a data-toggle="tab" href="#tab-menuFirstPage" aria-expanded="true"><i
								class="green ace-icon fa fa-home"></i>首页</a></li>
					</ul>
				</div>
			</div>
			<div class="widget-body">
				<div class="widget-main padding-0">
					<div id="myTabContent" class="tab-content" style="padding: 0px;">
						<h3>
							欢迎来到朗星管理系统！！
						</h3>
						<div id="tab-menuFirstPage" class="tab-pane fade" style="background-color: #fcfcfc;">

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
	window.jQuery || document.write("<script src='${ctx}/assets/js/jquery.js'>"+"<"+"/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
	window.jQuery || document.write("<script src='${ctx}/assets/js/jquery1x.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
	if('ontouchstart' in document.documentElement) document.write("<script src='${ctx}/assets/js/jquery.mobile.custom.js'>"+"<"+"/script>");
</script>
<script src="${ctx}/assets/js/bootstrap.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
<script src="${ctx}/assets/js/excanvas.js"></script>
<![endif]-->
<script src="${ctx}/assets/js/jquery-ui.custom.js"></script>
<script src="${ctx}/assets/js/jquery.ui.touch-punch.js"></script>
<script src="${ctx}/assets/js/jquery.easypiechart.js"></script>
<script src="${ctx}/assets/js/jquery.sparkline.js"></script>
<script src="${ctx}/assets/js/flot/jquery.flot.js"></script>
<script src="${ctx}/assets/js/flot/jquery.flot.pie.js"></script>
<script src="${ctx}/assets/js/flot/jquery.flot.resize.js"></script>

<!-- ace scripts -->
<script src="${ctx}/assets/js/ace/elements.scroller.js"></script>
<script src="${ctx}/assets/js/ace/elements.colorpicker.js"></script>
<script src="${ctx}/assets/js/ace/elements.fileinput.js"></script>
<script src="${ctx}/assets/js/ace/elements.typeahead.js"></script>
<script src="${ctx}/assets/js/ace/elements.wysiwyg.js"></script>
<script src="${ctx}/assets/js/ace/elements.spinner.js"></script>
<script src="${ctx}/assets/js/ace/elements.treeview.js"></script>
<script src="${ctx}/assets/js/ace/elements.wizard.js"></script>
<script src="${ctx}/assets/js/ace/elements.aside.js"></script>
<script src="${ctx}/assets/js/ace/ace.js"></script>
<script src="${ctx}/assets/js/ace/ace.ajax-content.js"></script>
<script src="${ctx}/assets/js/ace/ace.touch-drag.js"></script>
<script src="${ctx}/assets/js/ace/ace.sidebar.js"></script>
<script src="${ctx}/assets/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="${ctx}/assets/js/ace/ace.submenu-hover.js"></script>
<script src="${ctx}/assets/js/ace/ace.widget-box.js"></script>
<script src="${ctx}/assets/js/ace/ace.settings.js"></script>
<script src="${ctx}/assets/js/ace/ace.settings-rtl.js"></script>
<script src="${ctx}/assets/js/ace/ace.settings-skin.js"></script>
<script src="${ctx}/assets/js/ace/ace.widget-on-reload.js"></script>
<script src="${ctx}/assets/js/ace/ace.searchbox-autocomplete.js"></script>
<script src="${ctx}/assets/js/bootstrap-tab.js"></script>

<!-- inline scripts related to this page -->


<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="${ctx}/assets/css/ace.onpage-help.css" />
<script type="text/javascript"> ace.vars['base'] = '${ctx}'; </script>
<script src="${ctx}/assets/js/ace/elements.onpage-help.js"></script>
<script src="${ctx}/assets/js/ace/ace.onpage-help.js"></script>

</body>
</html>

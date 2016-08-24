<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="en" overflow-x:auto;overflow-y:auto;>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Login Page - Ace Admin</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${ctx}/assets/css/bootstrap.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="${ctx}/assets/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="${ctx}/assets/css/ace.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${ctx}/assets/css/ace-part2.css" />
		<![endif]-->
		<link rel="stylesheet" href="${ctx}/assets/css/ace-rtl.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${ctx}/assets/css/ace-ie.css" />
		<![endif]-->

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${ctx}/assets/js/html5shiv.js"></script>
		<script src="${ctx}/assets/js/respond.js"></script>
		<![endif]-->
	</head>

	<body class="login-layout light-login">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="ace-icon fa fa-leaf green"></i>
								<span class="red">LoSi</span>
								<span class="grey" id="id-text2">朗星商城管理系统</span>
								<h4 class="blue" id="com">www.langxing.com</h4>
							</h1>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box" class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="ace-icon fa fa-coffee green"></i>
											用户登录
										</h4>

										<div class="space-6"></div>

										<form id="loginForm" action="${ctx}/rest/login" method="post">
											<fieldset>
												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="用户名" name="userName" id="userName" />
															<i class="ace-icon fa fa-user"></i>
														</span>
												</label>

												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" name="pwd" id="pwd"/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
												</label>

												<div class="space"></div>

												<div class="clearfix">
													<label class="inline">
														<input type="checkbox" class="ace" id="rember" name="rember"/>
														<span class="lbl"> 记住我</span>
													</label>

													<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
														<i class="ace-icon fa fa-key"></i>
														<span class="bigger-110">登录</span>
													</button>
												</div>

												<div class="space-4"></div>
											</fieldset>
										</form>

										<%--快捷登陆	<div class="social-or-login center">
                                                <span class="bigger-110">Or Login Using</span>
                                            </div>

                                            <div class="space-6"></div>

                                            <div class="social-login center">
                                                <a class="btn btn-primary">
                                                    <i class="ace-icon fa fa-facebook"></i>
                                                </a>

                                                <a class="btn btn-info">
                                                    <i class="ace-icon fa fa-twitter"></i>
                                                </a>

                                                <a class="btn btn-danger">
                                                    <i class="ace-icon fa fa-google-plus"></i>
                                                </a>
                                            </div>--%>
									</div><!-- /.widget-main -->

									<div class="toolbar clearfix">
										<div>
											<a href="#" data-target="#forgot-box" class="forgot-password-link">
												<i class="ace-icon fa fa-arrow-left"></i>
												忘记密码
											</a>
										</div>

										<div>
											<a href="#" data-target="#signup-box" class="user-signup-link" >
												去注册
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>

									</div>
								</div><!-- /.widget-body -->
							</div><!-- /.login-box -->

							<div class="center">
								<h4 class="blue" id="id-company-text">&copy; 朗星商城管理系统</h4>
							</div>
							<div id="forgot-box" class="forgot-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header red lighter bigger">
											<i class="ace-icon fa fa-key"></i>
											取回密码
										</h4>

										<div class="space-6"></div>
										<p>
											输入你的电子邮件取回密码
										</p>

										<form>
											<fieldset>
												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="邮箱" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
												</label>

												<div class="clearfix">
													<button type="button" class="width-35 pull-right btn btn-sm btn-danger">
														<i class="ace-icon fa fa-lightbulb-o"></i>
														<span class="bigger-110">发送!</span>
													</button>
												</div>
											</fieldset>
										</form>
									</div><!-- /.widget-main -->

									<div class="toolbar center">
										<a href="#" data-target="#login-box" class="back-to-login-link">
											返回
											<i class="ace-icon fa fa-arrow-right"></i>
										</a>
									</div>
								</div><!-- /.widget-body -->
							</div><!-- /.forgot-box -->

							<div id="signup-box" class="signup-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header green lighter bigger">
											<i class="ace-icon fa fa-users blue"></i>
											用户注册
										</h4>

										<div class="space-6"></div>
										<p> 请输入你的信息: </p>

										<form id="registId" action="" method="post">
											<fieldset>
												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" class="form-control" placeholder="邮箱" name="email" id="email"/>
															<i class="ace-icon fa fa-envelope"></i>
														</span>
												</label>

												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="用户名" name="loginName" id="loginName"/>
															<i class="ace-icon fa fa-user"></i>
														</span>
												</label>

												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="密码" name="password" id="password"/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
												</label>

												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="确认密码" id="password2"/>
															<i class="ace-icon fa fa-retweet"></i>
														</span>
												</label>

												<label class="block">
													<input type="checkbox" class="ace"  id="is" />
														<span class="lbl">
															同意
															<a href="#">用户协议</a>
														</span>
												</label>

												<div class="space-24"></div>

												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="ace-icon fa fa-refresh"></i>
														<span class="bigger-110">重置</span>
													</button>

													<button id="aa" type="button" class="width-65 pull-right btn btn-sm btn-success" onclick="regist()">
														<span class="bigger-110">注册</span>
														<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
													</button>
												</div>
											</fieldset>
										</form>
									</div>
									<div class="toolbar center">
										<a href="#" data-target="#login-box" class="back-to-login-link">
											<i class="ace-icon fa fa-arrow-left"></i>
											返回
										</a>
									</div>
								</div><!-- /.position-relative -->
							</div>
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.main-content -->
			</div><!-- /.main-container -->
		</div>
	</div>
	<!-- inline scripts related to this page -->
	<script type="text/javascript">
		jQuery(function($) {
			$(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			});
		});
	</script>
	<%--&lt;%&ndash;用户注册事件&ndash;%&gt;--%>
	<script type="text/javascript" >
		function regist(){

			var user = $('#registId').serializeArray();
			//var user = $('#registId').form().val();
			//alert(user);
			//alert(user[0]);
			$.ajax({
				type:"POST",
				url : "${ctx}/rest/regist/regist",
				data : user,
				success :  function(data){
					if(confirm("注册成功，是否去登录页面？")){
						window.location.href="login"
					}
				}
			})
		}
	</script>
	</body>
</html>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="UTF-8">
<link rel='stylesheet prefetch'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
<link rel='stylesheet prefetch'
	href='http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css'>
<link rel="stylesheet" href='<c:url value="/css/login.css"/>'>

<script
	src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='<c:url value="/js/login.js"/>'></script>

<div class="loginbody">
	<div id="mainWrap">
		<div id="xlogin">
			<h1>
				<i class="fa fa-lock"></i> Please Login
			</h1>
			<h3>Please login or register now!</h3>
			<form action="<c:url value='j_spring_security_check'/>" id="logForm"
				method="post" class="form-horizontal">
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-user fa-fw"></i></span> <input name="j_username"
								id="j_username" type="text" class="form-control input-lg"
								placeholder="Login" autocomplete="off">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
							<input name="j_password" id="j_password" type="password"
								class="form-control input-lg" placeholder="Password"
								autocomplete="off">
						</div>
					</div>
				</div>
				<div class="form-group formSubmit">
					<div class="col-sm-7">
						<div class="checkbox">
							<label> <input type="checkbox" checked autocomplete="off">
								Keep me logged in
							</label>
						</div>
					</div>
					<div class="col-sm-5 submitWrap">
						<input id="login" name="submit" class="btn btn-primary btn-lg"
							type="submit" value="Login Now!" />
					</div>
				</div>
				<hr>
				<div class="form-group formNotice">
					<div class="col-xs-12">
						<h3 class="text-center">
							Don't have an account? <i class="fa fa-chevron-right "></i> <span>
								Register now!</span>
						</h3>
					</div>
				</div>
			</form>
			<form action="<c:url value="/user/saveAdd"/>" name="user"
				id="regForm" method="post" class="form-horizontal"
				enctype="multipart/form-data">
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-user fa-fw"></i></span> <input name="firstname"
								type="text" class="form-control input-lg"
								placeholder="FirstName" autocomplete="off">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-user fa-fw"></i></span> <input name="secondname"
								type="text" class="form-control input-lg"
								placeholder="SecondName" autocomplete="off">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-envelope fa-fw"></i></span> <input name="login"
								type="text" class="form-control input-lg" placeholder="Login"
								autocomplete="off">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="fa fa-envelope fa-fw"></i></span> <input name="email"
								type="text" class="form-control input-lg"
								placeholder="E-mailadres" autocomplete="off">
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-12">
						<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
							<input name="password" type="password"
								class="form-control input-lg" placeholder="Password"
								autocomplete="off" required>
						</div>
					</div>
				</div>
				<div class="form-group formSubmit">
					<div class="col-sm-7">
						<div class="checkbox">
							<label> <input type="checkbox" autocomplete="off"
								checked="yes">I agree with the terms and conditions<input
								id="2" type="hidden" name="role" value="rolename">
							</label>
						</div>
					</div>
					<div class="col-sm-5 submitWrap">
						<input name="submit" class="btn btn-lg btn-success" type="submit"
							value="Register Now!" />
					</div>
				</div>
				<hr>
				<div class="form-group formNotice2">
					<div class="col-xs-12">
						<h3>
							<p class="text-center">
								Already have an account? <i class="fa fa-chevron-right "></i> <span>Login
									now!</span>
							</p>
						</h3>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>









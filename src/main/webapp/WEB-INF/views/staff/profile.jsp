<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>MMEC - Staff Profile</title>

<link rel="shortcut icon" href="assets/symbol.png">

<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400;1,500;1,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" href="assets/plugins/feather/feather.css">

<link rel="stylesheet" href="assets/plugins/icons/flags/flags.css">

<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

	<div class="main-wrapper">

		<div class="header">

			<div class="header-left">
				<a
					href="staff-dashboard?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}"
					class="logo"
					>
					<img src="assets/mmec1.jpg" alt="Logo">
				</a> <a
					href="staff-dashboard?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}"
					class="logo logo-small"> <img src="assets/symbol.png"
					alt="Logo" width="30" height="30">
				</a>
			</div>

			<div class="menu-toggle">
				<a href="javascript:void(0);" id="toggle_btn"> <i
					class="fas fa-bars"></i>
				</a>
			</div>

			<div class="top-nav-search">
				<form>
					<input type="text" class="form-control" placeholder="Search here">
					<button class="btn" type="submit">
						<i class="fas fa-search"></i>
					</button>
				</form>
			</div>


			<a class="mobile_btn" id="mobile_btn"> <i class="fas fa-bars"></i>
			</a>


			<ul class="nav user-menu">





				<li class="nav-item dropdown has-arrow new-user-menus"><a
					href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
						<span class="user-img"> <c:choose>
								<c:when test="${image!=null }">
									<img class="rounded-circle"
										src="data:image/jpeg;base64,${image}" width="31"
										alt="${name }">
								</c:when>
								<c:otherwise>
									<img class="rounded-circle"
										src="assets/img/profiles/avatar-01.jpg" width="31"
										alt="${name }">
								</c:otherwise>
							</c:choose>
							<div class="user-text">
								<h6>${name }</h6>
								<p class="text-muted mb-0">Staff</p>
							</div>
					</span>
				</a>
					<div class="dropdown-menu">
						<div class="user-header">
							<div class="avatar avatar-sm">
								<c:choose>
									<c:when test="${image!=null }">
										<img class="rounded-circle"
											src="data:image/jpeg;base64,${image}" width="31"
											alt="${name }">
									</c:when>
									<c:otherwise>
										<img class="rounded-circle"
											src="assets/img/profiles/avatar-01.jpg" width="31"
											alt="${name }">
									</c:otherwise>
								</c:choose>
							</div>
							<div class="user-text">
								<h6>${name }</h6>
								<p class="text-muted mb-0">Staff</p>
							</div>
						</div>
						<a class="dropdown-item"
							href="profile?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}">My
							Profile</a> <a class="dropdown-item" href="log-out">Logout</a>
					</div></li>

			</ul>

		</div>


		<div class="sidebar" id="sidebar">
			<div class="sidebar-inner slimscroll">
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li class="menu-title"><span>Main Menu</span></li>
						<li class="submenu"><a href="#"><i class="feather-grid"></i>
								<span> Dashboard</span> <span class="menu-arrow"></span></a>
							<ul>
								<li><a
									href="staff-dashboard?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}">Staff
										Dashboard</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i
								class="fas fa-graduation-cap"></i> <span> Staff</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a
									href="view-staff?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}">View
										Info</a></li>



							</ul></li>

						<li class="submenu"><a href="#"><i
								class="fas fa-building"></i> <span> Departments</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="departments">Department List</a></li>

							</ul></li>

						<li class="submenu active"><a href="#"><i
								class="fas fa-book-reader"></i> <span> Subjects</span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a
									href="view-subjects?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}"
									class="active">Subject List</a></li>
								<li><a
									href="add-subject?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}">Subject
										Add</a></li>

							</ul></li>



						<li><a href="fees"><i class="fas fa-comment-dollar"></i>
								<span>Fees</span></a></li>
						<li class="submenu"><a href="#"><i class="feather-grid"></i>
								<span> Exam</span> <span class="menu-arrow"></span></a>
							<ul>
								<li><a
									href="view-exams?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}">Exam
										List</a></li>
								<li><a
									href="exam-declaration?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}">Exam
										Declaration</a></li>
								<li><a
									href="add-exam-result?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}">
										IA Exam Results</a></li>
								<li><a
									href="view-result?usn=${usn}&name=${name}&lastname=${lastname }&staffregid=${staffregid}">
										Exam Results</a></li>
							</ul></li>






						<li class="submenu"><a href="#"><i
								class="fas fa-shield-alt"></i> <span> Authentication </span> <span
								class="menu-arrow"></span></a>
							<ul>
								<li><a href="/">Login</a></li>
								<li><a href="registration-Staff">Register</a></li>
								<li><a href="forgot-password">Forgot Password</a></li>

							</ul></li>




					</ul>
				</div>
			</div>
		</div>

		<c:forEach var="staff" items="${staff}">
			<div class="page-wrapper">
				<div class="content container-fluid">

					<div class="page-header">
						<div class="row">
							<div class="col">
								<h3 class="page-title">Profile</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a
										href="staff-dashboard?usn=${staff.usn}&name=${staff.firstName}&lastname=${staff.lastName}&staffregid=${staffregid}">Dashboard</a></li>
									<li class="breadcrumb-item active">Profile</li>
								</ul>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<div class="profile-header">
								<div class="row align-items-center">
									<div class="col-auto profile-image">
										<a href="#"> <c:choose>
												<c:when test="${image!=null }">
													<img class="rounded-circle"
														src="data:image/jpeg;base64,${image}" width="31"
														alt="${name }">
												</c:when>
												<c:otherwise>
													<img class="rounded-circle"
														src="assets/img/profiles/avatar-01.jpg" width="31"
														alt="${name }">
												</c:otherwise>
											</c:choose>
										</a>
									</div>
									<div class="col ms-md-n2 profile-user-info">
										<h4 class="user-name mb-0">
											<span>Prof. ${staff.firstName} ${staff.lastName}</span>
										</h4>
										<h6 class="text-muted">
											<span>${staff.department }</span>
										</h6>


									</div>

								</div>
							</div>
							<div class="profile-menu">
								<ul class="nav nav-tabs nav-tabs-solid">
									<li class="nav-item"><a class="nav-link active"
										data-bs-toggle="tab" href="#per_details_tab">About</a></li>
									<li class="nav-item"><a class="nav-link"
										data-bs-toggle="tab" href="#password_tab">Password</a></li>
								</ul>
							</div>
							<div class="tab-content profile-tab-cont">

								<div class="tab-pane fade show active" id="per_details_tab">

									<div class="row">
										<div class="col-lg-9">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title d-flex justify-content-between">
														<span>Personal Details</span>
													</h5>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-end mb-0 mb-sm-3">Name</p>
														<p class="col-sm-9">
															<span>Prof. ${staff.firstName} ${staff.lastName}</span>
														</p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-end mb-0 mb-sm-3">Date
															of Birth</p>
														<p class="col-sm-9">${staff.dob }</p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-end mb-0 mb-sm-3">Email
															ID</p>
														<p class="col-sm-9">
															<a class="__cf_email__"
																data-cfemail="a1cbcec9cfc5cec4e1c4d9c0ccd1cdc48fc2cecc">${staff.email }</a>
														</p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-end mb-0 mb-sm-3">Mobile</p>
														<p class="col-sm-9">${staff.mobile }</p>
													</div>
													<div class="row">
														<p class="col-sm-3 text-muted text-sm-end mb-0">Address</p>
														<p class="col-sm-9 mb-0">${staff.address }</p>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-3"></div>
									</div>

								</div>


								<div id="password_tab" class="tab-pane fade">
									<div class="card">
										<div class="card-body">
											<h5 class="card-title">Change Password</h5>
											<div class="row">
												<div class="col-md-10 col-lg-6">
													<form action="staff-change-password" method="post">
														<input type="hidden" name="id" value="${staff.id }" /> <input
															type="hidden" name="staffregid" value="${staffregid}" />
														<div class="form-group">
															<label>Old Password</label> <input type="text"
																class="form-control" name=oldPassword><span>${error }</span>
														</div>
														<div class="form-group">
															<label>New Password</label> <input type="text"
																class="form-control" name=newPassword>
														</div>
														<div class="form-group">
															<label>Confirm Password</label> <input type="text"
																class="form-control" name=confirmPassword>
														</div>
														<button class="btn btn-primary" type="submit">Save
															Changes</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

				</div>
			</div>
		</c:forEach>
	</div>

	<script>
		window.onload = function() {
			<c:set var="status" value="${popup}"/>
			<c:choose>
			<c:when test="${status==true}">
			var message = "<c:out value='You Have Registered Successefully With MMEC. Please Refer Your Email For Password' />";
			alert(message);
			</c:when>
			<c:otherwise>
			// No alert to display
			</c:otherwise>
			</c:choose>

		};
	</script>



	<script data-cfasync="false"
		src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="assets/js/jquery-3.6.0.min.js"></script>

	<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="assets/js/feather.min.js"></script>

	<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<script src="assets/js/script.js"></script>
</body>
</html>
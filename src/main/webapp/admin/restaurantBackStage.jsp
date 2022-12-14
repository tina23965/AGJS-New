<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="agjs.bean.restaurant.*"%>


<%
RestaurantADVO restaurantADVO = (RestaurantADVO) request.getAttribute("restaurantADVO");
%>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link rel="icon" href="img/logo.ico" type="image/x-icon" />
<title>後台管理 | 餐廳管理</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<link href="css/ResuaurantBack.css" rel="stylesheet" />
<link href="css/sb-admin-2.min.css" rel="stylesheet" />
</head>

<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">
		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">
			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">後台管理</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0" />

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>公告管理</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0" />

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>訂單修改管理</span></a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0" />

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="roomManagement.html"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>房間管理</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0" />
			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>行程管理</span></a>
			</li>
			<!-- Divider -->
			<hr class="sidebar-divider my-0" />
			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="report.html"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>財務報表</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0" />
			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="restaurantBackStage.html"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>餐廳管理</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider my-0" />
			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="index.html"> <i class="fas fa-fw fa-tachometer-alt"></i> <span>客服</span></a>
			</li>
			<!-- Divider -->
			<hr class="sidebar-divider" />
			<!-- Heading -->
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<!-- Main Content -->
			<div id="content">
				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">管理員</span> <img
								class="img-profile rounded-circle"
								src="image/undraw_profile.svg" />
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>
					</ul>
				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4"></div>

					<!-- 餐廳資訊介面 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h4 class="font-weight-bold text-primary">餐廳資訊介面</h4>
							<button type="button"
								class="btn btn-primary btn-danger btn-icon-split modal-body " style="width: 50px">
								<a href="restaurant.jsp">更新</a>
								</button>
								 <button type="button"
								class="btn btn-primary btn-danger btn-icon-split modal-body " style="width: 100px">
								<a href="restaurantTimeMoney.jsp">更新價錢</a>
								</button>

						<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
										<tr>
											<th>餐廳名稱</th>
											<th>餐廳照片</th>
											<th>樓層</th>
											<th>營業時間</th>
											<th>餐廳介紹</th>
											<th>介紹新增時間</th>
											<th>編輯</th>
										</tr>
								</thead>
								<tbody id="roomStyle">
										<tr class="item1">
											<td>JAVA STEAK HOUSE</td>
											<td><img style="width: 500px;"
												src="./img/hotelRSRT-1.png"></td>
											<td>1F</td>
											<td>12:00~21:00</td>
											<td>一樓的Java Steak House為美式餐廳</td>
											<td>2022-08-16 04:19:20</td>
											<td>
												<button type="button" class="btn btn-link ">修改</button> /
												<button type="button" class="btn btn-link ">刪除</button>
											</td>
										</tr>
										<tr class="item1">
											<td>Monohiya</td>
											<td><img style="width: 500px;"
												src="./img/hotelRSRT-2.png"></td>
											<td>2F</td>
											<td>12:00~21:00</td>
											<td>
												<p>
													谷關認為從台灣和日本的角度，重新認識並傳達日常食材魅力是最重要的事情。餐點中隨處可見台灣常見的茶葉、水果等食材，並以日本會席料理方式呈現。日本會席料理是體驗泡湯文化的一部分，其精神包含嚴選頂級食材、細膩的烹調工法，以及襯托料理的精緻器皿，缺一不可。以有皇帝魚之稱的鱘龍魚為例，別於台灣傳統、我們採用日式烹調法帶您重新品嚐魚的美味。
													承襲百年溫泉旅館的歷史思維與風格，為您獻上嶄新的日本會席料理。一場由美食編織的旅行回憶。餐廳位於露台的一端，賓客可以感受微風吹拂，欣賞綠意盎然的水之庭園。依照不同場合與需求，能容納12人的獨立包廂。挑高的餐廳屋頂、富開放感的現代空間設計，讓您放鬆心情、享受難忘的用餐時光。
												</p>
											</td>
											<td>2022-06-22 23:00:00</td>
											<td>
												<button type="button" class="btn btn-link ">修改</button> /
												<button type="button" class="btn btn-link ">刪除</button>
											</td>
										</tr>
										<tr class="item1">
											<td>102 BAR</td>
											<td><img style="width: 500px;"
												src="./img/hotelRSRT-3.png"></td>
											<td>50F</td>
											<td>12:00~21:00</td>
											<td>50樓的102 BAR為您帶來歡樂輕鬆的用餐氛圍。透過全景落地窗,
												一邊悠閒地享受美食, 一邊欣賞林蔭大道美景。</td>
											<td>2022-06-22 23:00:00</td>
											<td>
												<button type="button" class="btn btn-link ">修改</button> /
												<button type="button" class="btn btn-link ">刪除</button>
											</td>
										</tr>
									</tbody>
							</table>
					<!-- 餐廳價錢介面 -->		
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
										<tr>
											<th>餐廳名稱</th>
											<th>價錢</th>
											<th>價錢名稱</th>
										</tr>
								</thead>
								<tbody id="roomStyle">
										<tr class="item1">
											<td>JAVA STEAK HOUSE</td>
											<td>1280</td>
											<td>雙人午餐組合</td>
										</tr>
									</tbody>
							</table>

							</div>
						</div>
					<!-- 餐廳優惠介面 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h4 class="font-weight-bold text-primary">餐廳優惠介面</h4>
							<button type="button"
								class="btn btn-primary btn-danger btn-icon-split modal-body " style="width: 50px">
								<a href="restaurantAd.jsp">新增</a></button>

							<!-- 彈窗 -->
							<div class="modal fade bd-example-modal-lg1" id="exampleModal"
								tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
								aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">更新優惠資訊</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">
											<div class="container-fluid ">
												<div class="row card-header ">
													<div class="col-md-12">
														<div class="mb-3">
															<input type="text" class="form-control"
																id="exampleFormControlInput1" placeholder="優惠名稱">
														</div>
														<div class="mb-3">
															<textarea class="form-control"
																id="exampleFormControlTextarea1" rows="3"
																placeholder="優惠介紹"></textarea>
														</div>

													</div>
													<!-- <div class="col-md-4 ml-auto">.col-md-4 .ml-auto</div> -->
												</div>
												<div class="row" style="width: 2000px">
													<div class="col-6 d-flex align-items-center"
														style="padding: 10px">
														<span style="color: blacks;">餐廳&nbsp&nbsp&nbsp&nbsp</span>
														<div class="form-check form-check-inline">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox1" value="springPool"> <label
																class="form-check-label" for="inlineCheckbox1">Java
																Steak House</label>
														</div>
														<div class="form-check form-check-inline">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox1" value="springPool"> <label
																class="form-check-label" for="inlineCheckbox1">Monohiya</label>
														</div>
														<div class="form-check form-check-inline">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox1" value="springPool"> <label
																class="form-check-label" for="inlineCheckbox1">102
																BAR</label>
														</div>
													</div>
												</div>

												<div class="row card">
													<div class="card-header">到期時間</div>
													<div class="col-md-12 card-body ">
														<div class="form-check form-check-inline">
															<input class="form-check-input" type="checkbox"
																id="inlineCheckbox1" value="springPool"> <label
																class="form-check-label" for="inlineCheckbox1">12:00~21:00</label>
														</div>
													</div>
												</div>
												<div class="row ">
													<div class="col-sm-6 d-flex align-items-center"
														style="padding: 10px">
														<span>優惠照片 &nbsp</span>
														<div class="col-sm-6 custom-file">
															<input type="file" class="room-file-input" id="roomFile"
																name="roomFile" multiple> <label
																class="room-file-label" for="roomFile"></label>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">關閉</button>
											<button type="button" class="btn btn-primary">新增</button>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- 頁籤按鈕 -->
						<div class="card-body">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead>
									<tr>
										<th>優惠編號</th>
										<th>餐廳名稱</th>
										<th>優惠名稱</th>
										<th>優惠照片</th>
										<th>優惠介紹</th>
										<th>優惠到期時間</th>
										<th>編輯</th>
									</tr>
								</thead>
								<tbody id="roomStyle">
									<tr class="item1">
										<td>14000</td>
										<td>JAVA STEAK HOUSE</td>
										<td>慶端午</td>
										<td><img style="width: 200px;"
											src=""></td>
										<td>北部粽?</td>
										<td>2022-12-31 00:00:00</td>
										<td>
											<button type="button" class="btn btn-link ">修改</button> /
											<input type="hidden" name="action" value="delete"> <input
												type="submit" value="刪除" class="btn btn-primary">
										</td>
									</tr>
									<tr class="item1">
										<td>14001</td>
										<td>JAVA STEAK HOUSE</td>
										<td>慶端午，肉粽吃起來</td>
										<td><img style="width: 200px;"
											src="./img/meat.jpg"></td>
										<td>你吃的是北部粽?還是南部粽?快來JAVA STEAK HOUSE品嘗創新料理美式肉粽</td>
										<td>2022-06-22 00:00:00</td>
										<td>
											<button type="button" class="btn btn-link ">修改</button> /
											<button type="button" class="btn btn-link ">刪除</button>
										</td>
									</tr>
								</tbody>
							</table>
							<div></div>
						</div>




						<!-- 頁底 copyright -->
						<div class="card-body" id="roomList">
							<footer class="sticky-footer bg-white">
								<div class="container my-auto">
									<div class="copyright text-center my-auto">
										<span class="copyright"> &copy; 2022, A GooD Journey
											SySTem, Inc.或其附屬公司</span>
									</div>
								</div>
							</footer>
						</div>
						<!-- End of Content Wrapper -->
					</div>
					<!-- End of Page Wrapper -->

					<!-- 至頂Button-->
					<a class="scroll-to-top rounded" href="#page-top"> <i
						class="fas fa-angle-up"></i>
					</a>

					<!-- 登出按鈕-->
					<div class="modal fade" id="logoutModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Ready to
										Leave?</h5>
									<button class="close" type="button" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
								</div>
								<div class="modal-body">Select "Logout" below if you are
									ready to end your current session.</div>
								<div class="modal-footer">
									<button class="btn btn-secondary" type="button"
										data-dismiss="modal">Cancel</button>
									<a class="btn btn-primary" href="login.html">Logout</a>
								</div>
							</div>
						</div>
					</div>

					<!-- Bootstrap core JavaScript-->
					<script src="vendor/jquery/jquery.min.js"></script>
					<!-- 彈窗 -->
					<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

					<!-- Core plugin JavaScript-->
					<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

					<!-- Custom scripts for all pages-->
					<script src="js/sb-admin-2.min.js"></script>

					<!-- Page level plugins -->
					<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

					<!-- Page level custom scripts -->
					<script src="js/demo/datatables-demo.js"></script>
</body>

</html>
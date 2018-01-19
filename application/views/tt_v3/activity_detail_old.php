<html>
<head lang="en">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Activity - Treks and Tracks</title>

	<link href="img/favicon.144x144.png" rel="apple-touch-icon" type="image/png" sizes="144x144">
	<link href="img/favicon.114x114.png" rel="apple-touch-icon" type="image/png" sizes="114x114">
	<link href="img/favicon.72x72.png" rel="apple-touch-icon" type="image/png" sizes="72x72">
	<link href="img/favicon.57x57.png" rel="apple-touch-icon" type="image/png">
	<link href="img/favicon.png" rel="icon" type="image/png">
	<link href="img/favicon.ico" rel="shortcut icon">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<!--	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">-->

	<link
		href='https://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,500italic,700,700italic&subset=latin,cyrillic'
		rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="/bootstrap4/css/green.css">
	<link rel="stylesheet" href="/bootstrap4/css/my_style.css">

	<!--	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>-->
	<link rel="stylesheet" href="/bootstrap4/css/bootstrapValidator.min.css">
	<link rel="stylesheet" href="/bootstrap4/css/btn-3.8.css">

	<script type="text/javascript" charset="UTF-8">
		/* <![CDATA[ */
		try {
			if (undefined == xajax.config) xajax.config = {};
		} catch (e) {
			xajax = {};
			xajax.config = {};
		}
		;
		xajax.config.requestURI = "http://trektracks.dev/index.php/tt_v3/";
		xajax.config.statusMessages = false;
		xajax.config.waitCursor = true;
		xajax.config.version = "xajax 0.5";
		xajax.config.defaultMode = "asynchronous";
		xajax.config.defaultMethod = "POST";
		xajax.config.JavaScriptURI = "http://trektracks.dev/js_tt/";
		/* ]]> */
	</script>
	<script type="text/javascript" src="http://trektracks.dev/js_tt/xajax_js/xajax_core.js" charset="UTF-8"></script>
	<script type="text/javascript" charset="UTF-8">
		/* <![CDATA[ */
		window.setTimeout(
			function () {
				var scriptExists = false;
				try {
					if (xajax.isLoaded) scriptExists = true;
				}
				catch (e) {
				}
				if (!scriptExists) {
					alert("Error: the xajax Javascript component could not be included. Perhaps the URL is incorrect?\nURL: http://trektracks.dev/js_tt/xajax_js/xajax_core.js");
				}
			}, 2000);
		/* ]]> */
	</script>

	<script type='text/javascript' charset='UTF-8'>
		/* <![CDATA[ */
		xajax_form_contact = function () {
			return xajax.request({xjxfun: 'form_contact'}, {parameters: arguments});
		};
		xajax_verify_promo_code = function () {
			return xajax.request({xjxfun: 'verify_promo_code'}, {parameters: arguments});
		};
		xajax_getProducts = function () {
			return xajax.request({xjxfun: 'getProducts'}, {parameters: arguments});
		};
		xajax_getGears = function () {
			return xajax.request({xjxfun: 'getGears'}, {parameters: arguments});
		};
		/* ]]> */
	</script>
	<!--<script src="http://trektracks.dev/js_tt/xajax_js/xajax_debug.js"></script>-->
	<script defer='defer' id='cjax_lib' type='text/javascript'
	        src='http://trektracks.dev/cjax/core/js/cjax-5.8.min.js'></script>

</head><!--<script src="/bootstrap4/js/main.js"></script>-->

<script>

	$(document).ready(function () {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
<!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">-->
<body>
<style>
	.site-header {
		position: absolute;
		left: 0;
		top: 20px;
		width: 100%;
		color: #fff;
		line-height: 52px;
		z-index: 20;
	}

	.site-header-container {
		background: white /*#00a998 */;
	}

	.site-menu {
		font-family: 'Code Pro LC', sans-serif;
		font-weight: 500;
		color: black;
	}

	.site-menu a {
		text-decoration: none;
		color: black;
	}

	.btn {
		height: 56px;
		border: 3px solid #00a998;
		line-height: 50px;
		padding: 2px 25px 0;
		color: #00a998;
		font-size: 1.125rem;
		font-weight: 500
	}

	.btn:hover {
		background-color: #00a998;
		color: #fff
	}

	.btn.btn-fill {
		color: #000;
		background-color: #B5DA83;
		border-color: #B5DA83 /*#b1f03e */
	}

	.btn.btn-fill:hover {
		background-color: #96df11; /* #96df11; */
		border-color: #96df11; /*#96df11*/
	}

	.site-header.fixed .btn.btn-fill {
		background-color: white; /* #96df11; */
		border-color: #B5DA83; /*#96df11*/

		/*background-color: #00a998;*/
		/*border-color: #00a998;*/
		color: black;
	}

	.site-header.fixed .btn.btn-fill:hover {
		background-color: #96df11; /* #96df11; */
		border-color: #96df11; /*#96df11*/
		color: black;
	}

	.site-header.fixed .site-menu a {
		text-decoration: none;
		color: black /* #00a998 */;
	}

	.site-header.fixed .site-menu a:hover {
		text-decoration: none;
		color: #6BAE3C; /* #00a998 */;
	}

	.site-menu a:hover {
		text-decoration: none;
		color: #6BAE3C; /* #b1f03e*/
	}

	.site-menu a.current {
		color: #b1f03e
	}

	.card-item .card-item-caption h1, .card-item .card-item-caption h2, .card-item .card-item-caption h3, .card-item .card-item-caption h4, .card-item .card-item-caption h5, .card-item .card-item-caption h6 {
		position: absolute;
		left: 0;
		bottom: 0;
		width: 100%;
		margin: 0;
		font-weight: 500;
		font-size: 1.125rem;
		padding: 15px;
	}

</style>

<!--<script src="/bootstrap4/js/main.js"></script>-->


<div class="hidden-md-down">

	<header class="site-header-container" id="section-1">

		<div class="site-header">
			<div class="site-header-collapsed">
				<div class="site-header-collapsed-in">
					<div class="container">
						<div class="row">
							<div class="col-md-4 col-xs-12">

								<a href="http://trektracks.dev/tt_v3"><img
										src="http://trektracks.dev/images/img-header-logo.png"
										alt="Logo"></a>
							</div>
							<div class="col-md-5 col-xs-12">
								<div class="site-header-right" style="padding-top: 10px">
									<nav class="site-menu">
										<ul>
											<li><a href=http://trektracks.dev/tt_v3><span>Home</span></a></li>
											<li>
												<a href=http://trektracks.dev/tt_v3/index/#top><span>Classes</span></a>
											</li>
											<li>
												<a href="http://trektracks.dev/menu_pages_v3/about_us"><span>About Us</span></a>
											</li>
										</ul>
									</nav>

								</div>
							</div>
							<div class="col-md-3 col-xs-12">
								<button type="button" class="btn btn-fill btn-sm btn-block" data-toggle="modal"
								        data-target="#myModal">
									Have a Voucher?
								</button>
								<button type="button" class="btn btn-fill btn-sm btn-block" data-toggle="modal"
								        data-target="#downloads">
									Download Forms
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="site-header-clone">
				<div class="container">
					<div class="site-logo">Treksandtracks</div>
					<button type="button" class="burger">
						<span></span>
						<span></span>
						<span></span>
					</button>
				</div>
			</div>
		</div>
	</header>
</div>
<div class="hidden-md-up">
	<nav class="navbar">
		<ul>
			<li class="nav-item"><a class="nav-link" href=http://trektracks.dev/tt_v3><span>Home</span></a></li>
			<li class="nav-item">
				<a class="nav-link" href=http://trektracks.dev/tt_v3/index/#top><span>Classes</span></a>
			</li>
			<li class="nav-item"><a class="nav-link"
			                        href="http://trektracks.dev/menu_pages_v3/about_us"><span>About Us</span></a>
			</li>
		</ul>
	</nav>
</div>

<style>
	.bootstrap-demo {
		margin: 10px;
	}
</style>
<!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Voucher Redemption Instructions</h4>
			</div>
			<div class="modal-body">

				<p>1. Select the 'Activity' which you have a voucher for</p>
				<p>2. Select 'Book Now' on the activity page</p>
				<p>3. Select location and date </p>
				<p>4. Select the number of participants from the drop down menu</p>
				<p>5. Enter your <b>voucher#</b> into the 'Promotion Code' field- wait for system to recognize the code.
				</p>
				<p>6. Click continue</p>
				<p>7. Enter participant information</p>
				<p>8. Click 'Continue'</p>
				<p>9. Confirm your booking</p>
				<p> Present voucher upon arrival.</p>
				<p> Enjoy!</p>

				<h3>Voucher Expiring Instructions</h3>

				<p><b>Buy yourself more time to take a class by extending your voucher expiration date!</b></p>

				<p>For only $25 we will extend your expiration date for 6 months!</p>
				<p>To do this, email your voucher code(s) to <a href="mailto:info@treksandtracks.com">info@treksandtracks.com</a>
					and tell us that you need an extension.</p>
			</div>
			<!-- <div class="modal-footer">
				 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				 <button type="button" class="btn btn-primary">Save changes</button>
			 </div>-->
		</div>
	</div>
</div>
<div class="modal fade" id="downloads" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Downloads</h4>
			</div>
			<div class="modal-body">
				<ul class="footer-list">
					<li><a href="http://trektracks.dev/attachment_files/liability waiver back packing.pdf" download>Backpacking
							liability form</a></li>
					<li><a href="http://trektracks.dev/attachment_files/Rock climbing liability form.pdf"
					       download>Rock climbing liability form</a></li>
					<li>
						<a href="http://trektracks.dev/attachment_files/Backpacking General Gear list.docx"
						   download>Overnight backpacking gear list</a></li>
					<li><a href="http://trektracks.dev/attachment_files/Half Dome gear list.docx"
					       download>Half Dome gear list</a></li>
					<li>
						<a href="http://trektracks.dev/attachment_files/Wilderness Survival Class Gear list.docx"
						   download>Yosemite 3 day survival course gear list</a></li>
				</ul>

			</div>
			<!-- <div class="modal-footer">
				 <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				 <button type="button" class="btn btn-primary">Save changes</button>
			 </div>-->
		</div>
	</div>
</div>
<section class="section" id="section-7">
	<div class="container">
		<h1 class="page-header">Choose Location and Time</h1>
		<div class="row">

			<div class="col-md-7">
				<div class="panel-group" id="location1">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse"
							                           data-parent="#location1"
							                           href="#collapse1">
									Treks and Tracks Headquarters </a></h4>
						</div>
						<div id="collapse1" class="panel-body collapse in">
							<div class="panel-inner">

								<div class="panel-group" id="month1">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse"
											                           data-parent="#month1"
											                           href="#collapseInner11">
													December, 2016 </a></h4>
										</div>
										<div id="collapseInner11" class="panel-body collapse in">
											<div class="panel-inner btns-group">

												<div class="row">

													<div class="col-md-3">


														<p class="book_it1" data-toggle="modal"
														   data-target="#myModal11">Sat, Dec 31</div>
													<div class="col-md-3">
														<span class="label label-primary"> 18 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button disabled type="button"
														        class="btn btn-fill btn-sm book_it1"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal11">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it1').tooltip({
															title: '<span style="color:#00F" >Please call <span style="color:#C00">(650) 557-4893 </span> to make a last minute reservation! </span>',
															html: true,
															placement: "top"
														});
													});
												</script>


											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="panel-group" id="location2">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse"
							                           data-parent="#location2"
							                           href="#collapse2">
									Ojai backpacking </a></h4>
						</div>
						<div id="collapse2" class="panel-body collapse in">
							<div class="panel-inner">

								<div class="panel-group" id="month2">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse"
											                           data-parent="#month2"
											                           href="#collapseInner21">
													January, 2017 </a></h4>
										</div>
										<div id="collapseInner21" class="panel-body collapse in">
											<div class="panel-inner btns-group">

												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal220">Sat, Jan 21</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it2"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal220">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it2').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


											</div>
										</div>
									</div>
								</div>

								<div class="panel-group" id="month3">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse"
											                           data-parent="#month3"
											                           href="#collapseInner31">
													February, 2017 </a></h4>
										</div>
										<div id="collapseInner31" class="panel-body collapse in">
											<div class="panel-inner btns-group">

												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal221">Sat, Feb 4</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it3"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal221">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it3').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal222">Sat, Feb 18</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it4"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal222">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it4').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


											</div>
										</div>
									</div>
								</div>

								<div class="panel-group" id="month4">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse"
											                           data-parent="#month4"
											                           href="#collapseInner41">
													March, 2017 </a></h4>
										</div>
										<div id="collapseInner41" class="panel-body collapse in">
											<div class="panel-inner btns-group">

												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal223">Sat, Mar 4</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it5"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal223">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it5').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal224">Sat, Mar 11</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it6"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal224">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it6').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal225">Sat, Mar 18</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it7"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal225">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it7').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal226">Sat, Mar 25</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it8"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal226">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it8').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


											</div>
										</div>
									</div>
								</div>

								<div class="panel-group" id="month5">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse"
											                           data-parent="#month5"
											                           href="#collapseInner51">
													April, 2017 </a></h4>
										</div>
										<div id="collapseInner51" class="panel-body collapse in">
											<div class="panel-inner btns-group">

												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal227">Sat, Apr 1</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it9"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal227">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it9').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal228">Sat, Apr 8</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it10"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal228">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it10').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal229">Sat, Apr 15</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it11"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal229">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it11').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal230">Sat, Apr 22</div>
													<div class="col-md-3">
														<span class="label label-primary"> 10 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it12"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal230">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it12').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal231">Sat, Apr 29</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it13"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal231">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it13').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


											</div>
										</div>
									</div>
								</div>

								<div class="panel-group" id="month6">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse"
											                           data-parent="#month6"
											                           href="#collapseInner61">
													May, 2017 </a></h4>
										</div>
										<div id="collapseInner61" class="panel-body collapse in">
											<div class="panel-inner btns-group">

												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal232">Sat, May 6</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it14"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal232">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it14').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal233">Sat, May 13</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it15"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal233">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it15').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal234">Sat, May 20</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it16"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal234">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it16').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal235">Sat, May 27</div>
													<div class="col-md-3">
														<span class="label label-primary"> 12 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it17"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal235">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it17').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


											</div>
										</div>
									</div>
								</div>

								<div class="panel-group" id="month7">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title"><a class="panel-toggle" data-toggle="collapse"
											                           data-parent="#month7"
											                           href="#collapseInner71">
													June, 2017 </a></h4>
										</div>
										<div id="collapseInner71" class="panel-body collapse in">
											<div class="panel-inner btns-group">

												<div class="row">

													<div class="col-md-3">


														<p class="" data-toggle="modal"
														   data-target="#myModal236">Sat, Jun 3</div>
													<div class="col-md-3">
														<span class="label label-primary"> 11 </span> spots</p>
													</div>
													<div class="col-md-3">

														<button type="button" class="btn btn-fill btn-sm book_it18"
														        data-toggle="modal"
														        data-toggle="tooltip"
														        data-target="#myModal236">
															Continue
														</button>
													</div>
													<div class="col-md-3"></div>

												</div>
												<script>$(document).ready(function () {
														$('.book_it18').tooltip({
															title: 'Please continue with the order',
															html: true,
															placement: "top"
														});
													});
												</script>


											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>


			</div>
			<div class="col-md-5"></div>
		</div>
	</div>
</section>

<!-- Modal -->

<div class="modal fade" id="myModal11" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Dec 31 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1479/0" id="booking11" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id11"
					       value="1479"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date11"
					       value="2016-12-31"/>
					<input type="hidden" name="location_id" id="location_id11"
					       value="23"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price11"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							<option value="13">
								13 participants
							</option>
							<option value="14">
								14 participants
							</option>
							<option value="15">
								15 participants
							</option>
							<option value="16">
								16 participants
							</option>
							<option value="17">
								17 participants
							</option>
							<option value="18">
								18 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult11()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking11'),11,1479,0.00);return false;"
							       size="10"
							       id="promo_code11"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update11"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking11'),11,1479,0.00);return false;"
					       size="10" id="dspl_promo_code11" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message11"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal12" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Jan 21 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1441/0" id="booking12" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id12"
					       value="1441"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date12"
					       value="2017-01-21"/>
					<input type="hidden" name="location_id" id="location_id12"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price12"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult12()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking12'),12,1441,0.00);return false;"
							       size="10"
							       id="promo_code12"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update12"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking12'),12,1441,0.00);return false;"
					       size="10" id="dspl_promo_code12" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message12"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal13" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Feb 4 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1442/0" id="booking13" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id13"
					       value="1442"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date13"
					       value="2017-02-04"/>
					<input type="hidden" name="location_id" id="location_id13"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price13"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult13()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking13'),13,1442,0.00);return false;"
							       size="10"
							       id="promo_code13"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update13"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking13'),13,1442,0.00);return false;"
					       size="10" id="dspl_promo_code13" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message13"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal14" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Feb 18 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1443/0" id="booking14" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id14"
					       value="1443"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date14"
					       value="2017-02-18"/>
					<input type="hidden" name="location_id" id="location_id14"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price14"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult14()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking14'),14,1443,0.00);return false;"
							       size="10"
							       id="promo_code14"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update14"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking14'),14,1443,0.00);return false;"
					       size="10" id="dspl_promo_code14" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message14"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal15" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Mar 4 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1444/0" id="booking15" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id15"
					       value="1444"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date15"
					       value="2017-03-04"/>
					<input type="hidden" name="location_id" id="location_id15"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price15"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult15()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking15'),15,1444,0.00);return false;"
							       size="10"
							       id="promo_code15"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update15"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking15'),15,1444,0.00);return false;"
					       size="10" id="dspl_promo_code15" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message15"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal16" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Mar 11 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1446/0" id="booking16" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id16"
					       value="1446"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date16"
					       value="2017-03-11"/>
					<input type="hidden" name="location_id" id="location_id16"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price16"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult16()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking16'),16,1446,0.00);return false;"
							       size="10"
							       id="promo_code16"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update16"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking16'),16,1446,0.00);return false;"
					       size="10" id="dspl_promo_code16" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message16"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal17" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Mar 18 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1445/0" id="booking17" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id17"
					       value="1445"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date17"
					       value="2017-03-18"/>
					<input type="hidden" name="location_id" id="location_id17"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price17"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult17()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking17'),17,1445,0.00);return false;"
							       size="10"
							       id="promo_code17"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update17"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking17'),17,1445,0.00);return false;"
					       size="10" id="dspl_promo_code17" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message17"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal18" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Mar 25 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1447/0" id="booking18" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id18"
					       value="1447"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date18"
					       value="2017-03-25"/>
					<input type="hidden" name="location_id" id="location_id18"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price18"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult18()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking18'),18,1447,0.00);return false;"
							       size="10"
							       id="promo_code18"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update18"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking18'),18,1447,0.00);return false;"
					       size="10" id="dspl_promo_code18" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message18"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal19" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 1 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1448/0" id="booking19" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id19"
					       value="1448"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date19"
					       value="2017-04-01"/>
					<input type="hidden" name="location_id" id="location_id19"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price19"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult19()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking19'),19,1448,0.00);return false;"
							       size="10"
							       id="promo_code19"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update19"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking19'),19,1448,0.00);return false;"
					       size="10" id="dspl_promo_code19" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message19"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal110" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 8 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1449/0" id="booking110" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id110"
					       value="1449"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date110"
					       value="2017-04-08"/>
					<input type="hidden" name="location_id" id="location_id110"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price110"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult110()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking110'),110,1449,0.00);return false;"
							       size="10"
							       id="promo_code110"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update110"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking110'),110,1449,0.00);return false;"
					       size="10" id="dspl_promo_code110" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message110"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal111" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 15 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1450/0" id="booking111" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id111"
					       value="1450"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date111"
					       value="2017-04-15"/>
					<input type="hidden" name="location_id" id="location_id111"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price111"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult111()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking111'),111,1450,0.00);return false;"
							       size="10"
							       id="promo_code111"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update111"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking111'),111,1450,0.00);return false;"
					       size="10" id="dspl_promo_code111" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message111"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal112" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 22 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1451/0" id="booking112" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id112"
					       value="1451"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date112"
					       value="2017-04-22"/>
					<input type="hidden" name="location_id" id="location_id112"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price112"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult112()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking112'),112,1451,0.00);return false;"
							       size="10"
							       id="promo_code112"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update112"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking112'),112,1451,0.00);return false;"
					       size="10" id="dspl_promo_code112" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message112"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal113" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 29 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1452/0" id="booking113" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id113"
					       value="1452"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date113"
					       value="2017-04-29"/>
					<input type="hidden" name="location_id" id="location_id113"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price113"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult113()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking113'),113,1452,0.00);return false;"
							       size="10"
							       id="promo_code113"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update113"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking113'),113,1452,0.00);return false;"
					       size="10" id="dspl_promo_code113" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message113"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal114" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, May 6 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1453/0" id="booking114" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id114"
					       value="1453"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date114"
					       value="2017-05-06"/>
					<input type="hidden" name="location_id" id="location_id114"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price114"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult114()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking114'),114,1453,0.00);return false;"
							       size="10"
							       id="promo_code114"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update114"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking114'),114,1453,0.00);return false;"
					       size="10" id="dspl_promo_code114" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message114"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal115" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, May 13 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1454/0" id="booking115" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id115"
					       value="1454"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date115"
					       value="2017-05-13"/>
					<input type="hidden" name="location_id" id="location_id115"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price115"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult115()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking115'),115,1454,0.00);return false;"
							       size="10"
							       id="promo_code115"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update115"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking115'),115,1454,0.00);return false;"
					       size="10" id="dspl_promo_code115" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message115"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal116" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, May 20 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1455/0" id="booking116" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id116"
					       value="1455"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date116"
					       value="2017-05-20"/>
					<input type="hidden" name="location_id" id="location_id116"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price116"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult116()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking116'),116,1455,0.00);return false;"
							       size="10"
							       id="promo_code116"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update116"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking116'),116,1455,0.00);return false;"
					       size="10" id="dspl_promo_code116" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message116"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal117" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, May 27 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1456/0" id="booking117" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id117"
					       value="1456"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date117"
					       value="2017-05-27"/>
					<input type="hidden" name="location_id" id="location_id117"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price117"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult117()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking117'),117,1456,0.00);return false;"
							       size="10"
							       id="promo_code117"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update117"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking117'),117,1456,0.00);return false;"
					       size="10" id="dspl_promo_code117" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message117"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal118" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Jun 3 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1457/0" id="booking118" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id118"
					       value="1457"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date118"
					       value="2017-06-03"/>
					<input type="hidden" name="location_id" id="location_id118"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price118"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult118()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking118'),118,1457,0.00);return false;"
							       size="10"
							       id="promo_code118"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update118"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking118'),118,1457,0.00);return false;"
					       size="10" id="dspl_promo_code118" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message118"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal219" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Dec 31 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1479/0" id="booking219" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id219"
					       value="1479"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date219"
					       value="2016-12-31"/>
					<input type="hidden" name="location_id" id="location_id219"
					       value="23"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price219"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							<option value="13">
								13 participants
							</option>
							<option value="14">
								14 participants
							</option>
							<option value="15">
								15 participants
							</option>
							<option value="16">
								16 participants
							</option>
							<option value="17">
								17 participants
							</option>
							<option value="18">
								18 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult219()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking219'),219,1479,0.00);return false;"
							       size="10"
							       id="promo_code219"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update219"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking219'),219,1479,0.00);return false;"
					       size="10" id="dspl_promo_code219" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message219"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal220" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Jan 21 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1441/0" id="booking220" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id220"
					       value="1441"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date220"
					       value="2017-01-21"/>
					<input type="hidden" name="location_id" id="location_id220"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price220"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult220()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking220'),220,1441,0.00);return false;"
							       size="10"
							       id="promo_code220"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update220"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking220'),220,1441,0.00);return false;"
					       size="10" id="dspl_promo_code220" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message220"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal221" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Feb 4 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1442/0" id="booking221" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id221"
					       value="1442"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date221"
					       value="2017-02-04"/>
					<input type="hidden" name="location_id" id="location_id221"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price221"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult221()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking221'),221,1442,0.00);return false;"
							       size="10"
							       id="promo_code221"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update221"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking221'),221,1442,0.00);return false;"
					       size="10" id="dspl_promo_code221" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message221"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal222" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Feb 18 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1443/0" id="booking222" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id222"
					       value="1443"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date222"
					       value="2017-02-18"/>
					<input type="hidden" name="location_id" id="location_id222"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price222"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult222()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking222'),222,1443,0.00);return false;"
							       size="10"
							       id="promo_code222"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update222"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking222'),222,1443,0.00);return false;"
					       size="10" id="dspl_promo_code222" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message222"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal223" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Mar 4 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1444/0" id="booking223" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id223"
					       value="1444"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date223"
					       value="2017-03-04"/>
					<input type="hidden" name="location_id" id="location_id223"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price223"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult223()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking223'),223,1444,0.00);return false;"
							       size="10"
							       id="promo_code223"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update223"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking223'),223,1444,0.00);return false;"
					       size="10" id="dspl_promo_code223" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message223"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal224" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Mar 11 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1446/0" id="booking224" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id224"
					       value="1446"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date224"
					       value="2017-03-11"/>
					<input type="hidden" name="location_id" id="location_id224"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price224"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult224()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking224'),224,1446,0.00);return false;"
							       size="10"
							       id="promo_code224"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update224"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking224'),224,1446,0.00);return false;"
					       size="10" id="dspl_promo_code224" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message224"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal225" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Mar 18 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1445/0" id="booking225" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id225"
					       value="1445"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date225"
					       value="2017-03-18"/>
					<input type="hidden" name="location_id" id="location_id225"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price225"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult225()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking225'),225,1445,0.00);return false;"
							       size="10"
							       id="promo_code225"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update225"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking225'),225,1445,0.00);return false;"
					       size="10" id="dspl_promo_code225" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message225"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal226" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Mar 25 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1447/0" id="booking226" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id226"
					       value="1447"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date226"
					       value="2017-03-25"/>
					<input type="hidden" name="location_id" id="location_id226"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price226"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult226()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking226'),226,1447,0.00);return false;"
							       size="10"
							       id="promo_code226"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update226"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking226'),226,1447,0.00);return false;"
					       size="10" id="dspl_promo_code226" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message226"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal227" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 1 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1448/0" id="booking227" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id227"
					       value="1448"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date227"
					       value="2017-04-01"/>
					<input type="hidden" name="location_id" id="location_id227"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price227"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult227()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking227'),227,1448,0.00);return false;"
							       size="10"
							       id="promo_code227"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update227"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking227'),227,1448,0.00);return false;"
					       size="10" id="dspl_promo_code227" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message227"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal228" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 8 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1449/0" id="booking228" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id228"
					       value="1449"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date228"
					       value="2017-04-08"/>
					<input type="hidden" name="location_id" id="location_id228"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price228"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult228()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking228'),228,1449,0.00);return false;"
							       size="10"
							       id="promo_code228"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update228"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking228'),228,1449,0.00);return false;"
					       size="10" id="dspl_promo_code228" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message228"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal229" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 15 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1450/0" id="booking229" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id229"
					       value="1450"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date229"
					       value="2017-04-15"/>
					<input type="hidden" name="location_id" id="location_id229"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price229"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult229()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking229'),229,1450,0.00);return false;"
							       size="10"
							       id="promo_code229"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update229"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking229'),229,1450,0.00);return false;"
					       size="10" id="dspl_promo_code229" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message229"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal230" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 22 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1451/0" id="booking230" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id230"
					       value="1451"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date230"
					       value="2017-04-22"/>
					<input type="hidden" name="location_id" id="location_id230"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price230"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult230()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking230'),230,1451,0.00);return false;"
							       size="10"
							       id="promo_code230"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update230"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking230'),230,1451,0.00);return false;"
					       size="10" id="dspl_promo_code230" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message230"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal231" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Apr 29 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1452/0" id="booking231" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id231"
					       value="1452"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date231"
					       value="2017-04-29"/>
					<input type="hidden" name="location_id" id="location_id231"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price231"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult231()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking231'),231,1452,0.00);return false;"
							       size="10"
							       id="promo_code231"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update231"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking231'),231,1452,0.00);return false;"
					       size="10" id="dspl_promo_code231" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message231"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal232" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, May 6 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1453/0" id="booking232" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id232"
					       value="1453"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date232"
					       value="2017-05-06"/>
					<input type="hidden" name="location_id" id="location_id232"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price232"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult232()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking232'),232,1453,0.00);return false;"
							       size="10"
							       id="promo_code232"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update232"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking232'),232,1453,0.00);return false;"
					       size="10" id="dspl_promo_code232" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message232"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal233" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, May 13 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1454/0" id="booking233" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id233"
					       value="1454"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date233"
					       value="2017-05-13"/>
					<input type="hidden" name="location_id" id="location_id233"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price233"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult233()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking233'),233,1454,0.00);return false;"
							       size="10"
							       id="promo_code233"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update233"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking233'),233,1454,0.00);return false;"
					       size="10" id="dspl_promo_code233" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message233"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal234" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, May 20 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1455/0" id="booking234" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id234"
					       value="1455"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date234"
					       value="2017-05-20"/>
					<input type="hidden" name="location_id" id="location_id234"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price234"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult234()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking234'),234,1455,0.00);return false;"
							       size="10"
							       id="promo_code234"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update234"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking234'),234,1455,0.00);return false;"
					       size="10" id="dspl_promo_code234" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message234"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal235" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, May 27 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1456/0" id="booking235" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id235"
					       value="1456"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date235"
					       value="2017-05-27"/>
					<input type="hidden" name="location_id" id="location_id235"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price235"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							<option value="12">
								12 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult235()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking235'),235,1456,0.00);return false;"
							       size="10"
							       id="promo_code235"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update235"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking235'),235,1456,0.00);return false;"
					       size="10" id="dspl_promo_code235" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message235"></div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="myModal236" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					Sat, Jun 3 </h4>
			</div>
			<div class="modal-body">
				<form action="http://trektracks.dev/tt_v3/class_booking/1457/0" id="booking236" method="post"
				      accept-charset="utf-8">
					<input type="hidden" name="event_id" id="event_id236"
					       value="1457"/>
					<input type="hidden" class="text" readonly name="event_date" id="event_date236"
					       value="2017-06-03"/>
					<input type="hidden" name="location_id" id="location_id236"
					       value="10"/>
					<input type="hidden" name="exp_discount_price" id="exp_discount_price236"
					       value="0.00"/>
					<ul>
						<li>
							<label for="participants">How many are you? <a class="tooltip"
							                                               title="If you have NO discount code enter number of students. <br>If you have a discount code please enter one at a time. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                               href="#"> Help</a></label>
						</li>
						<li>
							<select class="text" name="participants" id="participants" value="1"/>

							<option value="1">
								1 participant
							</option>
							<option value="2">
								2 participants
							</option>
							<option value="3">
								3 participants
							</option>
							<option value="4">
								4 participants
							</option>
							<option value="5">
								5 participants
							</option>
							<option value="6">
								6 participants
							</option>
							<option value="7">
								7 participants
							</option>
							<option value="8">
								8 participants
							</option>
							<option value="9">
								9 participants
							</option>
							<option value="10">
								10 participants
							</option>
							<option value="11">
								11 participants
							</option>
							</select>
						</li>
						<br>
						<br>
						<li>
							<label for="promo_code">Enter Discount Code (Crtl-V to paste) <a class="tooltip"
							                                                                 title="If you have NO discount code leave blank. <br>If you already paid for this class with a discount website or got a discount from Treks and Tracks, please enter discount code here. <br><br>Question? Call us at 650-557-4893 Mon-Fri, 9-5 PST or email info@treksandtracks.com"
							                                                                 href="#"> Help</a>
							</label>
						</li>
						<li>
							<input type="text"
							       class="text"
							       autocomplete="off"
							       onKeyDown="displayResult236()"
							       onkeyup="xajax_verify_promo_code(xajax.getFormValues('booking236'),236,1457,0.00);return false;"
							       size="10"
							       id="promo_code236"
							       name="promo_code"
							       value="">
						</li>
					</ul>
			</div>
			<div class="modal-footer">
				<div id="customer_data">
					<input type="submit" class="btn btn-fill btn-sm" role="button" id="update236"
					       onMouseOver=
					       "xajax_verify_promo_code(xajax.getFormValues('booking236'),236,1457,0.00);return false;"
					       size="10" id="dspl_promo_code236" name="update" value="CONTINUE"
					       class="submit"/>
				</div>
				</form>
				<div class="pull-xs-left" id="warning_message236"></div>
			</div>
		</div>
	</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"
        integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7"
        crossorigin="anonymous"></script>
<!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js"-->
<!--        integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK"-->
<!--        crossorigin="anonymous"></script>-->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
        integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
       crossorigin="anonymous"></script>-->
<footer class="site-footer">
	<section class="footer-content">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 hidden-xs">
					<header class="footer-title">About us</header>
					<p>Treks and Tracks offers various courses and experiences in outdoor activities. Be it rock
						climbing, backpacking or a navigation course, we strive to offer the highest quality experience
						to our clientele.</p>
				</div>
				<div class="col-lg-4 hidden-xs">
					<header class="footer-title">Contact us</header>
					<p>Telephone Bay Area: <b>(650) 557-4893</b><br/>
						Telephone LA Area: <b>(323) 522-5046</b><br/>
						Telephone Seattle: <b>(650) 557-4893</b><br/>
						<br/>
						E-mail: <a href="mailto:info@treksandtracks.com">info@treksandtracks.com</a><br/></p>
				</div>
				<div class="col-lg-4 hidden-xs">
					<header class="footer-title">Menu</header>
					<ul class="footer-list">
						<li><a href="http://trektracks.dev/tt_v3">Home</a></li>
						<li><a href="http://trektracks.dev/tt_v3/index/#section-activities">Classes</a></li>
						<li><a href="http://trektracks.dev/menu_pages_v3/about_us">About Us</a></li>

					</ul>
				</div>


			</div>
		</div>
	</section>
	<section class="footer-bottom">
		<div class="container">
			<div class="copy">&copy; 2010-2016 Treksandtracks.com, all rights reserved</div>
			<div class="social"><a href="https://www.facebook.com/treksandtracks/?fref=ts" title="facebook"><i
						class="font-icon font-icon-fb"></i></a>
			</div>
	</section>
</footer>
<script
	src="https://code.jquery.com/jquery-2.2.2.min.js"
	integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI="
	crossorigin="anonymous"></script>
<script
<script src="/bootstrap4/js/main.js"></script>

<!--<script>$(document).ready(function () {-->
<!--		$('.book_it').tooltip({-->
<!--			title: '<h3><span style="color:#00F" >Please call <span style="color:#C00">(650) 557-4893 </span> to make a last minute reservation! </span></h3>',-->
<!--			html: true,-->
<!--			placement: "top"-->
<!--		});-->
<!--	});-->
<!--</script>-->

</body>
</html>
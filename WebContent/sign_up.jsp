<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="inc/head.jsp"></jsp:include>
<body id="page-top">
	<a href="#main-content" class="visually-hidden focusable skip-link"> Skip to main content </a>

	<div class="layout-container">
		<header role="banner">
			<div class="region region-header">
				<nav role="navigation" class="block block-menu navigation menu--main">

					<h2 class="visually-hidden">Main navigation</h2>


					<jsp:include page="inc/nav_bar.jsp"></jsp:include>
				</nav>
			</div>
		</header>







		<main role="main"> <a id="main-content" tabindex="-1"></a>
		<div class="layout-content">
			<div class="region region-content">
				<div id="block-paperflite-content" class="block block-system block-system-main-block">



					<article data-history-node-id="15" role="article" about="/signup" class="node node--type-paperflite-page node--promoted node--view-mode-full">





						<div class="node__content">

							<div class="field field--name-field-section-content field--type-stacks-type field--label-hidden field__items">
								<div class="field__item">
									<!-- Banner Theme Class -->

									<!-- Banner Type Class -->




									<header style="background-image: url(/sites/default/files/2017-11/bg_final.png;); background-size: cover; background-position: 0px 0px;" class="page-title pt-dark pt-large pt-parallax" data-stellar-background-ratio="0.4">
										<div class="bg-overlay"></div>
										<div class="container-fluid">
											<div class="row">

												<div class="col-sm-12 col-md-10 col-md-offset-1"></div>

											</div>
										</div>
									</header>
								</div>
								<div class="field__item">
									<section id="contact-full-form" class="contact-3">
										<div class="container">
											<div class="row">

												<div class="col-md-12 col-lg-offset-2 col-lg-8">
													<h1 class="form-title"></h1>
													<div style="background-image: url(/sites/default/files/2017-11/bg2.png;); background-size: cover;" class="form-wrapper">
														<div class="form-inner-container">
															<div class="success-message"></div>
															<div class="from-header">
																<h4>Are you ready to rock n roll?</h4>
																<p>Drop us a line and we'll have a rep call you and show you how easy it is to get your team to play like all-stars!
															

																</p>

															</div>

															<form action="https://api.paperflite.com/api/2.0/registrations" method="POST" class="form-minimal form-ajax" data-success-url="/registration/success">

																<!--First Name -->
																<div class="form-group">
																	<input type="text" name="firstName" id="name-contact-3" class="form-control validate-locally"> <label for="name-contact-3">First Name *</label> <span class="pull-right alert-error"></span>
																</div>

																<!--Last Name -->
																<div class="form-group">
																	<input type="text" name="lastName" id="name-contact-3" class="form-control validate-locally"> <label for="name-contact-3">Last Name *</label> <span class="pull-right alert-error"></span>
																</div>

																<!--Company -->
																<div class="form-group">
																	<input type="text" name="company" id="name-contact-3" class="form-control validate-locally"> <label for="name-contact-3">Company *</label> <span class="pull-right alert-error"></span>
																</div>

																<!-- Email -->
																<div class="form-group">
																	<input type="email" name="email" id="email-contact-3" class="form-control validate-locally"> <label for="email-contact-3">Email *</label> <span class="pull-right alert-error"></span>
																</div>

																<!-- password -->
																<div class="form-group">
																	<input type="password" name="password" id="password-contact-3" class="form-control validate-locally"> <label for="password-contact-3">Password *</label> <span class="pull-right alert-error"></span>
																</div>

																<input type="submit" class="btn" value="Contact Sales" data-original-title="Contact Sales">

																<!-- Ajax Message -->


															</form>
															<div class="ajax-message"></div>
														</div>
													</div>
												</div>

											</div>
										</div>
										<!-- / .container -->
										<div id="success_message_template" style="display: none">
											<div class="registration__success_msg">
												<p>&nbsp;</p>

												<h1>
													STRANGERS, <span>NO MORE!</span>
												</h1>

												<p>
													<span id="firstName">&nbsp;</span>, Thanks for joining Paperflite!<br> We've successfully created your account.
												</p>

												<p>&nbsp;</p>

												<p>Just so we know its you please pop into your email and click the activation link!</p>

												<p>&nbsp;</p>

												<p>
													<a class="btn btn-primary" href="https://app.paperflite.com/">Return to login page</a>
												</p>
											</div>

										</div>
									</section>
									<!-- / .contact-3 -->
								</div>
							</div>

						</div>

					</article>

				</div>

			</div>

		</div>


		</main>

		<jsp:include page="inc/footer.jsp"></jsp:include>
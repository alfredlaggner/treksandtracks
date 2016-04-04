<!--<body id="sidebar-left">
--><div id="page_wrapper">
<div id="page-header">
<?php $user = $this->ion_auth->get_user();?>
	<div id="page-header-wrapper">
		<div id="top"> <a href="dashboard" class="logo" title="TreksandTracks Admin">Treksandtrcks Admin</a>
			<div class="welcome"> <span class="note">Welcome, <a href="#" title="Welcome, <?php echo $user->username;  ?>"><?php echo $user->username;  ?></a></span> <a class="btn ui-state-default ui-corner-all" href="#"> <span class="ui-icon ui-icon-wrench"></span> Settings </a> <a class="btn ui-state-default ui-corner-all" href="#"> <span class="ui-icon ui-icon-person"></span> My account </a> <a class="btn ui-state-default ui-corner-all" href="<?php echo site_url().'auth/logout'?>"> <span class="ui-icon ui-icon-power"></span> Logout </a> </div>
		</div>
</div>
</div>

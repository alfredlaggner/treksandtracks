<?php $this->load->view('modules/head') ?>
<?php $this->load->view('modules/header_left_sidebar') ?>
<script type="text/javascript" src="<?php echo base_url() ?>js/jquery.validate.min.js"></script>
<link href="<?php echo base_url() ?>css/ui/ui.datepicker.css" rel="stylesheet" media="all" />
<script type="text/javascript" src="<?php echo base_url() ?>js/ui/ui.datepicker.js"></script>
 
<div id="sub-nav">
		<div class="page-title">
				<h1>Upload Success</h1>
				</div>
		<?php $this->load->view('modules/top_buttons') ?>
</div>
<div id="page-layout">
		<div id="page-content">
				<div id="page-content-wrapper">
						<div class="inner-page-title">
								<h2>Success</h2>
								 </div>
						<div class="content-box">
								<div id="inputform">

									<h3>Your file was successfully uploaded!</h3>
									
									<ul>
									<?php foreach ($upload_data as $item => $value):?>
									<li><?php echo $item;?>: <?php echo $value;?></li>
									<?php endforeach; ?>
									</ul>
									
									<p><?php echo anchor('discount/upload', 'Upload Another File!'); ?></p>								</div>
						</div>
						<div class="clearfix"></div>
						<i class="note">* To see more boxes examples, like the ones above, visit for the menu, the Layout Options pages.</i>
						<?php $this->load->view('modules/sidebar') ?>
				</div>
				<div class="clear"></div>
		</div>
</div>
<?php $this->load->view('modules/footer') ?>
</body></html>
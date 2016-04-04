<?php $this->load->view('modules/head') ?>
<?php $this->load->view('modules/header_left_sidebar') ?>
<script type="text/javascript" src="<?php echo base_url() ?>js/tablesorter.js"></script>
<script type="text/javascript" src="<?php echo base_url() ?>js/tablesorter-pager.js"></script>

<div id="sub-nav">
	<div class="page-title">
		<h1><?php echo $title ?></h1>
		<span><?php echo $breadcrumb ?><?php echo $title_action ?></span> </div>
	<?php $this->load->view('modules/top_buttons') ?>
</div>
<div id="page-layout">
<div id="page-content">
	<div id="page-content-wrapper">
		<div class="inner-page-title">
			<h2><?php echo $title_action ?></h2>
			<span></span> </div>
		<div class="hastable">
			<form name="myform" class="pager-form" method="post" action="">
				<table id="sort-table">
					<thead>
						<tr>
							<th><input type="checkbox" value="check_none" onclick="this.value=check(this.form.list)" class="submit"/></th>
							<th>Order</th>
							<th>Name</th>
							<th>Active</th>
							<th style="width:128px">Options</th>
						</tr>
					</thead>
					<tbody>
						<?php if(isset($records)) : foreach($records as $row) : ?>
						<tr>
							<td class="center"><input type="checkbox" value="1" name="list" class="checkbox"/></td>
							<td><?php echo $row->order; ?></td>
							<td><?php echo $row->name; ?></td>
							<td><?php  
							if ($row->is_active) echo 'Yes' ; else  echo 'No'; ?></td>
							<td><a class="btn_no_text btn ui-state-default ui-corner-all tooltip" title="Edit Activity" href="<?php echo site_url().'rate/rate_view/' ?><?php echo $row->rate_id; ?>"> <span class="ui-icon ui-icon-wrench"></span> </a> <a class="btn_no_text btn ui-state-default ui-corner-all tooltip confirmClick" title="Delete Activity" href="<?php echo site_url().'rate/delete/' ?><?php echo $row->rate_id; ?>"> <span class="ui-icon ui-icon-trash"></span> </a></td>
						</tr>
						<?php endforeach; endif; ?>
					</tbody>
				</table>
			</form>
			<div class="clear"></div>
			<?php $this->load->view('modules/sidebar') ?>
		</div>
	</div>
	<?php $this->load->view('modules/footer') ?>
</div>
</body>
</html>
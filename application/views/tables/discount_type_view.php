<?php $this->load->view('modules/head') ?>
<?php $this->load->view('modules/header_left_sidebar') ?>

<div id="sub-nav">
	<div class="page-title">
		<h1><?php echo $title ?></h1>
		<span><?php echo $breadcrumb ?><?php echo $title_action ?></span></div>
	<?php $this->load->view('modules/top_buttons') ?>
</div>
<div id="page-layout">
	<div id="page-content">
		<div id="page-content-wrapper">
			<div class="inner-page-title">
				<h2><?php echo $title_action ?></h2>
				<span><?php echo $top_note ?></span></div>
			<div class="content-box">
				<div id="inputform">
					<?php if (isset($records)) : foreach ($records as $row) : ?>
						<table>
						<tr>
							<td>Type/Name/Description</td>
							<td></td>
							<td></td>
						</tr>
						<?php echo form_open('discount_type/update/' . $row->discount_type_id); ?>
						<tr>
							<input type="hidden" name="" id="discount_type_id"
							       value='<?php echo $row->discount_type_id; ?>'/>
							<td><input type="text" name="type" id="type" class="text"
							           value='<?php echo $row->type; ?>'/><br/>
								<input type="text" name="name" id="name" class="text"
								       value='<?php echo $row->name; ?>'/><br/>
								<textarea class="text_area" name="description"
								          id="description"><?php echo $row->description; ?></textarea></td>
							<td><input type="submit" name="submit" value="Update" class="buttons"/></td>
							<td><input type="submit" name="delete" value="Delete" class="buttons"/></td>
						</tr>
						<?php echo form_close(); ?>
					<?php endforeach; ?>
						</table>
					<?php else : ?>
						<p>No records were returned.</p>
					<?php endif; ?>
					<hr/>
					<h3>Create</h3>
					<?php echo form_open('discount_type/create'); ?>
					<table>
						<tr>
							<td>Type/Name/Description</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>
								<input type="text" name="type" id="type" class="text"/><br/>
								<input type="text" name="name" id="name" class="text"/><br/>
								<textarea class="text_area" name="description" id="description"></textarea></td>
							<td><input type="submit" value="Create" class="buttons"/></td>
						</tr>
					</table>
					<?php echo form_close(); ?> </div>
				<div class="clearfix"></div>
				<i class="note"><?php echo $bottom_note ?></i>
				<?php $this->load->view('modules/sidebar') ?>
			</div>
		</div>
		<div class="clear"></div>
	</div>
</div>
<?php $this->load->view('modules/footer') ?>
</div>
</body></html>
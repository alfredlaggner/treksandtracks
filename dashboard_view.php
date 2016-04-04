<? $this->load->view('modules/head') ?>
<? $this->load->view('modules/header_left_sidebar') ?>
<script type="text/javascript" src="<?= base_url() ?>js/ui/ui.tabs.js"></script>
<script type="text/javascript" src="<?= base_url() ?>js/ui/ui.accordion.js"></script>
<link href="<?= base_url() ?>/css/ui/ui.accordion.css" rel="stylesheet" media="all" />

<script type="text/javascript">
$(function() {
	$("#accordion").accordion({
	});
});
</script>
		<div id="sub-nav"><div class="page-title">
			<h1>Dashboard</h1>
		</div>
	<? $this->load->view('modules/top_buttons') ?>
		<div id="page-layout"><div id="page-content">
			<div id="page-content-wrapper">
				<div class="inner-page-title">
				<h2>Events Management<h2>
			 
				</div>
				<div class="content-box">
					<div id="accordion">
						<h3><a href="#">Events by Activity</a></h3>
                        
								<? $attributes = array('id' => 'dashboard'); ?>
								<?= form_open('dashboard/select_activity',$attributes );?>
<?                        $activity_id =  $this->session->userdata('activity_id'); 
						$location_id =  $this->session->userdata('location_id'); 
						$style_id =  $this->session->userdata('style_id'); 
						$is_booked =  $this->session->userdata('is_booked'); 
						$is_booked_style =  $this->session->userdata('is_booked_style'); 
?>

						<div>
                        <ul>
								<li>
									<label>Event</label>
									<select type="text" name="activity_id" id="activity_id" class="text"  value='<?=$activity_id?>' />
									
									<option          value="0" > All </option>
									<? if(isset($activities)) : foreach($activities as $activity): ?>
                                    	<? if ($activity_id == $activity->activity_id) : ?>
											<option selected value="<?=  $activity->activity_id; ?>">												<?=  $activity->name; ?></option>
										<? else : ?>
											<option value="<?=  $activity->activity_id; ?>">                                           <?=  $activity->name; ?></option>
									
										<? endif; ?>
									<? endforeach ;endif; ?>
									</select>
								</li>
								<li>
									<label>Location</label>
									<select type="text" name="location_id" id="location_id" class="text"  value='<?=$location_id?>' />
									
									<option          value="0" > All </option>
									<? if(isset($locations)) : foreach($locations as $location): ?>
                                    	<? if ($location_id == $location->location_id) : ?>
                                            <option selected         value="<?=  $location->location_id; ?>">
                                            <?=  $location->name; ?></option>
                                         <? else : ?>
                                            <option value="<?=  $location->location_id; ?>"><?=  $location->name; ?></option>
										<? endif; ?>
									<? endforeach ;endif; ?>
									</select>
								</li>
                                <li>
									<label>Booked Events?</label>
								<?= form_checkbox('is_booked', $is_booked, $is_booked) ?> </li>
                                
					<li>
						<input type="submit" name="activity_update" value="Choose" class="buttons" />
					</li>
                    </ul>
					<?= form_close(); ?>
						</div>
                        
                        
                        
						<h3><a href="#">Events by Activity Type</a></h3>
						<div>
								<? $attributes = array('id' => 'dashboard'); ?>
								<?= form_open('dashboard/select_style',$attributes );?>
                        <ul>
								<li>
									<label>Activity</label>
									<select type="text" name="style_id" id="style_id" class="text"  value='<?=$style_id?>' />
									
									<option          value="0" > All </option>
									<? if(isset($styles)) : foreach($styles as $style): ?>
                                    	<? if ($style_id == $style->style_id) : ?>
											<option selected value="<?=  $style->style_id; ?>">												<?=  $style->name; ?></option>
										<? else : ?>
											<option value="<?=  $style->style_id; ?>">                                           <?=  $style->name; ?></option>
									
										<? endif; ?>
									<? endforeach ;endif; ?>
									</select>
								</li>
 									<label>Booked Events?</label>
								<li><?= form_checkbox('is_booked', $is_booked, $is_booked) ?> </li>
                               
					<li>
						<input type="submit" name="style_update" value="Choose" class="buttons" />
					</li>
                    </ul>
					<?= form_close(); ?>
						</div>
                        					
                        
<!--						<h3><a href="#">Region</a></h3>
						<div>
								<? $attributes = array('id' => 'dashboard'); ?>
								<?= form_open('dashboard/select_region',$attributes );?>
                        <ul>
								<li>
									<label>Region</label>
									<select type="text" name="region_id" id="region_id" class="text"  value='<?=$region_id?>' />
									
									<option          value="0" > All </option>
									<? if(isset($regions)) : foreach($regions as $region): ?>
                                    	<? if ($region_id == $region->region_id) : ?>
											<option selected value="<?=  $region->region_id; ?>">												<?=  $region->name; ?></option>
										<? else : ?>
											<option value="<?=  $region->region_id; ?>">                                           <?=  $region->region; ?></option>
									
										<? endif; ?>
									<? endforeach ;endif; ?>
									</select>
								</li>
 									<label>Booked Events?</label>
		<li><?= form_checkbox('is_booked', $is_booked, $is_booked) ?> </li>
                               
					<li>
						<input type="submit" name="region_update" value="Choose" class="buttons" />
					</li>
                    </ul>
					<?= form_close(); ?>
						</div>
						</div>
					
					</div>
					</div>
-->					</div>
				<div class="clearfix"></div>
				<br /><br />
				<div class="inner-page-title">
					<h2>Accordion inserted into boxes</h2>
					<span>Below you will find an accordion example. Lorem ipsum dolor sic amet.</span>
				</div>
				<div class="two-column">
					<div class="column-fixed">
						<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
							<div class="portlet-header ui-widget-header">Examples, examples, examples ...<span class="ui-icon ui-icon-circle-arrow-s"></span></div>
							<div class="portlet-content">
								<div id="accordion2">
									<div>
										<h3><a href="#">Forth</a></h3>
										<div>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.</div>
									</div>
									<div>
										<h3><a href="#">Dummy</a></h3>
										<div>Phasellus mattis tincidunt nibh.</div>
									</div>
									<div>
										<h3><a href="#">Dummy again</a></h3>
										<div>Nam dui erat, auctor a, dignissim quis.</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="column-fixed">
						<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all form-container">
							<div class="portlet-header ui-widget-header">Icons for buttons<span class="ui-icon ui-icon-circle-arrow-s"></span></div>
							<div class="portlet-content">
								<ul id="icons" class="ui-widget ui-helper-clearfix">
			
									<li class="ui-state-default ui-corner-all" title=".ui-icon-carat-1-se"><span class="ui-icon ui-icon-carat-1-se"></span></li>
									<li class="ui-state-default ui-corner-all" title=".ui-icon-carat-1-s"><span class="ui-icon ui-icon-carat-1-s"></span></li>
									<li class="ui-state-default ui-corner-all" title=".ui-icon-carat-1-sw"><span class="ui-icon ui-icon-carat-1-sw"></span></li>
									<li class="ui-state-default ui-corner-all" title=".ui-icon-carat-1-w"><span class="ui-icon ui-icon-carat-1-w"></span></li>
									<li class="ui-state-default ui-corner-all" title=".ui-icon-carat-1-nw"><span class="ui-icon ui-icon-carat-1-nw"></span></li>
									<li class="ui-state-default ui-corner-all" title=".ui-icon-carat-2-n-s"><span class="ui-icon ui-icon-carat-2-n-s"></span></li>
									<li class="ui-state-default ui-corner-all" title=".ui-icon-carat-2-e-w"><span class="ui-icon ui-icon-carat-2-e-w"></span></li>
									<li class="ui-state-default ui-corner-all" title=".ui-icon-triangle-1-n"><span class="ui-icon ui-icon-triangle-1-n"></span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<i class="note">* To see more boxes examples, like the ones above, visit for the menu, the Layout Options pages.</i>
			<? $this->load->view('modules/sidebar') ?>
			</div>
			<div class="clear"></div>
		</div>
	</div>
<? $this->load->view('modules/footer') ?>
</body>
</html>
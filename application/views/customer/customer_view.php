<? $this->load->view('modules/head') ?>
<? $this->load->view('modules/header_left_sidebar') ?>
<script type="text/javascript" src="<?= base_url() ?>js/jquery.validate.min.js"></script>
<script type="text/javascript">
<?
if (! $is_update)
{
$this->session->set_userdata(array('back_url'=> $_SERVER['HTTP_REFERER']));
}

//echo 'xxxx' . $_SERVER['HTTP_REFERER'];	

?>
$().ready(function() {
	$("#customer").validate(
	{
		rules: {
			cancel: "cancel",
			first_name: {
				required: true,
				minlength: 2
				  },
			last_name: {
				required: true,
				minlength: 2
				  }
			},
		messages: {
			first_name: 	{
				required: "Please enter first name",
				minlength: "Minimum length is 2"
					},
			last_name: 	{
				required: "Please enter last name",
				minlength: "Minimum length is 2"
					},
			sex: 	{
				required: "Please enter gender",
				maxlength: "Maximum length is 1",
				minlength: "Minimum length is 1"
					}
		}
	});
});

</script>

<div id="sub-nav">
	<div class="page-title">
		<h1><?= $title ?></h1>
		<span><a href="#" title="Home">Home</a> > <a href="#" title="Dashboard">Dashboard</a> > <?= anchor('customer', 'Customer'); ?> > <?= $title_action ?></span> </div>
	<? $this->load->view('modules/top_buttons') ?>
</div>
<div id="page-layout">
	<div id="page-content">
		<div id="page-content-wrapper">
			<div class="inner-page-title">
				<h2><?= $title_action ?></h2>
				<span>Update customer record ...</span> </div>
			<div id="inputform">
				<? if(isset($records)) : foreach($records as $row) : ?>
				<ul>
					<? $attributes = array('id' => 'customer'); ?>
					<?= form_open('customer/update/'. $row->customer_id,$attributes);?>
					<li>
						<label>First Name</label>
						<input type="text"  name="first_name" id="first_name"  class="text" value='<?= $row->first_name ?>'  />
					</li>
					<li>
						<label>Last Name</label>
						<input type="text" name="last_name" id="last_name"  class="text"  value='<?=  $row->last_name ?>'  />
					</li>
						<label>Address 1</label>
						<input type="text" name="address1" id="address1"  class="text"  value='<?=  $row->address1 ?>'  />
					</li>
					<li>
						<label>Address 2</label>
						<input type="text" name="address2" id="address2"  class="text"  value='<?=  $row->address2 ?>'  />
					</li>
					<li>
						<label>City</label>
						<input type="text"  name="city" id="city"  class="text"  value='<?=  $row->city ?>' />
					</li>
					<li>
						<label>State</label>
						<select type="text"  name="state" id="state"  class="text"  value='<?=  $row->state ?>' />
								<option value="" selected="selected"><?=  $row->state ?></option>
								<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
								</select>										
					</li>

					<li>
					<label>Zip</label>
						<input type="text"  name="zip" id="zip" class="text"   value='<?=  $row->zip ?>' />
					</li>
					
					<li>
					<label>Country</label>
						<input type="text"  name="country" id="country"  class="text"  value='<?=  $row->country ?>' />
					</li>
					<li>
						<label>Email</label>
						<input type="text" name="email" id="email"  class="text"  value='<?=  $row->email ?>'  />
					</li>
					<li>
						<label>Telephone</label>
						<input type="text" name="cell" id="cell"  class="text"  value='<?=  $row->cell ?>'  />
					</li>
					<li>
						<label>Emergency Contact</label>
						<input type="text" name="emergency_contact" id="emergency_contact"  class="text"  value='<?=  $row->emergency_contact ?>'  />
					</li>
					<li>
						<label>Emergency Phone</label>
						<input type="text" name="emergency_phone" id="emergency_phone"  class="text"  value='<?=  $row->emergency_phone ?>'  />
					</li>
					<li>
						<input type="submit" name="update" value="Update" class="buttons" />
			<input type="button" class="cancel buttons" value="Return" 
			ONCLICK= "window.location='<?= $this->session->userdata('back_url'); ?>'" />
					</li>
					<?= form_close(); ?>
				</ul>
				<? endforeach; ?>
				<? endif; ?>
			</div>
		</div>
		<div class="clearfix"></div>
		<i class="note">* To see more boxes examples, like the ones above, visit for the menu, the Layout Options pages.</i>
		<? $this->load->view('modules/sidebar') ?>
	</div>
	<div class="clear"></div>
</div>
<? $this->load->view('modules/footer') ?>
</body></html>
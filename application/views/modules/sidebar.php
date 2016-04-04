
<div id="sidebar">
		<div class="sidebar-content"> <a id="close_sidebar" class="btn ui-state-default full-link ui-corner-all" href="#drill"> <span class="ui-icon ui-icon-circle-arrow-e"></span> Close Sidebar </a> <a id="open_sidebar" class="btn tooltip ui-state-default full-link icon-only ui-corner-all" title="Open Sidebar" href="#"><span class="ui-icon ui-icon-circle-arrow-w"></span></a>
				<div class="hide_sidebar">
						<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
								<div class="portlet-header ui-widget-header">Day to Day<span class="ui-icon ui-icon-circle-arrow-s"></span></div>
								<div class="portlet-content">
										<div class="content"> <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'dashboard' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Dashboard </a> <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'calendar/display' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Calendar </a> 
												<!--									<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'activity_booking' ?>">
										<span class="ui-icon ui-icon-mail-closed"></span>
										Book a class
									</a>
--> 
<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'discount/upload' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Discount code upload from excel </a> 	
											<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'discount/group_discount_show/0/""' ?>"> <span class="ui-icon ui-icon-scissors"></span> View Managed Discounts </a> 
												
												<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'discount/index/1' ?>"> <span class="ui-icon ui-icon-scissors"></span> View Imported Discounts </a> 
												<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'discount/discount_used' ?>"> <span class="ui-icon ui-icon-scissors"></span> View Used Discounts </a> 
												<!--									<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'ledger' ?>">
										<span class="ui-icon ui-icon-mail-closed"></span>
										Booked classes</a>
--> 
												
												<!--								<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'customer' ?>">
									<span class=" ui-icon ui-icon-mail-closed"></span>
									Mangage customer lists
								</a>
--> <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'dashboard/backup_database' ?>"> <span class=" ui-icon ui-icon-mail-closed"></span> Backup Database </a> </div>
								</div>
						</div>
				</div>
				
				<!--Activity -->
				<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
						<div class="portlet-header ui-widget-header">Activity Design<span class="ui-icon ui-icon-circle-arrow-s"></span></div>
						<div class="portlet-content"> 
                        
                        <a title="Manage all classes, web content, event dates etc" class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'activity' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Design and manage products </a> 
                        
                        <a title="Table of levels of difficulty"class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'physical_level' ?>"> 
 <span class="ui-icon ui-icon-arrowreturnthick-1-n"></span> Physical Level </a> 

<a title="Table to categorize the activity" class="btn ui-state-default full-link ui-corner-all" 
                        href="<?php echo site_url().'style' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Activity Group </a> 
                        
 <a title="Should be used for another category. To be discussed" class="btn ui-state-default full-link ui-corner-all" 
                        href="<?php echo site_url().'service_level' ?>"> <span class="ui-icon ui-icon-scissors"></span> Service Levels </a> <a title="Table of all locations where activities take place" class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'location' ?>"> <span class="ui-icon ui-icon-scissors"></span> Manage Locations </a> <a title="Table of all locations where activities take place" class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'home_slider' ?>"> <span class="ui-icon ui-icon-scissors"></span> Home Slider </a> </div>
				</div>
                
                
 <!-- begin customer interaction -->   
				<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
				
						<div class="portlet-header ui-widget-header">eMail Management<span class="ui-icon ui-icon-circle-arrow-s"></span></div>
						
						
						<div class="portlet-content"> 
                        
 <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'template' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Manage eMail templates </a> 


 
 <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'attachment/upload_attachments' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Upload attachment files </a> 
 
<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'customer_contact/booked_customers_overview' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Sent emails by customer</a>  
                   
<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'mail_sent' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Sent eMails by date </a> 

 <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'send_reminders' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Send reminder emails </a> 
 
</div>				
</div>
                
                
               
            
<!-- end customer interaction -->               
                
                
				<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
						<div class="portlet-header ui-widget-header">Other<span class="ui-icon ui-icon-circle-arrow-s"></span></div>
						<div class="portlet-content">
								<div class="content"> <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'account' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Manage affiliates accounts </a> <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'employee' ?>"> <span class="ui-icon ui-icon-scissors"></span> Manage Employees </a> <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'region' ?>"> <span class="ui-icon ui-icon-scissors"></span> Manage Regions </a> <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'discount_type' ?>"> <span class="ui-icon ui-icon-scissors"></span> Discount Types </a> <a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'division' ?>"> <span class="ui-icon ui-icon-signal-diag"></span> Divisions </a>
										<!--								<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'booking_message' ?>">
									<span class="ui-icon ui-icon-alert"></span>
									Booking Messages
								</a>
								<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'confirmation_message' ?>">
									<span class="ui-icon ui-icon-alert"></span>
									Confirmation Messages
								</a>
								<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'inquiry_message' ?>">
									<span class="ui-icon ui-icon-alert"></span>
									Inquiry Messages
								</a>
--> 

<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'employee_function' ?>"> <span class="ui-icon ui-icon-alert"></span> Employee Functions </a> 

<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'customer_contact_type' ?>"> <span class="ui-icon ui-icon-alert"></span> Customer Contact Types </a> </div>
<?
if (get_cookie('set_admin_status')) 
   $set_admin_status = "Delete Administrator Status";
else
    $set_admin_status = "Set Administrator Status";
?>
<a class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'dashboard/set_admin_status' ?>"> <span class="ui-icon ui-icon-alert"></span> <?= $set_admin_status ?>  </a> </div>
						</div>
                                        
 				<!--Gear -->
				<div class="portlet ui-widget ui-widget-content ui-helper-clearfix ui-corner-all">
						<div class="portlet-header ui-widget-header">Gear Design<span class="ui-icon ui-icon-circle-arrow-s"></span></div>
						<div class="portlet-content"> 
                        
                        <a title="Manage gear" class="btn ui-state-default full-link ui-corner-all" href="<?php echo site_url().'gear' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Design and manage gear </a> 
                        
                        
<a title="Table to group gear" class="btn ui-state-default full-link ui-corner-all" 
                        href="<?php echo site_url().'gear_group' ?>"> <span class="ui-icon ui-icon-mail-closed"></span> Gear Groups </a> 
                        
</div>				</div>

						<div class="clear"></div>
                        
						<!--					<div class="other-box yellow-box ui-corner-all ui-corner-all">
						<div class="cont tooltip ui-corner-all" title="Check out the sortable examples below !!">
							<h3>Sortable Section:</h3>
							<p>Below you will find a sortable area. Enjoy! Also a tooltip example. You can add tooltips for any html elements.</p>
						</div>
					</div>
--><!--					<div class="side_sort">
						<div class="box ui-widget ui-widget-content ui-corner-all">
							<h3>Sortable 1</h3>
							<div class="content">
								Lorem ipsum dolor sic amet dixit tu.
							</div>
						</div>
						<div class="box ui-widget ui-widget-content ui-corner-all">
							<h3>Sortable 2</h3>
							<div class="content">
								Lorem ipsum dolor sic amet dixit tu.
							</div>
						</div>
						<div class="box ui-widget ui-widget-content ui-corner-all">
							<h3>Datepicker</h3>
							<div class="content">
								Lorem ipsum dolor sic amet dixit tu.
							</div>
						</div>
					</div>
--> </div>
		</div>
</div>
<div class="clear"></div>

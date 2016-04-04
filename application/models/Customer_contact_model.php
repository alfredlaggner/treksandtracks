<?php

class Customer_contact_model extends CI_Model {
	
	
	function get_selected_customers($customers_to_mail)
	{
		if ($customers_to_mail)
		{
			$this->db->select('customer.*, ledger.*');
			$this->db->where_in('ledger_id',$customers_to_mail);
			$this->db->join('customer','ledger.customer_id = customer.customer_id','right');
			$query = $this->db->get('ledger');
			return $query->result(); 
		}
		else
			return ""; 
			
	} 
	
	function get_customers_by_event($event_id)
	{
			$this->db->select('customer.*,ledger.*, ledger.status AS ledger_status, customer_questionaire_id, is_questionaire,discount.name AS discount_name');
			$this->db->where('ledger.paid_code >', '0'); //finished transaction
//			$this->db->where('ledger.status !=', LEDGER_DELETED); //finished transaction
//			$this->db->group_by('customer.email');
			$this->db->join('customer','ledger.customer_id = customer.customer_id','right');
			$this->db->join('discount','ledger.promo_code = discount.promo_code','left');
			$this->db->join('customer_questionaire','customer_questionaire.customer_id = customer.customer_id','left');
			$this->db->where("ledger.event_id",$event_id);
			$query = $this->db->get('ledger');
		return $query->result(); 
	}
	function send_email($event_id,$employee_count) 
	{
		for ($i = 1; $i <= $employee_count; $i++)
			{ 
			$checked = 'employee_add' . $i;
//echo "checked =	" .	$checked . "<br>";
//echo "clicked =	" .	isset($_POST[$checked]) . "<br>";
			if (isset($_POST[$checked]))
				{
				$employee_id = 'employee_id' . $i;
				$employee_id_val = $this->input->post($employee_id);
				
//echo "employee_id =	" .	$employee_id . "<br>";
//echo "employee_id_val =	" .	$employee_id_val . "<br>";
		
				$this->db->query("REPLACE INTO event_to_employee (event_id, employee_id) VALUES ('$event_id','$employee_id_val')");
				};
			};
		return;
	}
	


	function get_active_customers()
	{
			$this->db->where('ledger.paid_code', TRUE); //finished transaction
			$this->db->where('ledger.status !=', LEDGER_DELETED); //finished transaction
			$this->db->group_by('customer.email');
			$this->db->join('customer','ledger.customer_id = customer.customer_id','right');
			$query = $this->db->get('ledger');
		return $query->result();
	}
	
	function get_customer_history($email)
	{
		$query = $this->db
			->select('customer.*,ledger.*, event.date,activity.name')
			->where('customer.email', $email)
//			->where('ledger.status !=', LEDGER_DELETED) //finished transaction
			->where('ledger.paid_code', TRUE) //finished transaction
			->join('ledger','ledger.customer_id = customer.customer_id')
			->join('event','ledger.event_id = event.event_id')
			->join('activity','ledger.activity_id = activity.activity_id')
			->get('customer');
		return $query->result();
	}
	function xget_customer_history($email)
	{
		$query = $this->db
			->select('customer.*,ledger.*, event.date,activity.name')
			->where('ledger.customer_id', $customer_id)
			->where('ledger.status !=', LEDGER_DELETED) //finished transaction
			->where('ledger.paid_code', TRUE) //finished transaction
			->join('customer','ledger.customer_id = customer.customer_id','right')
			->join('event','ledger.event_id = event.event_id','right')
			->join('activity','ledger.activity_id = activity.activity_id','right')
			->get('ledger');
		return $query->result();
	}
	
	
	function get_contacts($customer_id)
	{
		$query = $this->db
			->where('customer_contact.customer_id', $customer_id)
			->join('customer_contact_type','customer_contact.type_id = customer_contact_type.customer_contact_type_id','left')
			->join('employee','customer_contact.employee_id = employee.employee_id','left')
			->join('mail','customer_contact.mail_id = mail.mail_id','left')
			->select('
			customer_contact_id,
			entered_at,
			type_id,
			note,
			group,
			customer_contact.mail_id,
			next_contact,
			customer_contact.employee_id,
			customer_contact_type.name,
			contact_of,
			customer_contact.customer_id AS customer_contact_customer_id,
			mail.mail_id,
			mail.body,
			employee.employee_id,
			employee.first_name,
			employee.last_name
			')
			->get('customer_contact')
			;
 $q=$query->result();
		return $q;
	}
	
	function get_customer_name($customer_id)
	{
		$this->db->where('customer_id', $customer_id);
		$query = $this->db->get('customer');
		foreach ($query->result() as $row)
		{
			return trim($row->first_name) . ' ' . trim($row->last_name);
		}
	}
	function get_customer_email($customer_id)
	{
		$this->db->where('customer_id', $customer_id);
		$query = $this->db->get('customer');
		foreach ($query->result() as $row)
		{
			return $row->email;
		}
	}
	function get_customer_emails($customer_id)
	{
		$this->db->where('customer_id', $customer_id);
		$query = $this->db->get('mail');
			return $query->result();
	}
	function get_record($customer_id)
	{
		$this->db->where('customer_id', $customer_id);
		$query = $this->db->get('customer');
			return $query->result();
	}
	
	function get_contact($customer_contact_id)
	{
		$this->db->where('customer_contact_id', $customer_contact_id);
		$this->db->join('mail','customer_contact.mail_id = mail.mail_id','left');
		$this->db->select('
			customer_contact_id,
			entered_at,
			type_id,
			note,
			group,
			customer_contact.mail_id,
			next_contact,
			customer_contact.employee_id,
			contact_of,
			customer_contact.customer_id AS customer_contact_customer_id,
			mail.mail_id,
			mail.body
			');
		$query = $this->db->get('customer_contact');
 $q=$query->result();
		return $q;
	}
	function add_record($data) 
	{
		$this->db->insert('customer_contact', $data);
		return;
	}
	
	function update_record($data) 
	{	
		$this->db->where('customer_contact_id', $this->uri->segment(3));
		$this->db->update('customer_contact', $data);
	}
	
	function delete_record()
	{
		$this->db->where('customer_contact_id', $this->uri->segment(3));
		$this->db->delete('customer_contact');
	}
	
	
	
//	function get_tax($activity, $activity_id, $nr_people=1, $nr_days=1)
//	{
//		$q_string = 
//		" SELECT
//		activity.activity_id, 
//		activity.tax_plan_id, 
//		tax_plan.*, 
//		tax_plan_to_tax.*, 
//		tax.amount         as tax_amount,
//		tax.amount_type    as tax_amount_type,
//		tax.is_exempt	   as tax_is_exempt,
//		tax.person_or_reservation  as tax_person_or_reservation
//		\n"
//		. "FROM   
//		activity,
//		tax_plan_to_tax,
//		tax_plan,
//		tax
//		\n"
//		. "WHERE (\n"
//		. "$activity_id = activity.activity_id\n"
//		. "and activity.tax_plan_id = tax_plan_to_tax.tax_plan_id\n"
//		. "and tax_plan_to_tax.tax_id= tax.tax_id  \n"
//		. ")\n"
//		. " ";
//		
//		$query= $this->db->query($q_string);
//		foreach ($query->result_array()  as $tax)
//		{
//			if ( ! $tax['tax_is_exempt'] )
//			{
//				if ($tax['tax_amount_type'] == 'P') // percent
//				{
//					$activity['tax'] += $activity['rate_price']/ 100 * $tax['tax_amount'];
//				}
//				elseif ($tax['tax_amount_type'] == 'G') // reduced amount
//				{
//					$activity['tax'] +=   $tax['tax_amount'];
//				}
//				elseif ($tax['tax_amount_type'] == 'D') // reduced amount per day
//				{
//					$activity['tax'] +=   $tax['tax_amount'] * $nr_days;
//				}
//				
//				if ($tax['tax_person_or_reservation']=="P") // tax per person
//				{
//					$activity['tax'] +=   $tax['tax_amount'] * $nr_people;
//				}
//			}
//		}
//		
//		
//		return $activity;
//	}
//			
//	function get_eff_date($arow, $activity_rate_plan_id, $event_date)
//	{
//		$q_string = 
//		" SELECT
//		rate_plan.*, 
//		rate.*,
//		rate_price.rate_id,
//		rate_price.price as rate_price,
//		rate_price.effective_date as rp_eff_date
//		\n"
//		. "FROM   
//		rate_plan,
//		rate,
//		rate_price
//		\n"
//		. "WHERE (\n"
//		. "$activity_rate_plan_id = rate_plan.rate_plan_id\n"
//		. "and rate_plan.rate_plan_id = rate.rate_plan_id \n"
//		. "and rate.rate_id = rate_price.rate_id\n"
//		. ")\n"
//		. "order by rate_price.effective_date desc \n" 
//		. " ";
//		
//		$query= $this->db->query($q_string);
//		foreach ($query->result_array()  as $row)
//		{
//			
//			if ($row['rp_eff_date'] <= $event_date)
//			{
//				$arow['rate_price'] = $row['rate_price'];
//				$arow['rp_eff_date'] = $row['rp_eff_date'];
//				return $arow;
//			}
//		}
//		return array();
//	}
//	function get_discount($activity, $activity_id, $customer_contact_date)
//	{
//		$q_string = 
//		" SELECT
//		discount_to_activity.*, 
//		discount.amount         as discount_amount,
//		discount.amount_type    as discount_amount_type,
//		discount.is_rule_active as discount_is_rule_active,
//		discount.exp_date       as discount_exp_date
//		\n"
//		. "FROM   
//		discount_to_activity,
//		discount
//		\n"
//		. "WHERE (\n"
//		. "$activity_id = discount_to_activity.activity_id\n"
//		. "and discount.discount_id = discount_to_activity.discount_id \n"
//		. ")\n"
//		. "order by discount.exp_date desc \n" 
//		. " ";
//		
//		$query= $this->db->query($q_string);
//		foreach ($query->result_array()  as $discount)
//		{
//			if ($discount['discount_exp_date'] >= $customer_contact_date and $discount['discount_is_rule_active'] )
//			{
//				if ($discount['discount_amount_type'] == 'P') // percent
//				{
//					$activity['discount'] += $activity['rate_price']/ 100 * $discount['discount_amount'];
//				}
//				elseif ($discount['discount_amount_type'] == 'F') // fixed discount - nothing else matters
//				{
//					$activity['discount'] =  $discount['discount_amount'];
//					$activity['rate_price'] =  $activity['discount'];
//					return $activity;
//				}
//				elseif ($discount['discount_amount_type'] == LEDGER_RESERVED) // reduced amount
//				{
//					$activity['discount'] +=   $discount['discount_amount'];
//				}
//			}
//		}
////		$activity['rate_price'] = $activity['rate_price'] - $activity['discount'];
//		return $activity;
//	}
//			
//			
	
}
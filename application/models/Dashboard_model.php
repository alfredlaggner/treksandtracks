<?php

class Dashboard_model extends CI_Model
{

	function get_activities()
	{
		$query =
			$this->db->order_by('code', 'asc')
				->join('account', 'activity.account_id = account.account_id', 'left')
				->get('activity');
		return $query->result();
	}

	function get_locations()
	{
		$this->db->select('*,location.location_id as location_id');
		$this->db->order_by('code', 'asc');
		$this->db->join('coordinates', 'coordinates.location_id = location.location_id', 'left');
		$query = $this->db->get('location');
		return $query->result();
	}

	function get_regions()
	{
		$query = $this->db->get('region');
		return $query->result();
	}


	function get_styles()
	{
		$this->db->order_by('order', 'asc');
		$query = $this->db->get('style');
		return $query->result();
	}

	function get_style_name2($style_id)
	{
		$this->db->where('style_id', $style_id);
		$query = $this->db->get('style');
		return $query->row()->name;
	}

	function get_activity_name($activity_id)
	{
		$this->db->where('activity_id', $activity_id);
		$query = $this->db->get('activity');

		foreach ($query->result() as $row) {
			return $row->name;
		}
	}
	function get_location_name($location_id)
	{
		$this->db->where('location_id', $location_id);
		$query = $this->db->get('location');

		foreach ($query->result() as $row) {
			//	echo $row->name;
			return $row->name;
		}
	}
	function get_selected_activities()
	{
		$activity_id = $this->session->userdata('activity_id');
		$location_id = $this->session->userdata('location_id');
		$style_id = $this->session->userdata('style_id');
		$region_id = $this->session->userdata('region_id');
		$is_booked = $this->session->userdata('is_booked');
		$is_finished = $this->session->userdata('is_finished');

//echo "<br>activity_id= " . $activity_id ; 
//echo "<br>location_id= " . $location_id ; 
//echo "<br>style_id= " . $style_id ; 
//echo "<br>region_id= " . $region_id ; 
//echo "<br>is_booked= " . $is_booked ; 
//echo "<br>is_finished= " . $is_finished ; 


		$this->db->select('
				event.is_deleted,
				event.activity_id ,
				event.event_id AS event_event_id, 
				event.date AS event_date, 
				event.time AS event_time, 
				event.capacity_max AS capacity,
				event.available AS available,
				event.attending AS attending,
				event.location_id,
				location.*,
				location.name as location_name,
				location.code as location_code,
				activity.activity_id  AS activity_activity_id, 
				activity.name AS activity_name,
				activity.code AS code,
				activity.duration AS duration,
				activity.rate_plan_id AS activity_rate_plan_id');
		$this->db->join('activity', 'event.activity_id=activity.activity_id');
		$this->db->join('location', 'event.location_id=location.location_id');

		if ($event_id) $this->db->where("event.event_id", $event_id);
		if ($activity_id) $this->db->where("activity.activity_id", $activity_id);
		if ($location_id) $this->db->where("event.location_id", $location_id);
		if ($style_id) $this->db->where("activity.style_id", $style_id);
		if ($region_id) $this->db->where("location.region_id", $region_id);
		if ($is_booked) {
//			$where = "event.capacity_max > event.attending";
			$where = "event.attending > 0";
			$this->db->where($where);
		}
		if ($is_finished) {
			$this->db->where("event.date < ", date('Y-m-d'));
			$this->db->order_by('event.date', 'DESC');
		} else {
			$this->db->where("event.date >= ", date('Y-m-d'));
			$this->db->order_by('event.date', 'ASC');
		}

		$this->db->where("event.available > ", "0");
		$query = $this->db->get('event');


		$activities = array();
//	$x= $query->result_array();
//print_r($x); die();		
		foreach ($query->result_array() as $row) {
			$row['tax'] = 0.00;
			$row['discount'] = 0.00;

//price		
			$row = $this->new_get_eff_date($row, $row['activity_id'], $row['event_date']);
//if ($row)
//{			
//echo' =' . $row['activity_activity_id'];	
//echo' pr-' . $row['rate_price'];	
//echo' dis+' . $row['discount'] .'<br>';
//};
//die();
			$row = $this->get_discount($row, $row['activity_activity_id'], $row['event_date']);
			$row = $this->get_tax($row, $row['activity_activity_id']);
			array_push($activities, $row);
//discount
//			array_push($activities,$row);
//taxes			

		}
//echo "Name=".$row['activity_name'];

		return $activities;
	}

//xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


	function count_all()
	{
		return $this->db->count_all('activity');
	}


	function get_names()
	{
		$this->db->select('activity_id, name');
		$this->db->where('activity_id', $activity_id);
		$query = $this->db->get('activity');
		return $query->result();
	}

	function get_record($activity_id)
	{
		$this->db->where('activity_id', $activity_id);
		$query = $this->db->get('activity');
		return $query->result();
	}


	function get_activity_description_short($activity_id)
	{
		$this->db->where('activity_id', $activity_id);
		$query = $this->db->get('activity');

		foreach ($query->result() as $row) {
			return $row->description_short;
		}
	}

	function get_activity_code($activity_id)
	{
		$this->db->where('activity_id', $activity_id);
		$query = $this->db->get('activity');

		foreach ($query->result() as $row) {
			return $row->code;
		}
	}

	function get_activity_capacity($activity_id)
	{
		$this->db->where('activity_id', $activity_id);
		$query = $this->db->get('activity');
		foreach ($query->result() as $row) {
			return $row->capacity_max;
		}
	}

	function get_activity_to_region_records($activity_id)
	{
		$this->db->where('activity_id', $activity_id);
		$this->db->join('region', 'region.region_id = activity_to_region.region_id');
		$query = $this->db->get('activity_to_region');
		return $query->result();
	}

	function add_record($data)
	{
		$this->db->insert('activity', $data);
		return;
	}

	function update_record($data)
	{
		$this->db->where('activity_id', $this->uri->segment(3));
		$this->db->update('activity', $data);
	}

	function delete_record()
	{
		$this->db->where('activity_id', $this->uri->segment(3));
		$this->db->delete('activity');
	}

}
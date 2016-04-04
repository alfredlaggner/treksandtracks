<?php

class Physical_level_model extends CI_Model {
	
	function get_records()
	{
		$query = $this->db->get('physical_level');
		return $query->result();
	}
	
	function add_record($data) 
	{
		$this->db->insert('physical_level', $data);
		return;
	}
	
	function update_record($data) 
	{	
		$this->db->where('physical_level_id', $this->uri->segment(3));
		$this->db->update('physical_level', $data);
	}
	
	function delete_record()
	{
		$this->db->where('physical_level_id', $this->uri->segment(3));
		$this->db->delete('physical_level');
	}
	
}
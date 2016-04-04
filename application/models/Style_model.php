<?php

class Style_model extends CI_Model {
	
	function get_records()
	{
		$this->db->order_by('order','asc');
		$query = $this->db->get('style');
		return $query->result();
	}
	
	function get_record()
	{
		$this->db->where('style_id', $this->uri->segment(3));
		$query = $this->db->get('style');
		return $query->result();
	}
	
	function get_style_name()
	{
		$this->db->where('style_id', $this->uri->segment(3));
		$query = $this->db->get('style');
		return $query->result();
	}
	function get_style_name2($style_id)
	{
		$this->db->where('style_id', $style_id);
		$query = $this->db->get('style');
		return $query->row()->name;
	}
	
	function add_record($data) 
	{
		$this->db->insert('style', $data);
		return;
	}
	
	function update_record($data) 
	{	
		$this->db->where('style_id', $this->uri->segment(3));
		$this->db->update('style', $data);
	}
	
	function delete_record()
	{
		$this->db->where('style_id', $this->uri->segment(3));
		$this->db->delete('style');
	}
	
}
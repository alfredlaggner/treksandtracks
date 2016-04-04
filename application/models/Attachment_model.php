<?php

class Attachment_model extends CI_Model {
	
	function get_records()
	{
		$query = $this->db->get('attachment');
		return $query->result();
	}
	function get_attachment_name($attachment_id)
	{
		$this->db->where('attachment_id', $attachment_id);
		$query = $this->db->get('attachment');
		foreach ($query->result() as $row)
		{
			return $row->attachment;
		}
	}
	function get_record()
	{
		$this->db->where('attachment_id', $this->uri->segment(3));
		$query = $this->db->get('attachment');
		return  $query->result();
	}
	function count_all()
	{
			return $this->db->count_all('template');
	}
	
	function add_record($data) 
	{
		$this->db->insert('attachment', $data);
		return;
	}
	
	function update_record($attachment_id=0,$data) 
	{
		if ($attachment_id)
			$this->db->where('attachment_id', $attachment_id);
		else	
			$this->db->where('attachment_id', $this->uri->segment(3));
		
		$this->db->update('attachment', $data);
	}
	
	function delete_record($attachment_id=0)
	{
		if ($attachment_id)
			$this->db->where('attachment_id', $attachment_id);
		else	
			$this->db->where('attachment_id', $this->uri->segment(3));
			
		$this->db->delete('attachment');
	}
	
}
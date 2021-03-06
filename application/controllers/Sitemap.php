<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Sitemap extends CI_Controller
{

//    function Sitemap()
//    {
//        parent::Controller();
//            $this->load->library('sitemap'); 
//    }

	function index()
	{
		// Show the index page of each controller (default is FALSE)
		$this->sitemap->set_option('show_index', true);

		// Exclude all methods from the "Test" controller
		$this->sitemap->ignore('Test', '*');

		// Exclude all methods from the "Job" controller
		$this->sitemap->ignore('Job', '*');

		// Exclude a list of methods from any controller
		$this->sitemap->ignore('*', array('view', 'create', 'edit', 'delete'));

		// Exclude this controller
		$this->sitemap->ignore('Sitemap', '*');

		// Show the sitemap
		echo '<h1>Sitemap</h1>';
		echo $this->sitemap->generate();
	}
}
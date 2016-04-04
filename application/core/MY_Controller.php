<?php

class Admin_Controller extends CI_Controller {

    //Class-wide variable to store user object in.
    protected $the_user;

    public function __construct() {

        parent::__construct();
        //Check if user is in admin group
        if ( $this->ion_auth->is_admin() ) {
            //Put User in Class-wide variable
            $data->the_user = $this->ion_auth->get_user();

            //Store user in $data
            $data->the_user = $this->the_user;

            //Load $the_user in all views
            $this->load->vars($data);
        }
        else {
				redirect('auth/login'); //use redirects instead of loading views for compatibility with MY_Controller libraries
        }
    }
}

class User_Controller extends CI_Controller {

    protected $the_user;

    public function __construct() {

        parent::__construct();

        if($this->ion_auth->is_group('users')) {
            $data->the_user = $this->ion_auth->get_user();
            $this->the_user = $data->the_user;
            $this->load->vars($data);
        }
        else {
				redirect('/'); //use redirects instead of loading views for compatibility with MY_Controller libraries
        }
    }
}

class Common_Auth_Controller extends CI_Controller {

    protected $the_user;

    public function __construct() {

        parent::__construct();

        if($this->ion_auth->logged_in()) {
 //           $data->the_user = $this->ion_auth->get_user();
 //           $this->the_user = $data->the_user;
 //           $this->load->vars($data);
 // //error in localhost only - take off comments in production
        }
        else {
				redirect('auth/login'); //use redirects instead of loading views for compatibility with MY_Controller libraries
        }
    }
}
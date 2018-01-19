<?

class Dashboard extends MY_Controller
{
	function __construct()
	{
		parent::__construct();
	}

	function index()
	{
		$data = array();
		$data['activities'] = $this->dashboard_model->get_activities();
		$data['locations'] = $this->dashboard_model->get_locations();
		$data['regions'] = $this->dashboard_model->get_regions();
		$data['styles'] = $this->dashboard_model->get_styles();
		$data['signups'] = array();
		$this->load->view('dashboard/dashboard_view', $data);
	}

	function select_activity()
	{
		$activity_id = $this->input->post('activity_id');
		$location_id = $this->input->post('location_id');
		$is_booked = isset($_POST['is_booked']) ? 1 : 0;
		$is_finished = isset($_POST['is_finished']) ? 1 : 0;

		$style_id = 0;

		$newdata = array(
			'activity_id' => $activity_id,
			'location_id' => $location_id,
			'style_id' => $style_id,
			'is_booked' => $is_booked,
			'is_finished' => $is_finished,
		);
		$this->session->set_userdata($newdata);

		$data = array(
			'activity_text' => $activity_id ? $this->dashboard_model->get_activity_name($activity_id) : '',
			'location_text' => $location_id ? $this->dashboaard_model->get_location_name($location_id) : '',
			'style_text' => $style_id ? $this->dashboard_model->get_style_name2($style_id) : '',
			'is_booked_text' => $is_booked ? 'Activites with booking ' : '',
			'is_finished_text' => $is_finished ? 'Past activities ' : 'Upcoming activities ',
		);
		$this->session->set_userdata($data);

		if ($this->input->post('activity_update') == "Calendar View") {
			redirect('calendar/display', 'refresh');
		}

		if ($this->input->post('activity_update') == "List View") {
			$data['title'] = 'Activity List';
			$data['title_action'] = $is_finished ? 'Activity History' : "Upcoming Activities";
			$data['top_note'] =
				$this->session->userdata('activity_text') . ' - ' .
				$this->session->userdata('location_text') . ' - ' .
				$this->session->userdata('is_finished_text') . ' - ' .
				$this->session->userdata('is_booked_text') . ' - ' .
				$this->session->userdata('style_text');;

			$data['bottom_note'] = '';
			$data['records'] = $this->activity_booking_model->get_selected_activities();
			$this->load->view('activity/activity_booking_view', $data);
		}


	}

	function select_style()
	{
		$style_id = $this->input->post('style_id');
		$is_booked = isset($_POST['is_booked']) ? 1 : 0;
		$is_finished = isset($_POST['is_finished']) ? 1 : 0;

		{
			$activity_id = 0;
			$location_id = 0;
		}


		$newdata = array(
			'activity_id' => $activity_id,
			'location_id' => $location_id,
			'style_id' => $style_id,
			'is_booked' => $is_booked,
			'is_finished' => $is_finished,
		);
		$this->session->set_userdata($newdata);
		$data = array(
			'activity_text' => $activity_id ? $this->dashboard_model->get_activity_name($activity_id) : 'All activities ',
			'location_text' => $location_id ? $this->dashboard_model->get_location_name($location_id) : 'All locations ',
			'style_text' => $style_id ? $this->dashboard_model->get_style_name2($style_id) : 'All ltypes',
			'is_booked_text' => $is_booked ? 'Activites with booking ' : '',
			'is_finished_text' => $is_finished ? 'Past activities ' : 'Upcoming activities ',
		);
		$this->session->set_userdata($data);

		if ($this->input->post('style_update') == "Calendar View") {
			redirect('calendar/display', 'refresh');
		}
		if ($this->input->post('style_update') == "List View") {
			$data['title'] = 'Activity List';
			$data['title_action'] = 'By Activity Type';
			$data['top_note'] =
				$this->session->userdata('style_text') . ' ' .
				$this->session->userdata('is_finished_text') . ' ' .
				$this->session->userdata('is_booked_text') . ' ' .
				$this->session->userdata('location_text') . ' ' .
				$this->session->userdata('activity_text');;
			$data['bottom_note'] = '';
			$data['records'] = $this->dashboard_model->get_selected_activities();
			$this->load->view('activity/activity_booking_view', $data);
		}
	}
}
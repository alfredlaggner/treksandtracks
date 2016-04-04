<?

class Dashboard extends Common_Auth_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->_ajax();
    }

    function _ajax()
    {
        $this->load->library('xajax_core/xajax');    # libraries/xajax/Xajax.php
        // Xajax Form Validator library
        $this->load->library('xajax/xajax_validator');

        $this->xajax->configure("requestURI", base_url() . 'dashboard/');    # index.php/controller/
        $this->xajax->configure("javascript URI", base_url() . 'js_tt/');        # loc of xajax_js/

        $this->xajax->register(XAJAX_FUNCTION, array('ledger_statistics', &$this, 'ledger_statistics'));
        $this->xajax->register(XAJAX_FUNCTION, array('delete_event', &$this, 'delete_event'));
        $this->xajax->processRequest();
    }

    function delete_event($event_id, $count)
    {
        $invisible = $this->activity_booking_model->mark_deleted($event_id);

        if ($invisible)
            $status = "Invisible";
        else
            $status = "";


        $objResponse = new xajaxResponse();
        $objResponse->Assign("status" . $count, "innerHTML", $status);

        return $objResponse;
    }


    function ledger_statistics($form_data)
    {
        //	echo $range;
        $data['signups'] = $this->ledger_model->get_overview_by_date(false, 0, $form_data['activity_id'], $form_data['location_id'], $form_data['region_id'], $form_data['event_date_from'], $form_data['event_date_to'], $form_data['booking_date_from'], $form_data['booking_date_to']);

        $objResponse = new xajaxResponse();
        if ($data['signups'])
            $objResponse->Assign("ledger_result", "innerHTML", $this->load->view("xajax/ledger_result", $data, TRUE));
        else
            $objResponse->Assign("ledger_result", "innerHTML", "Nothing found. Try again.");
        return $objResponse;
    }


    function index()
    {
        $data = array();
        $data['activities'] = $this->activity_model->get_records();
        $data['locations'] = $this->location_model->get_records();
        $data['regions'] = $this->region_model->get_records();
        $data['styles'] = $this->style_model->get_records();
        $data['signups'] = array();
 //       $data['signups'] = $this->ledger_model->get_overview_by_date(false);
//print_r($data['signups']);die();		
        $this->load->view('dashboard/dashboard_view', $data);
    }


    function exp_excel()
    {
//		if ($this->input->post('email_list') == "Email List")
//		{
//			$data['signups'] = $this->ledger_model->get_overview_by_date(true,0,$this->input->post('activity_id'),$this->input->post('location_id'),$this->input->post('region_id'),$this->input->post('event_date_from'),$this->input->post('event_date_to'),$this->input->post('booking_date_from'),$this->input->post('booking_date_to'));
//		}
//		$this->index();
        $activity_id = $this->input->post('activity_id');
        $location_id = $this->input->post('location_id');
        $region_id = $this->input->post('region_id');
        $event_date_from = $this->input->post('event_date_from');
        $event_date_to = $this->input->post('event_date_to');
        $booking_date_from = $this->input->post('booking_date_from');
        $booking_date_to = $this->input->post('booking_date_to');

        $sdata = array(
            'activity_id' => $activity_id,
            'location_id' => $location_id,
            'region_id' => $region_id,
            'event_date_from' => $event_date_from,
            'event_date_to' => $event_date_to,
            'booking_date_from' => $booking_date_from,
            'booking_date_to' => $booking_date_to
        );
//print_r($sdata);			
        $this->session->set_userdata($sdata);

        if ($this->input->post('email_list') == "Email List") {
            $data['signups'] = $this->ledger_model->get_overview_by_date(true, 0, $this->input->post('activity_id'), $this->input->post('location_id'), $this->input->post('region_id'), $this->input->post('event_date_from'), $this->input->post('event_date_to'), $this->input->post('booking_date_from'), $this->input->post('booking_date_to'));
            $this->index();
        } else {
            $data = array();
            $data['activities'] = $this->activity_model->get_records();
            $data['locations'] = $this->location_model->get_records();
            $data['regions'] = $this->region_model->get_records();
            $data['styles'] = $this->style_model->get_records();
            $data['signups'] = $this->ledger_model->get_overview_by_date(false, 0, $this->input->post('activity_id'), $this->input->post('location_id'), $this->input->post('region_id'), $this->input->post('event_date_from'), $this->input->post('event_date_to'), $this->input->post('booking_date_from'), $this->input->post('booking_date_to'));
//print_r($data['signups']);die();		
            $this->load->view('dashboard/dashboard_view', $data);
        }
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
            'activity_text' => $activity_id ? $this->activity_model->get_activity_name($activity_id) : '',
            'location_text' => $location_id ? $this->location_model->get_location_name($location_id) : '',
            'style_text' => $style_id ? $this->style_model->get_style_name2($style_id) : '',
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
            $data['records'] = $this->activity_booking_model->get_records();
            $this->load->view('activity/activity_booking_view', $data);
        }


    }

    function exceltest2()

        /** Error reporting */
    {
        error_reporting(E_ALL);
        ini_set('display_errors', TRUE);
        ini_set('display_startup_errors', TRUE);

        define('EOL', (PHP_SAPI == 'cli') ? PHP_EOL : '<br />');

        date_default_timezone_set('Europe/London');

        /** Include PHPExcel */
//require_once '../Classes/PHPExcel.php';

// Create new PHPExcel object
        echo date('H:i:s') . ' Create new PHPExcel object' . EOL;
        $objPHPExcel = new PHPExcel();

// Set document properties
        echo date('H:i:s') . ' Set document properties' . EOL;
        $objPHPExcel->getProperties()->setCreator('Maarten Balliauw')
            ->setLastModifiedBy('Maarten Balliauw')
            ->setTitle('PHPExcel Test Document')
            ->setSubject('PHPExcel Test Document')
            ->setDescription('Test document for PHPExcel, generated using PHP classes.')
            ->setKeywords('office PHPExcel php')
            ->setCategory('Test result file');

// Create the worksheet
        echo date('H:i:s') . ' Add data' . EOL;
        $objPHPExcel->setActiveSheetIndex(0);
        $objPHPExcel->getActiveSheet()->setCellValue('A1', 'Year')
            ->setCellValue('B1', 'Quarter')
            ->setCellValue('C1', 'Country')
            ->setCellValue('D1', 'Sales');

        $dataArray = array(array('2010', 'Q1', 'United States', 790),
            array('2010', 'Q2', 'United States', 730),
            array('2010', 'Q3', 'United States', 860),
            array('2010', 'Q4', 'United States', 850),
            array('2011', 'Q1', 'United States', 800),
            array('2011', 'Q2', 'United States', 700),
            array('2011', 'Q3', 'United States', 900),
            array('2011', 'Q4', 'United States', 950),
            array('2010', 'Q1', 'Belgium', 380),
            array('2010', 'Q2', 'Belgium', 390),
            array('2010', 'Q3', 'Belgium', 420),
            array('2010', 'Q4', 'Belgium', 460),
            array('2011', 'Q1', 'Belgium', 400),
            array('2011', 'Q2', 'Belgium', 350),
            array('2011', 'Q3', 'Belgium', 450),
            array('2011', 'Q4', 'Belgium', 500),
            array('2010', 'Q1', 'UK', 690),
            array('2010', 'Q2', 'UK', 610),
            array('2010', 'Q3', 'UK', 620),
            array('2010', 'Q4', 'UK', 600),
            array('2011', 'Q1', 'UK', 720),
            array('2011', 'Q2', 'UK', 650),
            array('2011', 'Q3', 'UK', 580),
            array('2011', 'Q4', 'UK', 510),
            array('2010', 'Q1', 'France', 510),
            array('2010', 'Q2', 'France', 490),
            array('2010', 'Q3', 'France', 460),
            array('2010', 'Q4', 'France', 590),
            array('2011', 'Q1', 'France', 620),
            array('2011', 'Q2', 'France', 650),
            array('2011', 'Q3', 'France', 415),
            array('2011', 'Q4', 'France', 570),
            array('2010', 'Q1', 'Germany', 720),
            array('2010', 'Q2', 'Germany', 680),
            array('2010', 'Q3', 'Germany', 640),
            array('2010', 'Q4', 'Germany', 660),
            array('2011', 'Q1', 'Germany', 680),
            array('2011', 'Q2', 'Germany', 620),
            array('2011', 'Q3', 'Germany', 710),
            array('2011', 'Q4', 'Germany', 690),
            array('2010', 'Q1', 'Spain', 510),
            array('2010', 'Q2', 'Spain', 490),
            array('2010', 'Q3', 'Spain', 470),
            array('2010', 'Q4', 'Spain', 420),
            array('2011', 'Q1', 'Spain', 460),
            array('2011', 'Q2', 'Spain', 390),
            array('2011', 'Q3', 'Spain', 430),
            array('2011', 'Q4', 'Spain', 415),
            array('2010', 'Q1', 'Italy', 440),
            array('2010', 'Q2', 'Italy', 410),
            array('2010', 'Q3', 'Italy', 420),
            array('2010', 'Q4', 'Italy', 450),
            array('2011', 'Q1', 'Italy', 430),
            array('2011', 'Q2', 'Italy', 370),
            array('2011', 'Q3', 'Italy', 350),
            array('2011', 'Q4', 'Italy', 335),
        );
        $objPHPExcel->getActiveSheet()->fromArray($dataArray, NULL, 'A2');

// Set title row bold
        echo date('H:i:s') . ' Set title row bold' . EOL;
        $objPHPExcel->getActiveSheet()->getStyle('A1:D1')->getFont()->setBold(true);

// Set autofilter
        echo date('H:i:s') . ' Set autofilter' . EOL;
// Always include the complete filter range!
// Excel does support setting only the caption
// row, but that's not a best practise...
        $objPHPExcel->getActiveSheet()->setAutoFilter($objPHPExcel->getActiveSheet()->calculateWorksheetDimension());

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
        $objPHPExcel->setActiveSheetIndex(0);


// Save Excel 2007 file
        echo date('H:i:s'), " Write to Excel2007 format", EOL;
        $callStartTime = microtime(true);

        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
        $objWriter->save(str_replace('.php', '.xlsx', __FILE__));
        $callEndTime = microtime(true);
        $callTime = $callEndTime - $callStartTime;

        echo date('H:i:s'), " File written to ", str_replace('.php', '.xlsx', pathinfo(__FILE__, PATHINFO_BASENAME)), EOL;
        echo 'Call time to write Workbook was ', sprintf('%.4f', $callTime), " seconds", EOL;
// Echo memory usage
        echo date('H:i:s'), ' Current memory usage: ', (memory_get_usage(true) / 1024 / 1024), " MB", EOL;


// Save Excel 95 file
        echo date('H:i:s'), " Write to Excel5 format", EOL;
        $callStartTime = microtime(true);

        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
        $objWriter->save(str_replace('.php', '.xls', __FILE__));
        $callEndTime = microtime(true);
        $callTime = $callEndTime - $callStartTime;

        echo date('H:i:s'), " File written to ", str_replace('.php', '.xls', pathinfo(__FILE__, PATHINFO_BASENAME)), EOL;
        echo 'Call time to write Workbook was ', sprintf('%.4f', $callTime), " seconds", EOL;
// Echo memory usage
        echo date('H:i:s'), ' Current memory usage: ', (memory_get_usage(true) / 1024 / 1024), " MB", EOL;


// Echo memory peak usage
        echo date('H:i:s') . ' Peak memory usage: ' . (memory_get_peak_usage(true) / 1024 / 1024) . ' MB' . EOL;

// Echo done
        echo date('H:i:s') . ' Done writing files' . EOL;
        echo 'Files have been created in ', getcwd(), EOL;
    }

    function exceltest()
    {//load our new PHPExcel library
        $this->load->library('excel');
        //activate worksheet number 1
        $this->excel->setActiveSheetIndex(0);
        //name the worksheet
        $this->excel->getActiveSheet()->setTitle('test worksheet');
        //set cell A1 content with some text
        $this->excel->getActiveSheet()->setCellValue('A1', 'This is just some text value');
        //change the font size
        $this->excel->getActiveSheet()->getStyle('A1')->getFont()->setSize(20);
        //make the font become bold
        $this->excel->getActiveSheet()->getStyle('A1')->getFont()->setBold(true);
        //merge cell A1 until D1
        $this->excel->getActiveSheet()->mergeCells('A1:D1');
        //set aligment to center for that merged cell (A1 to D1)
        $this->excel->getActiveSheet()->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);

        $filename = 'just_some_random_name.xls'; //save our workbook as this file name
        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="' . $filename . '"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache

        //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
        //if you want to save it as .XLSX Excel 2007 format
        $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');
        //force user to download the Excel file without writing it to server's HD
        $objWriter->save('php://output');


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
            'activity_text' => $activity_id ? $this->activity_model->get_activity_name($activity_id) : 'All activities ',
            'location_text' => $location_id ? $this->location_model->get_location_name($location_id) : 'All locations ',
            'style_text' => $style_id ? $this->style_model->get_style_name2($style_id) : 'All ltypes',
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
            $data['records'] = $this->activity_booking_model->get_records();
            $this->load->view('activity/activity_booking_view', $data);
        }
    }

    function ledger_overview()
    {
        $data['title'] = 'Ledger Overview';
        $data['title_action'] = 'View Recently Joined';
        $data['top_note'] = '';
        $data['bottom_note'] = '';
        $data['breadcrumb'] = '<a href="#" title="Home">Home</a> > <a href="#" title="Dashboard">Dashboard</a> >';
        $data['records'] = $this->ledger_model->get_overview_by_date(false);
//print_r();die();			
        $this->load->view('dashboard/dashboard_view', $data);

    }

    function set_admin_status()
    {
        if (get_cookie('set_admin_status'))
            delete_cookie('set_admin_status');
        else {
            $cookie = array(
                'name' => 'set_admin_status',
                'value' => '1',
                'expire' => 60 * 60 * 24 * 365
            );
            set_cookie($cookie);
        }
        $this->index();
    }


    function backup_database()
    {
        $this->load->dbutil();
        $this->load->helper('file');
        $this->load->helper('download');
//$server_dir = LOCAL_SERVER_DIR.'backup.zip';
//$server_dir = TEST_SERVER_DIR.'backup.zip';
        $server_dir = PROD_SERVER_DIR . 'backup.zip';
        $prefs = array(
            'tables' => array(),  // Array of tables to backup.
            'ignore' => array(),           // List of tables to omit from the backup
            'format' => 'txt',             // gzip, zip, txt
            'filename' => 'mybackup.sql',    // File name - NEEDED ONLY WITH ZIP FILES
            'add_drop' => TRUE,              // Whether to add DROP TABLE statements to backup file
            'add_insert' => TRUE,              // Whether to add INSERT data to backup file
            'newline' => "\n"               // Newline character used in backup file
        );
        $backup = $this->dbutil->backup($prefs);
        write_file($server_dir, $backup);
        force_download('backup.sql', $backup);
        return TRUE;
    }

    function edit_discount()
    {
        $discount_code = $this->input->post('discount_code');
        $discount_id = $this->discount_model->get_discount_id($discount_code);
        $sdata = array('discount_code' => $discount_code);
        $this->session->set_userdata($sdata);

        if ($this->input->post('edit') == "Edit")
            $this->_edit_discount($discount_code);
        else
            $this->assign_activities($discount_id, $discount_code);
    }

    function _edit_discount($discount_code)
    {


        $data['activities'] = $this->activity_model->get_records();
        $data['locations'] = $this->location_model->get_records();
        $data['regions'] = $this->region_model->get_records();
        $data['styles'] = $this->style_model->get_records();

        $data['title'] = 'Discount Management';
        $data['title_action'] = 'Edit discount';
        $data['breadcrumb'] = '';
        $data['return_name'] = 'return_dash';
        $data['cancel_name'] = 'cancel_dash';
        $data['records'] = $this->discount_model->get_record_by_code($discount_code);
        $data['discount_plan_name'] = 'Discounts';
        $data['discount_types'] = $this->discount_type_model->get_records();
//		$discount_id = $this->discount_type_model->get_discount_id();
        $data['weekdays'] = $this->rate_price_model->weekend_days($this->discount_model->get_weekdays($this->discount_model->get_discount_id($discount_code)));

        $this->form_validation->set_rules('discount_code', 'Discount Code', 'required');
        $this->form_validation->set_rules('discount_code', 'Discount Code', 'callback_discount_code_check');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('dashboard/dashboard_view', $data);
        } else {
            $this->load->view('discount/discount_view', $data);
        }
    }
}
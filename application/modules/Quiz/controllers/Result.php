<?php
class Result extends Abstract_Controller
{
    public function __construct(){
        $this->userData = $this->checkLogin();
    }
    public function index(){
        $datatemplate =array(
            'title'=> $this->config->item('appName'),
            'body'=>'index',
            'answers' => $this->getModelQuiz()->getAnsweredQuestion($this->userData['uid']),
            'fullname' => $this->userData['fullname'],
            'loadCSS' => $this->loadassets->loadVendorsCSS(array("js/DataTables/datatables.css")),
            'loadJS' => $this->loadassets->loadVendorsJS(array("DataTables/datatables.js"))
        );
        $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
    }
    public function detail($qid){
        $data =$this->getModelQuiz()->getDetailQuestion($qid);
        $datatemplate =array(
            'title'=> $this->config->item('appName'),
            'body'=>'details',
            'dataQ' => $data,
            'fullname' => $this->userData['fullname']
        );

        $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
    }
}

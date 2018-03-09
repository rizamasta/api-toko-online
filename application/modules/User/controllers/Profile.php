<?php 
class Profile extends Abstract_Controller
{
    public function __construct(){
        $this->userData = $this->checkLogin(site_url('profile/view'));
    }

    public function index(){
        $datatemplate =array(
            'title'=> $this->config->item('appName'),
            'body'=>'index',
            'profile' => $this->getModelUser()->getUser($this->userData['uid']),
            'loadJS' => $this->loadassets->loadVendorsJS(array("js/form-validation/jquery.validate.js")),
            'fullname' => $this->userData['fullname']
        );
        $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
    }

    public function edit(){
        $data = array(
            'fullname' => $this->input->post('name'),
            'phone' => $this->input->post('phone'),
        );
        if(!empty($this->input->post('password'))){
            $data['password'] = hash('sha256', str_replace(' ', '', $this->input->post('password')));
        }
        $this->getModelUser()->updateUser($data,$this->userData['uid']);
        redirect('profile/view');
    }

}

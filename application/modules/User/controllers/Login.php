<?php
class Login extends Abstract_Controller{
    public function __construct(){
        
    }
    public function index(){
        $userData = $this->userInfo();
        if(empty($userData)){
            $template = array(
                            'body'=>'view-login',
                            'title' =>'Login',
                            'user' => json_encode($this->userInfo())
                        );
            $this->load->view($this->config->item('vtemplate') . 'empty_layout', $template);
        }
        else{
            redirect("");
        }
    }
    public function auth()
    {
        
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_rules('email', 'username', 'required');
        if ($this->form_validation->run() == true) {
            $password = hash('sha256', str_replace(' ', '', $this->input->post('password')));
            $data =  $this->getModelUser()->getAuth($this->input->post('email'), $password);
            if (!empty($data)) {
                $data_login = array(
                    'uid' =>$data->uid,
                    'email' => $data->email,
                    'fullname' => $data->fullname,
                    'username' => $data->username,
                    'role'=> $data->role
                );
                $this->session->set_userdata('userForHire', $data_login);
                $msg = array(
                        'alert_msg'=>'Welcome back, '.$data->fullname.'!',
                        'type_msg'=>'success',
                    );
                $this->session->set_flashdata($msg);
            } else {
                $msg = array(
                    'alert_msg'=>'Incorrect username or password.',
                    'type_msg'=>'error',
                );
                $this->session->set_flashdata($msg);
            }
        } else {
            $msg = array(
                'alert_msg'=>'Please compelete input form.',
                'type_msg'=>'error',
            );
        }
        redirect("");
        
    }

    public function loginSosial(){
        $data = $this->input->post();
        if(!empty($data)){
            $login =  $this->getModelUser()->getUserByEmail($data['email']);
            if(!empty($login)){
                $data_login = array(
                    'uid' => $login->uid,
                    'email' => $login->email,
                    'fullname' => $login->fullname,
                    'username' => $login->username,
                    'role'=> $login->role
                );
                $this->session->set_userdata('userForHire', $data_login);
                $msg = array(
                        'alert_msg'=>'Welcome back, '.$login->fullname.'!',
                        'type_msg'=>'success',
                    );
                $this->session->set_flashdata($msg);
            }
            else{
                $username = explode('@',$data['email']);
                $data_insert = array(
                    'fullname' => $data['name'],
                    'email' => $data['email'],
                    'social_id' => $data['sosial_id'],
                    'username' => $username[0],
                    'password' => hash('sha256', str_replace(' ', '', $username[0])),
                    'role' => 'user',
                    'picture' => $data['image'],
                    'status' => 1
                );
                $insert =  $this->getModelUser()->insertUser($data_insert);
                $login =  $this->getModelUser()->getUserByEmail($data['email']);
                $data_login = array(
                    'uid' =>$login->uid,
                    'email' => $login->email,
                    'fullname' => $login->fullname,
                    'username' => $login->username,
                    'role'=> $login->role
                );
                $this->session->set_userdata('userForHire', $data_login);
                $msg = array(
                        'alert_msg'=>'Welcome back, '.$login->fullname.'!',
                        'type_msg'=>'success',
                    );
                $this->session->set_flashdata($msg);
            }
        }
        else{
            $msg = array(
                'alert_msg'=>'Please compelete input form.',
                'type_msg'=>'error',
            );
            redirect("logout");
        }
        echo json_encode($msg);
    }
}
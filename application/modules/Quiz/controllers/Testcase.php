<?php
class Testcase extends Abstract_Controller
{
    public function __construct(){
        $this->load->helper('string');
        $this->userData = $this->userInfo();
    }

    public function index(){
        redirect("free/generate-quiz");
    }

    public function quiz($id){
        $dataQ = $this->getModelQuiz()->getQuiz($id);
        if(empty($this->userData)){
            $msg = array(
                'status' => 'error',
                'message' => "Please login use existing user or your account below",
                'title' => 'Failed',
                'type' => 'danger'
            );
            $redir = site_url('free/test/'.$id);
            $this->session->set_flashdata($msg);
            redirect("user/login?redir=".$redir);
        }
        
        if(!empty($dataQ)){
            $datatemplate =array(
                'title'=> $this->config->item('appName'),
                'body'=>'quiz',
                'dataQ'=>$dataQ,
                'fullname' => $this->userData['fullname']
            );
            $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate); 
            
        }
        else{
            $msg = array(
                'status' => 'error',
                'message' => "Quiz doesn't existing or deleted",
                'title' => 'Failed',
                'type' => 'danger'
            );
            $this->session->set_flashdata($msg);
            redirect("free/generate-quiz");
        }
        
    }
    public function generate(){
        $id =random_string('alnum', 8);
        $qs= $this->getModelQuiz()->getQuestion(3);
        $url ="";
        if(!empty($qs)){
            $generated_question = array();
            foreach($qs as $q){
                $a = $this->getModelQuiz()->getAnswers($q->qid);
                $q->answer = $a;
                array_push($generated_question,$q);
            }
            $data = array(
                'gid' =>$id,
                'question' => json_encode($generated_question),
                'paging'=> 1,
                'page_length'=>5,
                'total_question' => count($generated_question),
                'timer' => 1,
                'countdown_h' =>0,
                'countdown_m' =>30,
                'countdown_s' =>0,
                'create_by' => 1 );

            if($this->getModelQuiz()->insertQuiz($data)){
                $msg = array(
                    'status' => 'success',
                    'message' => "Generate question to quiz has been successfull",
                    'title' => 'Success',
                    'type' => 'success'
                );
                $url ="free/test/".$id;
            }
            else{
                $msg = array(
                    'status' => 'error',
                    'message' => "Failed to save question",
                    'title' => 'Failed',
                    'type' => 'danger'
                );
                $url ="";
            }

        }
        else{
            $msg = array(
                'status' => 'error',
                'message' => "Failed to generate question to quiz",
                'title' => 'Failed',
                'type' => 'danger'
            );
            $url ="";
        }
        $this->session->set_flashdata($msg);
        redirect($url);
    }
}

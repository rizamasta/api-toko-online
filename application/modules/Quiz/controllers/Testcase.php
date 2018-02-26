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
        // if(empty($this->userData)){
        //     $msg = array(
        //         'status' => 'error',
        //         'message' => "Please login use existing user or your account below",
        //         'title' => 'Failed',
        //         'type' => 'danger'
        //     );
        //     $redir = site_url('free/test/'.$id);
        //     $this->session->set_flashdata($msg);
        //     redirect("user/login?redir=".$redir);
        // }

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
        $qs= $this->getModelQuiz()->getQuestion(1);
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
                'page_length'=>3,
                'total_question' => count($generated_question),
                'timer' => 1,
                'countdown_h' =>0,
                'countdown_m' =>30,
                'countdown_s' =>0,
                'create_by' => !empty($this->userData)?$this->userData['uid']:1
              );

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

    public function startTest($id){
        $data = array('status'=>2);
        $condition = array('gid'=>$id,'status'=>1);
        $update = $this->getModelQuiz()->updateQuiz($data,$condition);
        $startData = $this->getModelQuiz()->getQuiz($id);
        if(!empty($startData)){
            $time = new DateTime($startData->updated_at);
            $time->add(new DateInterval('PT' . $startData->countdown_m . 'M'));
            $stamp = $time->format('Y-m-d H:i:s');
            $to_time = strtotime($stamp);
            $from_time = strtotime($startData->current_time);
            $rData = array(
                'count_down' => round(abs($to_time - $from_time) / 60,2)
            );
            $res = array('status'=>'success','msg'=>"continue",'data'=>$rData,'updated'=>date('Y-m-d H:i:s'),'plustime'=>$stamp);
        }
        else{
            $res = array('status'=>'failed','msg'=>"can't get data test",'data'=>array());
        }
        echo json_encode($res);
    }

    public function submit(){
        $data = $this->input->post();
        $qid = $this->input->post('id_quiz');
        $question = $this->getModelQuiz()->getQuiz($qid);
        $questions = json_decode($question->question);
        $quiz = json_decode($question->question);
        $result = 0;
        $c = 0;
        $w = 0;
        $na =0;
        $answers = array();
        for($i=0;$i<$question->total_question;$i++){
            if(empty($this->input->post('answer_'.$i))){
                array_push($answers,0);
            }
            else{
                array_push($answers,$this->input->post('answer_'.$i));
            }
            // if(empty($this->input->post('answer_'.$i))){
            //     $na +=1;
            // }
            // else{
            //     $jawab  = ($this->encrypt_decrypt('decrypt',$this->input->post('answer_'.$i),'ans'))." ";
            //     if($jawab==0){
            //         $w+=1;
            //     }
            //     else{
            //         $c+=1;
            //     }
            //     $result +=$jawab;
            // }
        }
        $idx = 0;
        $result=0;
        
        foreach($questions as $q){
            $op = "A";
            // echo $answers[$idx];
            if($answers[$idx]!="0"){
                foreach($q->answer as $option){
                    if($op==$answers[$idx]){
                        $jawab=$option->weight;
                    }
                    // echo $op;
                    $op++;
                }
            }
            else{
                $jawab ="-";
                $na +=1;
            }
            if($jawab==0){
                $w+=1;
            }
            else{
                $c+=1;
            }
            $result +=$jawab;
            $questions[$idx]->answering = $answers[$idx];
            $idx ++;
            
        }
        $val = $result/ $question->total_question;
        // if(!empty($this->userData)){
            $datatemplate =array(
                'title'=> $this->config->item('appName'),
                'body'=>'result',
                'result' => $val,
                'correct' => $c,
                'wrong' => $w,
                'na' =>$na,
                'total' => $question->total_question,
                'fullname' => $this->userData['fullname']
            );
            $dataAnswer = array(
                'qid' => $qid,
                'answers' => json_encode($questions),
                'score' => $val,
                'wrong' => $w,
                'correct' => $c,
                'notanswer' => $na,
                'created_by'=>$this->userData['uid']
            );
            $this->getModelQuiz()->insertAnswer($dataAnswer);
            $this->load->view($this->config->item('vtemplate') . 'layout', $datatemplate);
        // }
        // else{
        //     redirect('user/login');
        // }

    }
}

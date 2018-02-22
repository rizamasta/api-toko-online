<?php
  function encrypt_decrypt($action, $string, $secret_key) {
    $output = false;

    $encrypt_method = "AES-256-CBC";
    $secret_iv = "";

    // hash
    $key = hash('sha256', $secret_key);

    // iv - encrypt method AES-256-CBC expects 16 bytes - else you will get a warning
    $iv = substr(hash('sha256', $secret_iv), 0, 16);

    if ($action == 'encrypt') {
        $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
        $output = base64_encode($output);
    } else if ($action == 'decrypt') {
        $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
    }

    return $output;
}
?>
<div class="custom-header">FREE TEST </div>
<div style="padding-top:80px"></div>
<div class="row opening">
    <div class="col-md-1"></div>
    <div class="col-md-10">
    <h3><strong>PLEASE NOTE</strong></h3>
    <p>
        
        This test session have <b><?php echo $dataQ->total_question?> question(s)</b>, please fill with the correct choice or right answer.
        <?php if($dataQ->timer==1):
         
            ?>
        If you has click start button, you just have <b>
            <?php echo number_format($dataQ->countdown_h)?> hour 
            <?php echo number_format($dataQ->countdown_m)?> minute 
            <?php echo number_format($dataQ->countdown_s)?> second</b>. Make sure you done befor time running out, if you've don't finish until the timer stop your answer will be submitted automaticly.
        <?php endif?>

    </p>
    <p class="text-right">
        <button class="btn btn-primary" onclick="startQuiz('<?php echo $dataQ->gid ?>')"> OK, START! </button>
    </p>
    </div>
</div>
<form id="formAnswer" >
    <div class="row quiz" style="display:none">
        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <?php 
                $questions = json_decode($dataQ->question);
                foreach($questions as $key=>$q):
            ?>
                <div id="q_<?php echo $key?>" class="col-lg-12">
                    <div class="col-md-12">
                        <div class="row row_question">
                            <div width="5%">
                                <?php 
                                    echo $key+1;
                                ?>
                            </div>
                            <div class="col-sm-10">
                                <?php 
                                    echo $q->question;
                                ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <?php if($q->type==1):
                                $op ="A";
                            foreach($q->answer as $option):
                                echo $op;
                        ?>
                            <input type="radio" name="answer_<?php echo $key?>" id="answer_<?php echo $key?>" required="true" value="<?php echo encrypt_decrypt('encrypt',$option->weight,'ans');?>"> <?php echo $option->answer?><br/>
                        <?php
                                $op++;
                                endforeach;
                        endif?>
                    </div>
                </div>
            <?php
                endforeach;
            ?>
            <div class="col-md-12">
                <p class="text-right">
                    <button type="button" id="btnPrev" class="btn btn-secondary"> <em class="fa fa-chevron-left"></em> Provious </button>
                    <button type="button" id="btnNext" class="btn btn-success"> Next <em class="fa fa-chevron-right"></em></button>
                    <button type="submit" id="btnSave"class="btn btn-primary"> Submit </em></button>
                </p>
            </div>
        </div>
    </div>
</form>
<script>
function startQuiz(id){
    var s = 20;
    setInterval(function(){
        s -=1;
        $(".custom-header").text('FREE TEST '+ s +'s')
    },1000);
    var p = "<?php echo $dataQ->paging?>";
    var pl = "<?php echo $dataQ->page_length?>";
    var t = "<?php echo $dataQ->total_question?>";
    if(p==1){
        for(i=0;i<t;i++){
            if(i<pl){
                $("#q_"+i).show();
            }
            else{
                $("#q_"+i).hide();
            }
        }
        $("#btnPrev").hide();
        $("#btnSave").hide();
    }
    else{
        $("#btnPrev").hide();
        $("#btnNext").hide();
    }
    $(".opening").hide();
    $(".quiz").fadeIn('slow');
};

 
</script>

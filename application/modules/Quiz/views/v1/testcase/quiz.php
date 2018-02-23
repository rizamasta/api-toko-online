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
<form id="formAnswer" action="<?php echo site_url('free/submit')?>" method="post">
    <div class="row quiz" style="display:none">
        <input type="hidden" name="id_quiz" id="id_quiz" value="<?php echo $dataQ->gid ?>">
        <div class="row col-lg-12">
            <div class="col-md-1"></div>
            <div class="col-md-10 text-numbering">1 to 3 from 10</div>
        </div>
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
                            <input type="radio" name="answer_<?php echo $key?>" id="answer_<?php echo $key?>" value="<?php echo encrypt_decrypt('encrypt',$option->weight,'ans');?>"> <?php echo $option->answer?>
                            <br/>
                        <?php
                                $op++;
                                endforeach;
                        endif?>
                    </div>
                    <br>
                </div>
            <?php
                endforeach;
            ?>
            <div class="col-md-12">
                <p class="text-right">
                    <button type="button" id="btnPrev" class="btn btn-secondary" onclick="prev()"> <em class="fa fa-chevron-left"></em> Provious </button>
                    <button type="button" id="btnNext" class="btn btn-success" onclick="next()"> Next <em class="fa fa-chevron-right"></em></button>
                    <button type="submit" id="btnSave"class="btn btn-primary"> Submit </em></button>
                </p>
            </div>
        </div>
    </div>
</form>
<script>
var page=0;
var ls = 0;
var p = <?php echo $dataQ->paging?>;
var pl = <?php echo $dataQ->page_length?>;
var t = <?php echo $dataQ->total_question?>;
var qs= <?php echo $dataQ->status?>;
function next(){
    if(ls<=t){
        page+=1;
        for(i=0;i<t;i++){
            $("#q_"+i).hide();
        }
        if(ls == 0){
            ls = pl;
        }
        ls = parseInt(ls)+parseInt(pl);
        var st = parseInt(ls)-parseInt(pl);
        if(t>ls){
            $("#btnPrev").show();
            $("#btnSave").hide();
        }
        else if(ls>=t){
            $("#btnPrev").show();
            $("#btnNext").hide();
            $("#btnSave").show();
        }
        
        for(i=st;i<ls;i++){
                if(i<ls){
                    $("#q_"+i).show();
                }
                else{
                    $("#q_"+i).hide();
                }
        }
        $(".text-numbering").text(st+1 +' to '+ ls+' from '+t);
    }
}
function prev(){
    if(page>1){
        page-=1;
        for(i=0;i<t;i++){
            $("#q_"+i).hide();
        }
        if(ls == 0){
            $("#btnPrev").hide();
            ls = pl;
        }
        ls = parseInt(ls)-parseInt(pl);
        var st = parseInt(ls)-parseInt(pl);
        if(t>ls){
            $("#btnPrev").show();
            $("#btnNext").show();
            $("#btnSave").hide();
        }
        else if(ls>=t){
            $("#btnPrev").show();
            $("#btnNext").hide();
            $("#btnSave").show();
        }
        if(page==1){
            $("#btnPrev").hide();
        }
        for(i=st;i<ls;i++){
                if(i<ls){
                    $("#q_"+i).show();
                }
                else{
                    $("#q_"+i).hide();
                }
        }
        $(".text-numbering").text(st+1 +' to '+ ls+' from '+t);
    }
}

function startQuiz(id){
    var timer = <?php echo $dataQ->timer?>;
    $.ajax({
        url :'<?php echo site_url('free/test-start/');?>'+id,
        type :'post',
        content_type: 'application/x-www-form-urlencoded',
        data : {},
        success:function(res){
            r = JSON.parse(res);
            if(timer==1){
                var m = r.data.count_down;
                var ms = (60*1000)*m;
                setInterval(function(){
                    ms -=1000;
                    var secs = Math.floor(ms / 1000);
                    var msleft = ms % 1000;
                    var hours = Math.floor(secs / (60 * 60));
                    var divisor_for_minutes = secs % (60 * 60);
                    var minutes = Math.floor(divisor_for_minutes / 60);
                    var divisor_for_seconds = divisor_for_minutes % 60;
                    var seconds = Math.ceil(divisor_for_seconds);
                    if(ms>0){
                        $(".custom-header").text('Your time is : '+ hours +' : '+minutes+' : '+seconds);   
                    }
                    else{
                        $("#formAnswer").submit();
                    }
                },1000);
            }
        },
        error: function(res,f){
            console.log(res);
            console.log(f)
        }
    })
    
    
    if(p==1){
        page = 1;
        
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
$(document).ready(function(){
    var qst = <?php echo $dataQ->status?>;
    if(qst==2){
        startQuiz($("#id_quiz").val())
    }
});
</script>

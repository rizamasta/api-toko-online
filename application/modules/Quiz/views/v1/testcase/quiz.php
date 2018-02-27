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
                $total_page = $dataQ->total_question/$dataQ->page_length;
                $total_page = ceil($total_page);
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
                                    $question ="";
                                    if(!empty(strpos($q->question, 'public_assets/'))){
                                        $question = str_replace('http://local.4hire.com/4hire',site_url(),$q->question);
                                    }
                                    else{
                                        $question = $q->question;
                                    }
                                    
                                    echo $question;
                                ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <?php if($q->type==1):
                                $op ="A";
                            foreach($q->answer as $option):?>
                            <div class="row_answer col-sm-12">
                                <div style="min-width:20px"><?php echo $op?></div>
                                <div>
                                <input type="radio" name="answer_<?php echo $key?>" id="answer_<?php echo $key?>" value="<?php echo $op;?>"> <?php echo $option->answer?>
                                </div>
                            </div>
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
            <div class="row col-md-12">
                <p class="text-center">
                    <?php if($dataQ->paging==1):?>
                    <?php for($p=1;$p<=$total_page;$p++):?>
                        <button type="button" id="btnPage<?php echo $p?>" class="btn <?php echo $p==1?'btn-secondary':'btn-success'?>" onclick="goto(<?php echo $p?>)" <?php echo $p==1?'disabled':''?>><?php echo $p?></button>
                    <?php endfor?>
                    <br/><br/>
                    <button type="button" id="btnPrev" class="btn btn-secondary" onclick="prev()"> <em class="fa fa-chevron-left"></em> Prev </button>
                    <button type="button" id="btnNext" class="btn btn-success" onclick="next()"> Next <em class="fa fa-chevron-right"></em></button>
                    <?php endif ?>
                    <button type="submit" id="btnSave"class="btn btn-primary"> Submit </em></button>
                </p>
            </div>
        </div>
    </div>
</form>

<!-- webcam recording -->
<video controls autoplay hidden></video>

<script>
var page=0;
var ls = 0;
var paging = <?php echo $total_page?>;
var p = <?php echo $dataQ->paging?>;
var pl = <?php echo $dataQ->page_length?>;
var t = <?php echo $dataQ->total_question?>;
var qs= <?php echo $dataQ->status?>;

// webcam recording
var recorder = '';
var camera = '';
function captureScreen(cb) {
    getScreenId(function (error, sourceId, screen_constraints) {
        navigator.mediaDevices.getUserMedia(screen_constraints).then(cb).catch(function(error) {
          console.error('getScreenId error', error);
          alert('Failed to capture your screen. Please check Chrome console logs for further information.');
        });
    });
}
function captureCamera(cb) {
    navigator.mediaDevices.getUserMedia({audio: false, video: true}).then(cb);
}
function keepStreamActive(stream) {
    var video = document.createElement('video');
    video.muted = true;
    setSrcObject(stream, video);
    video.style.display = 'none';
    (document.body || document.documentElement).appendChild(video);
}

function goto(current_page){
    if(current_page==1){
        $("#btnPrev").hide();
    }
    else{
        $("#btnPrev").show();
    }

    if(current_page==paging){
        $("#btnNext").hide();
        $("#btnSave").show();
    }
    else{
        $("#btnSave").hide();
        $("#btnNext").show();
    }
    for(i=1;i<=paging;i++){
        $("#btnPage"+i).removeClass('btn-secondary').addClass('btn-success');
        $("#btnPage"+i).prop('disabled',false);
    }
    $("#btnPage"+current_page).addClass('btn-secondary').removeClass('btn-success');
    $("#btnPage"+current_page).prop('disabled',true);
    page = current_page;
    for(i=0;i<t;i++){
            $("#q_"+i).hide();
        }
    var start = (pl*page)-pl;
    var end = start+pl;
    for(i=start;i<end;i++){
        
        if(i<end){
            $("#q_"+i).show();
        }
        else{
            $("#q_"+i).hide();
        }
    }

}
function next(){
    if(page==paging){
        return false;
    }
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
        var start = (pl*page)-pl;
        var end = start+pl;
        for(i=start;i<end;i++){
            
            if(i<end){
                $("#q_"+i).show();
            }
            else{
                $("#q_"+i).hide();
            }
        }
        $(".text-numbering").text(st+1 +' to '+ ls+' from '+t);
        for(i=1;i<=paging;i++){
            $("#btnPage"+i).removeClass('btn-secondary').addClass('btn-success');
            $("#btnPage"+i).prop('disabled',false);
        }
        $("#btnPage"+page).addClass('btn-secondary').removeClass('btn-success');
        $("#btnPage"+page).prop('disabled',true);
    }
}
function prev(){
    if(page==1){
        return false;
    }
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
        var start = (pl*page)-pl;
        var end = start+pl;
        for(i=start;i<end;i++){
            
            if(i<end){
                $("#q_"+i).show();
            }
            else{
                $("#q_"+i).hide();
            }
        }
        $(".text-numbering").text(st+1 +' to '+ ls+' from '+t);
    }
    for(i=1;i<=paging;i++){
        $("#btnPage"+i).removeClass('btn-secondary').addClass('btn-success');
        $("#btnPage"+i).prop('disabled',false);
    }
    $("#btnPage"+page).addClass('btn-secondary').removeClass('btn-success');
    $("#btnPage"+page).prop('disabled',true);
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

    // webcam recording
    captureScreen(function(screen) {
        keepStreamActive(screen);
        captureCamera(function(camera) {
            keepStreamActive(camera);
            screen.width = 1920;
            screen.height = 1080;
            // screen.width = window.screen.width;
            // screen.height = window.screen.height;
            screen.fullcanvas = true;
            
            camera.width = 320;
            camera.height = 240;
            camera.top = screen.height - camera.height;
            camera.left = screen.width - camera.width;
            
            recorder = RecordRTC([screen, camera], {
                type: 'video',
                mimeType: 'video/webm',
                previewStream: function(s) {
                    document.querySelector('video').muted = true;
                    setSrcObject(s, document.querySelector('video'));
                }
            });
            recorder.startRecording();
        });
    });
};
document.querySelector('#btnSave').onclick = function() {
    recorder.stopRecording(function() {
        var blob = recorder.getBlob();
        var uri = URL.createObjectURL(blob);
        document.querySelector('video').src = uri;
        document.querySelector('video').muted = false;
        download(blob, 'test', 'video/webm');
    });
};

$(document).ready(function(){
    var qst = <?php echo $dataQ->status?>;
    if(qst==2){
        startQuiz($("#id_quiz").val())
    }
});
</script>

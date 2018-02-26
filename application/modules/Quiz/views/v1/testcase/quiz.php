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
<script type="text/javascript" src="<?php echo base_url();?>public_assets/js/MediaStreamRecorder.js" ></script>
<script type="text/javascript" src="<?php echo base_url();?>public_assets/js/adapter-latest.js" ></script>
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
<section class="experiment">
    <div id="videos-container">
    </div>
</section>

<script>
var page=0;
var ls = 0;
var paging = <?php echo $total_page?>;
var p = <?php echo $dataQ->paging?>;
var pl = <?php echo $dataQ->page_length?>;
var t = <?php echo $dataQ->total_question?>;
var qs= <?php echo $dataQ->status?>;

// webcam recording
// function captureUserMedia(mediaConstraints, successCallback, errorCallback) {
//     navigator.mediaDevices.getUserMedia(mediaConstraints).then(successCallback).catch(errorCallback);
// }
// var mediaConstraints = {
//     video: true
// };

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
    // webcam recording
    // captureUserMedia(mediaConstraints, onMediaSuccess, onMediaError);

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
// document.querySelector('#btnSave').onclick = function() {
//     console.warn('Just stopped the recording');
//     mediaRecorder.stop();
//     mediaRecorder.save();
// };
// var mediaRecorder;
// function onMediaSuccess(stream) {
//     var video = document.createElement('video');
//     var videoWidth = 320;
//     var videoHeight = 240;
//     video = mergeProps(video, {
//         controls: true,
//         muted: true,
//         width: videoWidth,
//         height: videoHeight
//     });
//     video.srcObject = stream;
//     video.play();
//     videosContainer.appendChild(video);
//     videosContainer.appendChild(document.createElement('hr'));
//     mediaRecorder = new MediaStreamRecorder(stream);
//     mediaRecorder.stream = stream;
//     mediaRecorder.mimeType = 'video/webm'; // video/webm or video/mp4
//     mediaRecorder.videoWidth = videoWidth;
//     mediaRecorder.videoHeight = videoHeight;
//     mediaRecorder.ondataavailable = function(blob) {
//         console.info('blob', blob);
//         var a = document.createElement('a');
//         a.target = '_blank';
//         a.innerHTML = 'Open Recorded Video No. ' + (index++) + ' (Size: ' + bytesToSize(blob.size) + ') Time Length: ' + getTimeLength(timeInterval);
//         a.href = URL.createObjectURL(blob);
//         videosContainer.appendChild(a);
//         videosContainer.appendChild(document.createElement('hr'));
//     };
//     var timeInterval = 8000000;
//     if (timeInterval) timeInterval = parseInt(timeInterval);
//     else timeInterval = 5 * 1000;
//     // get blob after specific time interval
//     mediaRecorder.start(timeInterval);
// }
// function onMediaError(e) {
//     console.error('media error', e);
// }
// var videosContainer = document.getElementById('videos-container');
// var index = 1;
// // below function via: http://goo.gl/B3ae8c
// function bytesToSize(bytes) {
//     var k = 1000;
//     var sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
//     if (bytes === 0) return '0 Bytes';
//     var i = parseInt(Math.floor(Math.log(bytes) / Math.log(k)), 10);
//     return (bytes / Math.pow(k, i)).toPrecision(3) + ' ' + sizes[i];
// }
// // below function via: http://goo.gl/6QNDcI
// function getTimeLength(milliseconds) {
//     var data = new Date(milliseconds);
//     return data.getUTCHours() + " hours, " + data.getUTCMinutes() + " minutes and " + data.getUTCSeconds() + " second(s)";
// }

$(document).ready(function(){
    var qst = <?php echo $dataQ->status?>;
    if(qst==2){
        startQuiz($("#id_quiz").val())
    }
});
</script>

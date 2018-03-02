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
        <input type="hidden" name="video_url" id="video_url" value="<?php echo $dataQ->gid ?>">
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
            <!-- <div class="col-md-12">
                <p class="text-left msgErr" style="font-size: 12px;color: #c72828dd;"></p>
            </div> -->
            
            
            <div class="btnAction row col-md-12">
                <p class="text-center">
                    <?php if($dataQ->paging==1):?>
                    <?php for($p=1;$p<=$total_page;$p++):?>
                        <button type="button" id="btnPage<?php echo $p?>" class="btn <?php echo $p==1?'btn-secondary':'btn-success'?>" onclick="go_to(<?php echo $p?>,true,'xx')" <?php echo $p==1?'disabled':''?>><?php echo $p?></button>
                    <?php endfor?>
                    <br/><br/>
                    <button type="button" id="btnPrev" class="btn btn-secondary" onclick="prev()"> <em class="fa fa-chevron-left"></em> Prev </button>
                    <button type="button" id="btnNext" class="btn btn-success" onclick="next()"> Next <em class="fa fa-chevron-right"></em></button>
                    <?php endif ?>
                    <button type="button" id="btnRev" class="btn btn-warning" onclick="check()"> Review </button>
                </p>
            </div>
        </div>
    </div>
</form>
<div class="col-md-12 colRev" style="display:none"> 
    <table id="tableReview" class="tableReview table table-hover">
        <thead>
            <tr>
                <th width="120px">Question Number</th>
                <th>Answered Question</th>
                <th>Option</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
    <button type="button" id="btnSave"class="btn btn-primary btn-block" onclick="submitting()"> SUBMIT RESPONSE AND GRADE TEST </em></button>
    <button type="button" class="btn btn-warning btn-block" onclick="backtoquestion()"> CANCEL </em></button>
</div>

<!-- webcam recording -->
<video controls autoplay hidden></video>

<script  type="text/javascript">
var done=false,
    page=0,
    ls = 0,
    paging = <?php echo $total_page?>,
    p = <?php echo $dataQ->paging?>,
    pl = <?php echo $dataQ->page_length?>,
    t = <?php echo $dataQ->total_question?>,
    qs= <?php echo $dataQ->status?>,
    // webcam recording
    recorder = '',
    camera = '';
function uploadToPHPServer(blob) {
    var file = new File([blob], 'msr-' + (new Date).toISOString().replace(/:|\./g, '-') + '.webm', {
        type: 'video/webm'
    });

    // create FormData
    var formData = new FormData();
    formData.append('video-filename', file.name);
    formData.append('qid',$("#id_quiz").val());
    formData.append('video-blob', file);
    makeXMLHttpRequest("<?php echo site_url("recording/save")?>", formData, function() {
    });
}
function makeXMLHttpRequest(url, data, callback) {
    var request = new XMLHttpRequest();
    request.onreadystatechange = function() {
        if (request.readyState == 4 && request.status == 200) {
            done = true;
            var val = JSON.parse(request.response)
            if(val.status=='success'){
                $("#video_url").val(val.file_path);
                $("#formAnswer").submit();
            }
        }
    };
    request.open('POST', url);
    request.send(data);
}
function captureScreen(cb) {
    getScreenId(function (error, sourceId, screen_constraints) {
        navigator.mediaDevices.getUserMedia(screen_constraints).then(cb).catch(function(error) {
          done = true;
          alert('Anda diwajibkan untuk membagikan layar & camera');
          location.reload();
        });
    });
}
function captureCamera(cb) {
    navigator.mediaDevices.getUserMedia({audio: false, video: true}).then(cb).catch(function(error) {
          done = true;
          location.reload();
        });
}
function keepStreamActive(stream) {
    var video = document.createElement('video');
    video.muted = true;
    setSrcObject(stream, video);
    video.style.display = 'none';
    (document.body || document.documentElement).appendChild(video);
}
window.onbeforeunload = function() {
    console.log(done);
    if(!done){
        return "You will lost your answers";
    }
}
function submitting(){
    // webcam recording
    recorder.stopRecording(function() {
        var blob = recorder.getBlob();
        var uri = URL.createObjectURL(blob);
        document.querySelector('video').src = uri;
        document.querySelector('video').muted = false;
        // download(blob, 'test', 'video/webm');
        uploadToPHPServer(blob);
    });
}
function check(){
    var no =0;
    var going = 0;
    $(".msgErr").text("");
    $(".msgErr").hide();
    var notAnswer =[];
    var pages =[];
    for(i=1;i<=paging;i++){
        for(j=0;j<pl;j++){
            if(no<t){
                if($("#answer_"+no+":checked").val()==undefined){
                    var n = no<=t?no+1:t;
                    // notAnswer.push(n);
                    // pages.push(i);
                    notAnswer.push({'number':n,'answer':'no','page':i});
                }
                else{
                    var n = no<=t?no+1:t;
                    notAnswer.push({'number':n,'answer':'yes','page':i});
                }
                no++;
            }
        }
    }
    var nav ="";
    /*
    if(notAnswer.length >0){
        if(notAnswer.length > 4){
            for(i=0;i<4;i++){
                nav += notAnswer[i]+", ";
            }
            nav +="and "+(notAnswer.length-4)+" More..";
        }
        else{
            for(i=0;i<notAnswer.length;i++){
                if(i==0){
                    nav = notAnswer[i];
                }
                else{
                    nav +=", "+notAnswer[i];
                }
            }
        }
        // $(".msgErr").text("You not answers a question(s) number "+nav);
        // go_to(pages[0],false);
    }*/
    var tbody ="";
    var dataBody =[];
    notAnswer.forEach(function(v){
        var icons ='';
        if(v.answer=='yes'){
            icons ='<em class="fa fa-check fa-check" style="color: #0c925c;"></em>';
        }
        else{
            icons ='<em class="fa fa-check fa-remove" style="color: #d60c0c;"></em>';
        }
        dataBody.push({
                    '0':v.number,
                    '1':icons,
                    '2':"<button class='btn btn-sm btn-primary' onclick='go_to("+v.page+",true,"+v.number+")'>Go To Question</button>"
                    });
    });
    table.clear().draw();
    table.rows.add(dataBody).draw();
    $(".colRev").show();
    $("#formAnswer").hide();
    done = true;
}

function go_to(current_page,cm,qst){
    $(".colRev").hide();
    $("#formAnswer").show();
    if(cm){
        $(".msgErr").text("");
        $(".msgErr").hide();
    }
    if(current_page==1){
        $("#btnPrev").hide();
    }
    else{
        $("#btnPrev").show();
    }

    if(current_page==paging){
        $("#btnNext").hide();
        $("#btnRev").show();
    }
    else{
        $("#btnRev").hide();
        $("#btnNext").show();
    }
    for(i=1;i<=paging;i++){
        $("#btnPage"+i).removeClass('btn-secondary').addClass('btn-success');
        $("#btnPage"+i).prop('disabled',false);
    }
    if(qst!="xx"){
        var n= parseInt(qst)-1;
        $("#answer_"+n).autofocus;
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
    var l = end<=t?end:t;
    $(".text-numbering").text(start+1 +' to '+ l+' from '+t);

}
function next(){
    $(".msgErr").text("");
    $(".msgErr").hide();
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
        console.log("t "+t+" ls: "+" page"+page);
        if(page>1 && page < paging){
            $("#btnPrev").show();
            $("#btnNext").show();
            $("#btnRev").hide();
        }
        else{
            $("#btnRev").show();
            $("#btnNext").hide();
            $("#btnPrev").show();
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
        var l = end<=t?end:t;
        $(".text-numbering").text(start+1 +' to '+ l+' from '+t);
        for(i=1;i<=paging;i++){
            $("#btnPage"+i).removeClass('btn-secondary').addClass('btn-success');
            $("#btnPage"+i).prop('disabled',false);
        }
        $("#btnPage"+page).addClass('btn-secondary').removeClass('btn-success');
        $("#btnPage"+page).prop('disabled',true);
    }
}
function prev(){
    $(".msgErr").text("");
    $(".msgErr").hide();
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
        }
        else if(ls>=t){
            $("#btnPrev").show();
            $("#btnNext").hide();
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
    $("footer").hide();
    $(".msgErr").text("");
    $(".msgErr").hide();
    $(".colRev").hide();
    $(".text-numbering").text(1 +' to '+ pl+' from '+t);
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
                        done = true;
                        submitting();
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
        $("#btnRev").hide();
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
    if(p==t){
        $("#btnNext").hide();
        $("#btnRev").show();
    }
};
function backtoquestion (){
    $(".colRev").hide();
    $("#formAnswer").show();
}
$(document).ready(function(){
    table = $('#tableReview').DataTable();
    var qst = <?php echo $dataQ->status?>;
    if(qst==2){
        startQuiz($("#id_quiz").val())
    }
});
var table;
</script>
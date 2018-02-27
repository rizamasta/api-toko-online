<div class="custom-header">HISTORY TEST</div> 
<?php
    $total_page = $dataQ->total_question/$dataQ->page_length;
    $total_page = ceil($total_page);
    $answers = json_decode($dataQ->answers);
?>
<div style="padding-top:80px"></div>
<form id="formAnswer" action="<?php echo site_url('free/submit')?>" method="post">
    <div class="row quiz" style="display:none">
        <input type="hidden" name="id_quiz" id="id_quiz" value="<?php echo $dataQ->qid ?>">
        <div class="row col-lg-12">
            <div class="col-md-1"></div>
            <div class="col-md-10 text-numbering"></div>
        </div>
        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <?php 
                foreach($answers as $key=>$q):?>
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
                            foreach($q->answer as $option):
                            if($option->weight==100):
                                $jawaban = $op." ".$option->answer;
                                ?>
                                <div class="row_answer col-sm-12">
                                <div style="min-width:20px"><strong><?php echo $op?></strong></div>
                                <div>
                                <input disabled type="radio" name="answer_<?php echo $key?>" id="answer_<?php echo $key?>" value="<?php echo $op;?>" <?php if($q->answering !="0"){echo $op==$q->answering?'checked':'';}?>> <strong><?php echo $option->answer?></strong>
                                </div>
                            </div>
                            <?php else:?>
                            <div class="row_answer col-sm-12">
                                <div style="min-width:20px"><?php echo $op?></div>
                                <div>
                                <input disabled type="radio" name="answer_<?php echo $key?>" id="answer_<?php echo $key?>" value="<?php echo $op;?>" <?php if($q->answering !="0"){echo $op==$q->answering?'checked':'';}?>> <?php echo $option->answer?>
                                </div>
                            </div>
                            
                            <?php
                                endif;
                                
                                $op++;
                                endforeach;
                        endif?>
                    </div>
                    <br/>
                    <div class="col-sm-12">
                        <p>Jawaban: <?php echo $jawaban?></p>
                        <p>Pembahasan:</p>
                        <p><?php echo $q->correct_describe?></p>
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
                    <a href="<?php echo site_url("quiz/result")?>"><button type="button" id="btnSave"class="btn btn-primary"> Close </em></button>
                </p>
            </div>
        </div>
    </div>
</form>
<script>
var page=0;
var ls = 0;
var paging = <?php echo $total_page?>;
var p = <?php echo $dataQ->paging?>;
var pl = <?php echo $dataQ->page_length?>;
var t = <?php echo $dataQ->total_question?>;
var qs= <?php echo $dataQ->status?>;
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
    $(".text-numbering").text(start+1 +' to '+ end+' from '+t);
    

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
    $(".text-numbering").text(1 +' to '+ pl+' from '+t);
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
    startQuiz($("#id_quiz").val())
});
</script>

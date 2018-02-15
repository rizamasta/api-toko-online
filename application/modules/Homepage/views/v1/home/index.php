<div class="custom-header"><?php echo !empty($fullname)?'Hi, '.$fullname:'Hi, there..'?></div>
<div style="padding-top:80px"></div>
<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-10">
    <h3><strong>Make Online Test OR answer questions</strong></h3>
    <p>
    Test and measure the ability (I.Q) of your brain and logic by working on this test. Problem shaped images or symbols that sometimes almost look the same and quite confusing in the answer. choose the right answer carefully and thoroughly by completing it in the next form with your Logic. After you have finished answering all your questions, your score or IQ score will appear immediately.
    </p>
    <p class="text-right">
        <a href="">
            <button class="btn btn-primary"> Try Now! </button>
        </a>
        <?php if(empty($userData)):?>
        <a href="<?php echo site_url('user/login')?>">    
            <button class="btn btn-info"> Register </button>
        </a>
        <?php endif?>
    </p>
    </div>
</div>
<!-- <div>
    <div class='custom-header'>Test</div>
</div> -->
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
        <a href="<?php echo site_url('free/generate-quiz')?>">
            <button class="btn btn-primary"> Try Now! </button>
        </a>
        <?php if(empty($fullname)):?>
        <a href="<?php echo site_url('user/login')?>">    
            <button class="btn btn-info"> Register </button>
        </a>
        <?php endif?>
    </p>
    </div>
</div>
<script type="text/javascript">
var x=navigator.plugins.length; // store the total no of plugin stored 
var txt="Total plugin installed: "+x+"<br/>";
txt+="Available plugins are->"+"<br/>";
for(var i=0;i<x;i++)
{
  console.log(navigator.plugins[i].name)
}
</script>
<!-- <div>
    <div class='custom-header'>Test</div>
</div> -->
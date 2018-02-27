<div class="custom-header">TEST DONE </div>
<div style="padding-top:80px"></div>
<div class="row opening">
    <div class="col-md-1"></div>
    <div class="col-md-10">
        <h3><strong>Thank you!</strong></h3>
        <div class="row">
            <div class="col-md-4">
                <h3> Result </h3>
            </div>
            <div class="col-md-4">
                <h3><?php echo $result;?></h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Total Question 
            </div>
            <div class="col-md-4">
                <?php echo $total;?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Correct Answer(s)
            </div>
            <div class="col-md-4">
                <?php echo $correct;?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Wrong Answer(s) 
            </div>
            <div class="col-md-4">
                <?php echo $wrong;?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                Not Answer(s) 
            </div>
            <div class="col-md-4">
                <?php echo $na;?>
            </div>    
        </div>
        <div class="row">
            <div class="col-md-4">
               
            </div>
            <div class="col-md-4">
                <a href="<?php echo site_url('quiz/result')?>">
                    <button class="btn btn-primary">Finish</button>
                </a>
            </div>    
        </div>
    </div>
</div>

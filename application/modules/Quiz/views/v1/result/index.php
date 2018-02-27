<div class="custom-header">TEST RESULT</div>
<div style="padding-top:80px"></div>
<div class="row opening">
    <table id="tblHistory" class="table">
        <thead>
            <tr>
                <th>No</th>
                <th>Score</th>
                <th>Correct</th>
                <th>Wrong Answered</th>
                <th>Not Answered</th>
                <th>Date</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($answers as $key=>$answer):?>
                <tr>
                    <td><?php echo $key=$key+1; ?></td>
                    <td><?php echo $answer->score ?></td>
                    <td><?php echo $answer->correct; ?></td>
                    <td><?php echo $answer->wrong; ?></td>
                    <td><?php echo $answer->notanswer; ?></td>
                    <td><?php echo date('Y-F-d H:i:s',strtotime($answer->created_at)); ?></td>
                    <td>
                        <a href="<?php echo site_url('quiz/detail/'.$answer->qid)?>">
                            <button class="btn btn-sm btn-primary">Detail</button>
                        </a>
                    </td>
                </td>
            <?php endforeach?>
        </tbody>
    </table>
</div>
<script>
$(document).ready(function(){
    $("#tblHistory").dataTable();
})
</script>
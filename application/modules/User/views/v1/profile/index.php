<div class="custom-header">My Profile</div>
<div style="padding-top:80px"></div>
<form id="formProfile">
    <div class="form-group">
        <div class="col-lg-4 text-left">
            <label for="name">Your Name</label>
        </div>
        <div class="col-lg-4 text-center">
            <input id="name" name="name" type="text" placeholder="Your Name" required class="form-control" value="<?php echo !empty($profile->fullname)?$profile->fullname:''?>">
        </div>
    </div>
    <?php if($profile->password=='empty'):?>
        <div class="form-group">
            <div class="col-lg-4 text-left">
                <label for="name">Create New Password</label>
            </div>
            <div class="col-lg-4 text-center">
                <input id="pass" name="password" type="password" placeholder="Create New Password" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-4 text-left">
                <label for="name">Repeat Password</label>
            </div>
            <div class="col-lg-4 text-center">
                <input id="pass2" name="password2" type="password" placeholder="Repeat New Password" class="form-control">
            </div>
        </div>
    <?php else : ?>
        <div class="form-group">
            <div class="col-lg-4 text-left">
                <label for="name">Change Password</label>
            </div>
            <div class="col-lg-4 text-center">
                <input id="pass" name="password" type="password" placeholder="Create New Password" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-4 text-left">
                <label for="name">Repeat Password</label>
            </div>
            <div class="col-lg-4 text-center">
                <input id="pass2" name="password2" type="password" placeholder="Repeat New Password" class="form-control">
            </div>
        </div>
    <?php endif ?>
    <div class="form-group">
        <div class="col-lg-4 text-left">
            <label for="name">Phone Number</label>
        </div>
        <div class="col-lg-4 text-center">
            <input id="phone" name="phone" type="text" value="<?php echo !empty($profile->phone)?$profile->phone:''?>" placeholder="ex: 081234567891" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-4 text-right">
           <button class="btn btn-primary">SAVE</button>
        </div>
    </div>
</form>
<script>
   window.onbeforeunload = function() {
    confirm ("Data will be lost if you leave the page, are you sure?");
    };
</script>
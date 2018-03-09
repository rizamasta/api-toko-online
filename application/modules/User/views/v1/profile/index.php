<div class="custom-header">My Profile</div>
<div style="padding-top:80px"></div>
<form id="formProfile" method="post" action="<?php echo site_url('profile/edit')?>">
    <div class="form-group">
        <div class="col-lg-4 text-left">
            <label for="name">Your Name</label>
        </div>
        <div class="col-lg-4">
            <input id="name" name="name" type="text" placeholder="Your Name" required class="form-control" value="<?php echo !empty($profile->fullname)?$profile->fullname:''?>">
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-4 text-left">
            <label for="name">Username</label>
        </div>
        <div class="col-lg-4">
            <input id="username" name="username" type="text" readonly placeholder="Your Name" required class="form-control" value="<?php echo !empty($profile->username)?$profile->username:''?>">
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-4 text-left">
            <label for="name">Email</label>
        </div>
        <div class="col-lg-4">
            <input id="email" name="email" type="text" readonly placeholder="Your Name" required class="form-control" value="<?php echo !empty($profile->email)?$profile->email:''?>">
        </div>
    </div>
    <?php if($profile->password=='empty'):?>
        <div class="form-group">
            <div class="col-lg-4 text-left">
                <label for="name">Create New Password</label>
            </div>
            <div class="col-lg-4">
                <input id="password" name="password" type="password" placeholder="Create New Password" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-4 text-left">
                <label for="name">Repeat Password</label>
            </div>
            <div class="col-lg-4">
                <input id="password2" name="password2" type="password" placeholder="Repeat New Password" class="form-control">
            </div>
        </div>
    <?php else : ?>
        <div class="form-group">
            <div class="col-lg-4 text-left">
                <label for="name">Change Password</label>
            </div>
            <div class="col-lg-4">
                <input id="password" name="password" type="password" placeholder="Create New Password" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-4 text-left">
                <label for="name">Repeat Password</label>
            </div>
            <div class="col-lg-4">
                <input id="password2" name="password2" type="password" placeholder="Repeat New Password" class="form-control">
            </div>
        </div>
    <?php endif ?>
    <div class="form-group">
        <div class="col-lg-4 text-left">
            <label for="name">Phone Number</label>
        </div>
        <div class="col-lg-4">
            <input id="phone" name="phone" type="text" value="<?php echo !empty($profile->phone)?$profile->phone:''?>" placeholder="ex: 081234567891" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <div class="col-lg-4 text-right">
           <button class="btn btn-primary">SAVE</button>
        </div>
    </div>
</form>
<script type="text/javascript">
$(document).ready(function(){
    var profile = {
        rules :{
            name : {
                required:true,
                minlength:3,
            },
            phone : {
                number : true,
                minlength : 10
            },
            password :{
                minlength : 6
            },
            password2 : {
                minlength : 6,
                equalTo : '#password'
            }
        },
        messages:{
            name:{
                required :'We need your name!',
                minlength : 'Is that your name?'
            },
            phone : {
                number : "Please input phone number not a string!",
                minlength : "That number is invalid"
            },
            password :{
                minlength : 'At least 6 Digits'
            },
            password2 : {
                minlength : 'At least 6 Digits',
                equalTo : 'New Password is not equal'
            }
        }
    };
    var validateForm = $("#formProfile").validate(profile);
});
</script>
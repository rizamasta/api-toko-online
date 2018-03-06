<meta name="google-signin-client_id" content="1015069689813-pceph7685m9o0huvvbtri7hvi0vretdv.apps.googleusercontent.com">
<div class="close-login text-right text-danger">
    <a href="<?php echo site_url('')?>" class="text-danger">X</a>
</div>
<div class="custom-header">Login</div>
<div style="padding-top:80px"></div>
<div class="row view-login">
    <div class="col-lg-6">
       <h4><strong>Take an advantage of our features</strong></h4>
       <p>Test and measure the ability (I.Q) of your brain and logic by working on this test. Problem shaped images or symbols that sometimes almost look the same and quite confusing in the answer. choose the right answer carefully and thoroughly by completing it in the next form with your Logic. After you have finished answering all your questions, your score or IQ score will appear immediately.</p>
    </div>
    <div class="col-lg-6 card-flat">
        <div class="card-body">
            <form class="form-horizontal" action="<?php echo site_url('user/login/auth')?>" method="post">
                <fieldset>
                    <div class="form-group">
                        <label class="col-12 text-center control-label no-padding" for="name">LOGIN TO CONTINUE</label>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-12 text-center">
                            <input id="name" name="email" type="text" placeholder="Your Email" class="form-control">
                            <input id="redir" name="redir" type="hidden" value="<?php echo !empty($_GET['redir'])?$_GET['redir']:''?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-12 text-center">
                            <input id="password" name="password" type="password" placeholder="Your Password" required class="form-control">
                        </div>
                    </div>
                    <div class="msg" >
                        <?php 
                            $textMsg = $this->session->flashdata('alert_msg');
                            if (!empty($textMsg)) :?>
                        <p class='text-danger' style='font-size:12px;padding-left: 15px;'>
                            <?php echo $textMsg;?>
                        </p>
                        <?php endif;?>
                    </div>
                    
                    <!-- Form actions -->
                    <div class="form-group">
                        <div class="col-lg-12">
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </div>
                    </div>
                </fieldset>
            </form>
            <div class="col-md-12 text-center text-muted">
               Or Login with
            </div>
            <div class="col-md-12">
                <div class="row">
                    <div class="col-sm-6" style="padding-right:0px">
                        <button type="submit" onclick="login()" class="btn btn-primary btn-block">
                        <em class="fa fa-facebook" ></em> Facebook</button>
                    </div>
                    <div class="col-sm-6" style="padding-left:0px">
                        <div class="g-signin2" data-onsuccess="onSignIn"></div>                    
                    </div>
                </div>
            </div>
            <div class="col-md-12 text-center text-muted">
              <a href="<?php echo site_url('user/register')?>">Register with email?</a>
            </div>
        </div>
    </div>
</div>
</div>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script>
 var defTimer = 1000;
  function customGoogleButton (){
      setTimeout(function(){
            $(".abcRioButton").css("height","38px");
            $(".abcRioButton").css("width","100%");
            $(".abcRioButton").css("background-color:red");
            $(".abcRioButtonContentWrapper").addClass("btn btn-danger");
            $(".abcRioButtonContentWrapper").html('<em class="fa fa-google" ></em> Google</button>')
        },200);
    };
  setInterval(function(){
    var  test = $(".abcRioButtonContentWrapper").hasClass("btn-danger");
    if(!test){
        customGoogleButton()
    }
    else{
       defTimer = 1000*60;
    }
  },defTimer);
  var count_google=0;
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1553010511434629',
      cookie     : true,
      xfbml      : true,
      version    : 'v2.7'
    });
      
    FB.AppEvents.logPageView();   
      
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
var login = function(){
    FB.login(function(response) {
        if (response.authResponse) {
            FB.api('/me',{fields: 'name, email, picture'} ,function(response) {
                var data = {
                    'sosial_id' :response.id,
                    'name' : response.name,
                    'image' : response.picture.data.url,
                    'email' :response.email
                }
                doLogin(data);
            });
        } else {
            console.log('User cancelled login or did not fully authorize.');
        }
        });
}
function onSignIn(googleUser) {
    var profile = googleUser.getBasicProfile();
    var data = {
                'sosial_id' :profile.getId(),
                'name' : profile.getName(),
                'image' : profile.getImageUrl(),
                'email' :profile.getEmail()
             }
    var userdata = <?php echo $user?>;
    if(userdata==null && count_google == 1){
        doLogin(data);
    }
    count_google +=1;
}

function doLogin(json_data){
    
    $(".msg").html("<p class='text-info' style='font-size:12px;padding-left: 15px;'>If Login success then this page will redirect automaticlly</p>");
    $.ajax({
        url :'<?php echo site_url('user/login/auth-social');?>',
        type :'post',
        content_type: 'application/x-www-form-urlencoded',
        data : json_data,
        success : function(res){
            var r = JSON.parse(res);
            if(r.type_msg=='success'){
                var url = new URL(window.location.href);
                var c = url.searchParams.get("redir");
                if(c){
                    window.location.href = c;
                }
                else{
                     window.location.href ='<?php echo site_url('')?>';
                }
            }
            else if(r.type_msg=='expired'){
                $(".msg").html("<p class='text-danger' style='font-size:12px;padding-left: 15px;'>"+r.alert_msg+"</p>");
            }
        },
        error : function(x,err){
            $(".msg").html("<p class='text-danger' style='font-size:12px;padding-left: 15px;'>Unexpected error. Please try again</p>");
            location.reload();
        }
    })
}

</script>
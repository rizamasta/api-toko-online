<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
    <a class="navbar-brand js-scroll-trigger" href="<?php echo site_url();?>"><img src="<?php echo site_url('assets/img/logo.png')?>" class="brand-logo"></a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa fa-bars"></i>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="<?php echo site_url('home')?>">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="<?php echo site_url('profile/view')?>">Profiles</a>
            </li>
            <!-- <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="#">Companies Insight</a>
            </li> -->
            <?php if(!empty($fullname)):?>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="<?php echo site_url('quiz/result')?>">Result</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="<?php echo site_url('user/login/out')?>">Logout</a>
                </li>
            <?php else :?>
                <li class="nav-item">
                    <a class="nav-link js-scroll-trigger" href="<?php echo site_url('user/login')?>">Login</a>
                </li>
            <?php endif ?>
        </ul>
    </div>
    </div>
</nav>
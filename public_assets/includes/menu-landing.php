<div class="collapse navbar-collapse nav-collapse">
    <div class="menu-container">
        <ul class="nav navbar-nav navbar-nav-right">
            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#body">Jobseekers</a></li>
            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#about">Employers</a></li>
            <?php if(!empty($fullname)):?>
            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="<?php echo site_url('home')?>">My Account</a></li>
            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="<?php echo site_url('user/login/out')?>">Log Out</a></li>
            <?php else: ?>
            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="<?php echo site_url('user/login')?>">Sign Up</a></li>
            <!-- <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#pricing">Log In</a></li> -->
            <!-- <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#work">Work</a></li> -->
            <!-- <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="#service">Service</a></li> -->
            <li class="js_nav-item nav-item"><a class="nav-item-child nav-item-hover" href="<?php echo site_url('user/login')?>">Log In</a></li>
            <?php endif ?>
        </ul>
    </div>
</div>
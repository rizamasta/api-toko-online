<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<title>Bihunku</title>
	<meta name="robots" content="index">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">

	<!-- Favicons -->
	<?php echo load_template_favicon();?>
	<meta name="theme-color" content="#ffffff">

	<!-- Styles -->
	<?php echo load_template_CSS();?>
	
</head>
<body>

<div class="container">
	<div class="panel-wrapper">
		<div class="logo-wrapper">
			<?php echo $logo;?>
		</div>
		
		<div class="errorPage-wrapper">
			
				<div class="errorContent">
					<?php echo $background;?>
					<p><?php echo $infoError["heading"]?></p>
					<span><?php echo $infoError["message"];?></span>
					<a class="btn primary" href="<?php echo site_url();?>">Let's get Back</a>
				</div>
		</div>
		<?php echo load_net_applist();?>
	</div>
</div>


</body>
</html>
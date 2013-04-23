<!DOCTYPE html>
<html <?php language_attributes(); ?>>
	<head>
		<meta charset="<?php bloginfo('charset'); ?>" />
		<title><?php bloginfo('name'); ?></title>
		<link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>" type="text/css" />
	</head>
	<body>
		<aside id="meta">
			<a href="http://dreadworks.de" title="This is a Dreadworks Project">The Dreadworks Project</a>
		</aside>

		<div id="wrapper">
			<header id="heading">
				<h1>
					<a href="<?php get_bloginfo('url')?>" title="Zur&uuml;ck zur Startseite">
						<?php bloginfo('name'); ?>
					</a>
				</h1>
				<section class="decoration">
					<span></span>
					<h2><?php bloginfo('description'); ?></h2>
				</section>
			</header>
			
			<navigation id="catnav">
				<ul>
					<?php wp_list_categories('title_li='); ?>
				</ul>
			</navigation>

				

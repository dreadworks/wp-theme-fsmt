<?php get_header(); ?>
		<div id="content">
			
			<?php
			 while (have_posts()) {
				 the_post();
				 get_template_part('content');
			 }
			?>

		</div>
<?php get_footer(); ?>

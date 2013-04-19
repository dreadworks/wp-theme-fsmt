<article id="post-<?php the_ID(); ?>">
	
	<header>
		<span class="date">
			<?php the_date(); ?>
		</span>
		<?php the_category(); ?>
		<h1>
			<?php the_title(); ?>
		</h1>
	</header>
	<section class="content">
			<?php the_content(); ?>
	</section>
	<footer>
			<?php get_the_author(); ?>
	</footer>
	
</article>
<div></div>

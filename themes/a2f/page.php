<?php get_header(); ?>
<div id="content">
	<?php if (is_page('recent-work')) : ?>
		<?php get_sidebar(); ?>
		
		<div class="main-column">
			<h2 class="page-title"><?php the_title(); ?></h2>
	    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
			<?php the_content(); ?>
	    <?php endwhile; endif; ?>
		</div>
	<?php else : ?>
		
	    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
			<?php the_content(); ?>
	    <?php endwhile; endif; ?>
		
	<?php endif; ?>
</div>
<?php get_footer(); ?>
<?php get_header(); ?>
<div id="content">
	<?php get_sidebar(); ?>
	<div class="main-column">
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
		<?php the_content(); ?>
    <?php endwhile; endif; ?>
	</div>
</div>
<?php get_footer(); ?>
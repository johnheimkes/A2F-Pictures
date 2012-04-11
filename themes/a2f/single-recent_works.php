<?php get_header(); ?>

<div id="content">
	<?php get_sidebar(); ?>
	<div class="main-column">
	<?php if (have_posts()) : while (have_posts()) : the_post();?>
	    <div class="post recent-work">
			<h2 class="post-title" id="post-<?php the_ID(); ?>"><?php the_title();?></h2>
			<div class="entrytext">
				<?php the_content(); ?>
			</div>
		</div>
	<?php endwhile; endif; ?>
	</div>
</div>

<?php get_footer(); ?>
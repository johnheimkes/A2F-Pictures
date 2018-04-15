<?php
/**
 * Template Name: Simple Page
 *
 * The template for displaying just content.
 *
 * @package A2F_Pictures
 */

get_header(); ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main" style="position: relative;">

			<?php
			while ( have_posts() ) : the_post(); ?>

				<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<header class="entry-header">
						<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>
					</header><!-- .entry-header -->
				
					<div class="entry-content">
						<?php
							the_content();
						?>
					</div><!-- .entry-content -->
				</article><!-- #post-## -->


			<?php
			endwhile; // End of the loop.
			?>

		</main><!-- #main -->
	</div><!-- #primary -->

<script type="text/javascript">
jQuery(document).ready(function($) {

	var $all_oembed_videos = $("iframe[src*='vimeo']");
	
	$all_oembed_videos.each(function() {
	
		$(this).removeAttr('height').removeAttr('width').wrap( "<div class='embed-container'></div>" );
 	
 	});

});
</script>
<?php
get_footer();

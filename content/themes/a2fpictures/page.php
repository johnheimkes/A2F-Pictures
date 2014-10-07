<?php
/**
 * A2f Pictures Theme
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @subpackage Index
 * @author John Heimkes IV <john@markupisart.com>
 * @version 1.0
 */

get_header(); ?>

<div class="grid-col-12 page-content">
    
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
    	<?php the_content(); ?>
	<?php endwhile; endif; ?>
    
</div>

<?php get_footer(); ?>
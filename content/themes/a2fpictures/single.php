<?php
/**
 * A2f Pictures Theme
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @subpackage Single
 * @author John Heimkes IV <john@markupisart.com>
 * @version 1.0
 */
?>
<?php get_header(); ?>

<div class="grid-col-12">
    
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <div class="grid-col-12 video">
            <?php the_field('video_link'); ?>
        </div>
    <?php endwhile; endif; ?>
    
</div>

<?php get_footer(); ?>
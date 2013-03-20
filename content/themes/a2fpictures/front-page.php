<?php
/**
 * A2f Pictures Theme Frontpage template
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @subpackage Home
 * @author John Heimkes IV <john@markupisart.com>
 * @version $Id$
 */

$video_post = new WP_Query(array(
    'post_type'         => 'a2f_project',
    'posts_per_page'    => -1,
));

get_header(); ?>

<div class="home-grid">
    <?php if ( $video_post->have_posts() ) : while ( $video_post->have_posts() ) : $video_post->the_post(); ?>
        <div <?php post_class('home-post'); ?>>
            <div class="post-image">
                <?php the_post_thumbnail(); ?>
            </div>
            <div class="post-info">
                <h3 class="post-title"><?php the_title(); ?></h3>
                <div class="post-stakeholders">
                    <span class="post-client"><?php the_field('client_name'); ?></span>
                    <span class="post-director"><?php the_field('director_name'); ?></span>
                </div>
            </div>
        </div>
    <?php endwhile; endif; ?>
</div>

<?php get_footer();
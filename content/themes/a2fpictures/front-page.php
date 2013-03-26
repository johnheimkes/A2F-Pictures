<?php
/**
 * A2f Pictures Theme Frontpage template
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @subpackage Home
 * @author John Heimkes IV <john@markupisart.com>
 * @version 1.0
 */

$video_post = new WP_Query(array(
    'post_type'         => 'a2f_project',
    'posts_per_page'    => -1,
));

get_header(); ?>

<div class="grid-col-12 home-container">
    <?php if ( $video_post->have_posts() ) : while ( $video_post->have_posts() ) : $video_post->the_post(); ?>
        <div <?php post_class('home-post grid-col-6 grid-col'); ?>>
            <a href="<?php the_permalink(); ?>">
                <div class="post-image">
                    <?php the_post_thumbnail('homepage-thumbnail'); ?>
                </div>
                <div class="post-info">
                    <h3 class="post-title"><?php the_title(); ?></h3>
                    <div class="post-stakeholders">
                        <span class="post-client"><?php the_field('client_name'); ?></span>
                        <span class="post-director"><?php the_field('director_name'); ?></span>
                    </div>
                </div>
            </a>
        </div>
    <?php endwhile; endif; ?>
</div>

<?php get_footer();
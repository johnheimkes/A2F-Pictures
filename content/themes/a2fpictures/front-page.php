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

$posts = get_field( 'featured_posts' );

get_header(); ?>

<?php if ( $posts ) : ?>
<div class="grid-col-12 home-container">
    
    <?php foreach ( $posts as $post ) : setup_postdata( $post ); ?>
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
    <?php endforeach; ?>
    
</div>
<?php wp_reset_postdata(); endif; ?>

<?php get_footer();
<?php
/**
 * Template Name: Single Director
 *
 * A2f Pictures Theme
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @subpackage Page
 * @author John Heimkes IV <john@markupisart.com>
 * @version 1.0
 */

$author_name = get_the_author_meta('display_name');

get_header(); ?>

<?php get_sidebar(); ?>

<div class="grid-col grid-col-9">
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <div class="grid-col-12">
            
            <div class="director-bts">
                <img src="<?php the_field( 'content_image' ); ?>" alt="<?php the_title(); ?>" class="block" />
            </div>
            
            <div class="director-info">
                <div class="grid-col-6 grid-col">
                    <div class="director-header">
                        <h2 class="title fleft"><?php the_title(); ?></h2>
                        <a href="mailto:elizabeth@a2fpictures.com?Subject=Reel%20Request:%20<?php the_title(); ?>" class="btn-request-reel fright">Request Reel</a>
                    </div>
                
                    <h3 class="client-name oblique"><?php the_field('job_title'); ?></h3>
                    <?php echo get_the_author_meta('description'); ?>
                </div>
            
        
            <?php if ( get_the_author_meta('display_name') == 'Mark Mazur') { ?>
                <div class="related-module grid-col-6 grid-col fright">
                    <div class="module-header">
                        <h3 class="title fleft">Projects Directed By <?php the_author(); ?></h3>
                    </div>
                
                    <?php
                        $posts = get_field('more_projects_by_mark', 'option');
            
                        if ( $posts ) :
                    ?>
                    <ul class="related-posts">
                        <?php foreach ( $posts as $post ) : setup_postdata( $post ); ?>
                            <li class="grid-col-4 grid-col related-post">
                                <a href="<?php the_permalink(); ?>">
                                    <div class="post-image">
                                        <?php the_post_thumbnail('more-by-thumbnail'); ?>
                                    </div>
                                    <div class="post-info">
                                        <h4 class="related-post-title"><?php the_title(); ?></h4>
                                    </div>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                    <?php wp_reset_postdata(); endif; ?>
                </div>
            <?php } ?>
        
            <?php if ( get_the_author_meta('display_name') == 'James Rautmann') { ?>
                <div class="related-module grid-col-6 grid-col fright">
                    <div class="module-header">
                        <h3 class="title fleft">Projects Directed By <?php the_author(); ?></h3>
                    </div>
                
                    <?php
                        $posts = get_field('more_projects_by_james', 'option');
            
                        if ( $posts ) :
                    ?>
                    <ul class="related-posts">
                        <?php foreach ( $posts as $post ) : setup_postdata( $post ); ?>
                            <li class="grid-col-4 grid-col related-post">
                                <a href="<?php the_permalink(); ?>">
                                    <div class="post-image">
                                        <?php the_post_thumbnail('more-by-thumbnail'); ?>
                                    </div>
                                    <div class="post-info">
                                        <h4 class="related-post-title"><?php the_title(); ?></h4>
                                    </div>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                    <?php wp_reset_postdata(); endif; ?>
                </div>
            <?php } ?>
        
            <?php if ( get_the_author_meta('display_name') == 'Trent Hilborn') { ?>
                <div class="related-module grid-col-6 grid-col">
                    <div class="module-header">
                        <h3 class="title fleft">Projects Directed By <?php the_author(); ?></h3>
                    </div>
                
                    <?php
                        $posts = get_field('more_projects_by_trent', 'option');
            
                        if ( $posts ) :
                    ?>
                    <ul class="related-posts">
                        <?php foreach ( $posts as $post ) : setup_postdata( $post ); ?>
                            <li class="grid-col-4 grid-col related-post">
                                <a href="<?php the_permalink(); ?>">
                                    <div class="post-image">
                                        <?php the_post_thumbnail('more-by-thumbnail'); ?>
                                    </div>
                                    <div class="post-info">
                                        <h4 class="related-post-title"><?php the_title(); ?></h4>
                                    </div>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                    <?php wp_reset_postdata(); endif; ?>
                </div>
            <?php } ?>
            
            <?php if ( get_the_author_meta('display_name') == 'Mike Nelson') { ?>
                <div class="related-module grid-col-8 grid-col">
                    <div class="module-header">
                        <h3 class="title fleft">Projects Directed By <?php the_author(); ?></h3>
                    </div>
                
                    <?php
                        $posts = get_field('more_projects_by_trent', 'option');
            
                        if ( $posts ) :
                    ?>
                    <ul class="related-posts">
                        <?php foreach ( $posts as $post ) : setup_postdata( $post ); ?>
                            <li class="grid-col-4 grid-col related-post">
                                <a href="<?php the_permalink(); ?>">
                                    <div class="post-image">
                                        <?php the_post_thumbnail('more-by-thumbnail'); ?>
                                    </div>
                                    <div class="post-info">
                                        <h4 class="related-post-title"><?php the_title(); ?> &rarr;</h4>
                                    </div>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                    <?php wp_reset_postdata(); endif; ?>
                </div>
            <?php } ?>
            
            </div>
            
        </div>
    <?php endwhile; endif; ?>
</div>

<?php get_footer(); ?>
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

<a name="scroll"></a>

<div class="grid-col grid-col-9">
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <div class="grid-col-12">
            <div class="grid-col-6 grid-col">
                <div class="director-header">
                    <h2 class="title fleft"><?php the_title(); ?></h2>
                </div>
                
                <h3 class="client-name oblique"><?php the_field('job_title'); ?></h3>
                <?php echo get_the_author_meta('description'); ?>
            </div>
            
            <div class="grid-col-6 grid-col">
                <img src="<?php the_field( 'content_image' ); ?>" alt="<?php the_title(); ?>" class="block" />
            </div>
        
            <?php if ( get_the_author_meta('display_name') == 'Mark Mazur') { ?>
                <div class="related-module grid-col-8 grid-col fright">
                    <div class="module-header">
                        <h3 class="title fleft">Projects Directed By <?php the_author(); ?></h3>
                        <a href="mailto:elizabeth@a2fpictures.com?Subject=Reel%20Request:%20<?php the_title(); ?>" class="btn-request-reel fright">Request Reel</a>
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
                                        <h4 class="related-post-title"><?php the_title(); ?> &rarr;</h4>
                                    </div>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                    <?php wp_reset_postdata(); endif; ?>
                </div>
            <?php } ?>
        
            <?php if ( get_the_author_meta('display_name') == 'James Rautmann') { ?>
                <div class="related-module grid-col-8 grid-col fright">
                    <div class="module-header">
                        <h3 class="title fleft">Projects Directed By <?php the_author(); ?></h3>
                        <a href="mailto:elizabeth@a2fpictures.com?Subject=Reel%20Request:%20<?php the_title(); ?>" class="btn-request-reel fright">Request Reel</a>
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
                                        <h4 class="related-post-title"><?php the_title(); ?> &rarr;</h4>
                                    </div>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                    <?php wp_reset_postdata(); endif; ?>
                </div>
            <?php } ?>
        
            <?php if ( get_the_author_meta('display_name') == 'Trent Hilborn') { ?>
                <div class="related-module grid-col-8 grid-col fright">
                    <div class="module-header">
                        <h3 class="title fleft">Projects Directed By <?php the_author(); ?></h3>
                        <a href="mailto:elizabeth@a2fpictures.com?Subject=Reel%20Request:%20<?php the_title(); ?>" class="btn-request-reel fright">Request Reel</a>
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
            
            <?php if ( get_the_author_meta('display_name') == 'Mike Nelson') { ?>
                <div class="related-module grid-col-8 grid-col">
                    <div class="module-header">
                        <h3 class="title fleft">Projects Directed By <?php the_author(); ?></h3>
                        <a href="mailto:elizabeth@a2fpictures.com?Subject=Reel%20Request:%20<?php the_title(); ?>" class="btn-request-reel fright">Request Reel</a>
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
    <?php endwhile; endif; ?>
</div>

<?php get_footer(); ?>
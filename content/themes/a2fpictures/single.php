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

$author_name = get_the_author_meta('display_name');

?>
<?php get_header(); ?>

<div class="grid-col-12">
    <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <div class="grid-col-12 video">
            <?php the_field('video_link'); ?>
        </div>
        
        <div class="grid-col-12">
            <div class="grid-col-6 grid-col">
                <h2 class="title"><?php the_title(); ?></h2>
                <h3 class="client-name oblique"><?php the_field('client_name'); ?></h3>
                <?php the_field('project_description'); ?>
            </div>
            
            <?php if ( get_the_author_meta('display_name') == 'Mark') { ?>
                <div class="grid-col-6 grid-col">
                    <h3 class="title">More Projects Directed By <?php the_author(); ?></h3>
                    
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
            
            <?php if ( get_the_author_meta('display_name') == 'James') { ?>
                <div class="grid-col-6 grid-col">
                    <h3 class="title">More Projects Directed By <?php the_author(); ?></h3>
                    
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
            
            <?php if ( get_the_author_meta('display_name') == 'Trent') { ?>
                <div class="grid-col-6 grid-col">
                    <h3 class="title">More Projects Directed By <?php the_author(); ?></h3>
                    
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
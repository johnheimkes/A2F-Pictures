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
        <div class="grid-col-12 page-head">
            <?php the_field('video_link'); ?>
        </div>
        
        <div class="grid-col-12">
            <div class="grid-col-6 grid-col">
                <h2 class="title"><?php the_title(); ?></h2>
                
                <?php if ( get_field( 'director_name' ) ) : ?>
                    <h3 class="client-name oblique">Directed By: <?php the_field( 'director_name' ); ?></h3>
                <?php endif; ?>
                
                <?php if ( get_field( 'client_name' ) ) : ?>
                    <h3 class="client-name oblique">Client: <?php the_field( 'client_name' ); ?></h3>
                <?php endif; ?>
                
                <?php if ( get_field( 'misc_fields' ) ) : while ( has_sub_field( 'misc_fields' ) ) : ?>
                    <h3 class="client-name oblique"><?php the_sub_field( 'misc_field' ); ?></h3>
                <?php endwhile; endif; ?>
                
                <?php the_field('project_description'); ?>
            </div>
            
            <?php if ( get_the_author_meta('display_name') == 'Mark Mazur') { ?>
                <div class="grid-col-6 grid-col">
                    <h3 class="title">Projects Directed By <?php the_author(); ?></h3>
                    
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
                <div class="grid-col-6 grid-col">
                    <h3 class="title">Projects Directed By <?php the_author(); ?></h3>
                    
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
                <div class="grid-col-6 grid-col">
                    <h3 class="title">Projects Directed By <?php the_author(); ?></h3>
                    
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
            
            <?php if ( get_the_author_meta('display_name') == 'A2F Pictures') { ?>
                <div class="grid-col-6 grid-col">
                    <h3 class="title">Projects Directed By <?php the_author(); ?></h3>
                    
                    <?php
                        $posts = get_field('more_projects_by_a2f', 'option');
                
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
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
get_header(); ?>

<div class="home-grid">
    <?php if ( have_posts() : ) while ( have_posts() : ) the_post(); ?>
        <div <?php post_class('home-post'); ?>>
            <div class="post-image">
                <?php the_post_thumbnail(); ?>
            </div>
            <div class="post-info">
                <h3 class="post-title"><?php the_title(); ?></h3>
                <div class="post-stakeholders">
                    <span class="post-client">Client Name</span>
                    <span class="post-director">Director Name</span>
                </div>
            </div>
        </div>
    <?php endwhile; endif; ?>
</div>

<?php get_footer();
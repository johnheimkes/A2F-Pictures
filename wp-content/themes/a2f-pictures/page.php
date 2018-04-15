<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package A2F_Pictures
 */

get_header(); ?>
    <div id="primary" class="content-area">
        <section class="content">
            <div class="wrap">
                <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
                    <?php the_content(); ?>
                <?php endwhile; endif; ?>
            </div>
        </section>

        <section class="about-a2f">
            <div class="particle-wrap3"></div>

            <?php the_field('about_us', 'option'); ?>

        </section>




    </div><!-- #primary -->

<?php
get_footer();


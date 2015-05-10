<?php
/**
 * Template Name: Contact
 *
 * A2f Pictures Theme
 *
 * @category A2f_Pictures_Theme
 * @package A2f_Pictures_Theme
 * @subpackage Page
 * @author John Heimkes IV <john@markupisart.com>
 * @version 1.0
 */

get_header(); ?>

<h2 class="title hidden-visually">Contact Us</h2>

<div class="grid-col-12 wysiwyg">
    <?php
    if ( have_posts() ) : while ( have_posts() ) : the_post();
        the_content();
    endwhile; endif;
    ?>
</div>

<div class="grid-col-12 map">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <div id="map-canvas"></div>
</div>

<div class="grid-col-12 office-contact wysiwyg">
    
    <?php if ( get_field( 'left_column' ) ) : ?>
        <div class="grid-col-4 grid-col">
            <?php while ( has_sub_field( 'left_column' ) ) : ?>
                <?php the_sub_field( 'content' ); ?>
                <p>
                    <a href="mailto:<?php the_sub_field( 'email_address' ); ?>"><?php the_sub_field( 'email_address' ); ?></a>
                </p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
    
    <?php if ( get_field( 'middle_column' ) ) : ?>
        <div class="grid-col-4 grid-col">
            <?php while ( has_sub_field( 'middle_column' ) ) : ?>
                <?php the_sub_field( 'content' ); ?>
                <p>
                    <a href="mailto:<?php the_sub_field( 'email_address' ); ?>"><?php the_sub_field( 'email_address' ); ?></a>
                </p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
    
    <?php if ( get_field( 'right_column' ) ) : ?>
        <div class="grid-col-4 grid-col">
            <?php while ( has_sub_field( 'right_column' ) ) : ?>
                <?php the_sub_field( 'content' ); ?>
                <p>
                    <a href="mailto:<?php the_sub_field( 'email_address' ); ?>"><?php the_sub_field( 'email_address' ); ?></a>
                </p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>

<?php get_footer(); ?>

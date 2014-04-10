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

<div class="grid-col-12 office-contact">
    
    <?php if ( get_field( 'midwest_office' ) ) : ?>
        <div class="grid-col-4 grid-col">
            <?php while ( has_sub_field( 'midwest_office' ) ) : ?>
                <h3 class="heading-3">Executive Producer</h3>
                <p class="office-phone italic"><?php the_sub_field( 'midwest_office_phone' ); ?></p>
                <address>
                    <?php the_sub_field( 'midwest_office_address' ); ?>
                </address>
                <p>
                    <a href="mailto:<?php the_sub_field( 'midwest_office_email' ); ?>"><?php the_sub_field( 'midwest_office_email' ); ?></a>
                </p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
    
    <?php if ( get_field( 'east_coast_office' ) ) : ?>
        <div class="grid-col-4 grid-col">
            <?php while ( has_sub_field( 'east_coast_office' ) ) : ?>
                <h3 class="heading-3">General Inquiries</h3>
                <p class="office-phone italic"><?php the_sub_field( 'east_coast_office_phone' ); ?></p>
                <p>
                    <a href="mailto:<?php the_sub_field( 'east_coast_office_email' ); ?>"><?php the_sub_field( 'east_coast_office_email' ); ?></a>
                </p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>

<?php get_footer(); ?>

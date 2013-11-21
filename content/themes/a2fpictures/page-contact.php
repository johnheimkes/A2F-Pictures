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

<h2 class="title">Contact Us</h2>

<div class="grid-col-12">
    <?php if ( get_field( 'contact_page_content' ) ) : ?>
        <div class="grid-col-6 grid-col">
            <?php while ( has_sub_field( 'contact_page_content' ) ) : ?>
                <p><?php the_sub_field( 'left_paragraph' ); ?></p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
    
    <?php if ( get_field( 'contact_page_content' ) ) : ?>
        <div class="grid-col-6 grid-col">
            <?php while ( has_sub_field( 'contact_page_content' ) ) : ?>
                <p><?php the_sub_field( 'right_paragraph' ); ?></p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
</div>

<div class="grid-col-12 map">
    <iframe width="930" height="375" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?ie=UTF8&amp;cid=176982257702447068&amp;q=A2f+Pictures+LLC&amp;gl=US&amp;hl=en&amp;t=m&amp;ll=44.963523,-93.11147&amp;spn=0.005693,0.019934&amp;z=16&amp;iwloc=A&amp;output=embed"></iframe>
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

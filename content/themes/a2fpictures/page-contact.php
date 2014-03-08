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
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2821.031712573741!2d-93.25006799999998!3d45.00397790000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x52b32d913f19a31b%3A0xfb3f6831d03df28c!2s1500+Jackson+St+NE+%23294!5e0!3m2!1sen!2sus!4v1394311671219" width="930" height="375" frameborder="0" style="border:0"></iframe>
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

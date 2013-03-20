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

<h2 class="page-title">Contact Us</h2>

<div class="col-12of12">
    <?php if ( get_field( 'contact_page_content' ) ) : ?>
        <div class="col-6of12">
            <?php while ( has_sub_field( 'contact_page_content' ) ) : ?>
                <p><?php the_sub_field( 'left_paragraph' ); ?></p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
    
    <?php if ( get_field( 'contact_page_content' ) ) : ?>
        <div class="col-6of12">
            <?php while ( has_sub_field( 'contact_page_content' ) ) : ?>
                <p><?php the_sub_field( 'right_paragraph' ); ?></p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
</div>

<div class="col-12of12 map">
    <iframe width="930" height="375" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=A2f+Pictures+LLC,+Galtier+Street,+Saint+Paul,+MN&amp;aq=0&amp;oq=A2F+pictures&amp;sll=44.96123,-93.111427&amp;sspn=0.008776,0.009592&amp;t=m&amp;g=653+Galtier+Street,+Ste.+204,+Saint+Paul,+MN+55103&amp;ie=UTF8&amp;hq=A2f+Pictures+LLC,&amp;hnear=Galtier+St,+St+Paul,+Ramsey,+Minnesota&amp;cid=176982257702447068&amp;ll=44.96164,-93.111191&amp;spn=0.022775,0.079737&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=A2f+Pictures+LLC,+Galtier+Street,+Saint+Paul,+MN&amp;aq=0&amp;oq=A2F+pictures&amp;sll=44.96123,-93.111427&amp;sspn=0.008776,0.009592&amp;t=m&amp;g=653+Galtier+Street,+Ste.+204,+Saint+Paul,+MN+55103&amp;ie=UTF8&amp;hq=A2f+Pictures+LLC,&amp;hnear=Galtier+St,+St+Paul,+Ramsey,+Minnesota&amp;cid=176982257702447068&amp;ll=44.96164,-93.111191&amp;spn=0.022775,0.079737&amp;z=14&amp;iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small>
</div>

<div class="col-12of12 office-contact">
    
    <?php if ( get_field( 'midwest_office' ) ) : ?>
        <div class="col-3of12">
            <?php while ( has_sub_field( 'midwest_office' ) ) : ?>
                <h3>Midwest Office</h3>
                <p class="office-phone"><?php the_sub_field( 'midwest_office_phone' ); ?></p>
                <address>
                    <?php the_sub_field( 'midwest_office_address' ); ?>
                </address>
                <p><?php the_sub_field( 'midwest_office_email' ); ?></p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
    
    <?php if ( get_field( 'east_coast_office' ) ) : ?>
        <div class="col-3of12">
            <?php while ( has_sub_field( 'east_coast_office' ) ) : ?>
                <h3>Midwest Office</h3>
                <p class="office-phone"><?php the_sub_field( 'east_coast_office_phone' ); ?></p>
                <p><?php the_sub_field( 'east_coast_office_email' ); ?></p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
    
    <?php if ( get_field( 'west_coast_office' ) ) : ?>
        <div class="col-3of12">
            <?php while ( has_sub_field( 'west_coast_office' ) ) : ?>
                <h3>Midwest Office</h3>
                <p class="office-phone"><?php the_sub_field( 'west_coast_office_phone' ); ?></p>
                <p><?php the_sub_field( 'west_coast_office_email' ); ?></p>
            <?php endwhile; ?>
        </div>
    <?php endif; ?>
</div>

<?php get_footer(); ?>
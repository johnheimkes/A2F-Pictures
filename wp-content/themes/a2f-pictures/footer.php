<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package A2F_Pictures
 */

?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="wrap clearfix">
			<div class="footer-col first">
				<img src="<?php bloginfo( 'template_url' );?>/images/a2f-footer-logo.svg">
			</div>
			<div class="footer-col">

				<?php the_field('address_&_contact_info', 'option'); ?>

			</div>
			<div class="footer-col">

				<?php the_field('main_contact_info', 'option'); ?>


			</div>
		</div>
	</footer>
	<div class="copyright">
		<div class="wrap clearfix">
			<img src="<?php bloginfo( 'template_url' );?>/images/footer-particles.svg">
			<p>Copyright © <?php echo date( 'Y' ); ?> – A2F Pictures LLC</p>

			<?php if ( have_rows( 'social_media_links' , 'option' ) ): ?>
			<ul class="social-footer">
				<?php while ( have_rows( 'social_media_links' , 'option' ) ) : the_row();?>

					<li><a href="<?php the_sub_field( 'link' );?>" target="_blank"><i class="fa <?php the_sub_field( 'icon_code' );?>"></i></a></li>

				<?php endwhile;?>
			</ul>
			<?php else :?>
			<?php endif; ?>


		</div>

	</div>
</div><!-- #page -->

<?php wp_footer(); ?>
<?php
edit_post_link(
	sprintf(
	/* translators: %s: Name of current post */
		esc_html__( 'Edit %s', 'a2f-pictures' ),
		the_title( '<span class="screen-reader-text">"', '"</span>', false )
	),
	'<span class="edit-link">',
	'</span>'
);
?>
</body>
</html>

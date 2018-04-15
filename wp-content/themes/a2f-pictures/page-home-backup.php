<?php
/**
 * Template Name: Home - Backup
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
		<section class="home-slider">
			<div class="wrap">
				<div class="main-movie-wrapper">
					<div class="movie-single" style="background-image: url(/wp-content/themes/a2f-pictures/images/slider-01.jpg);">

						<div class="movie-single-wrap movie-01">

						</div>
						<a href="#" class="play-button"><i class="fa fa-play"></i></a>
						<div class="movie-single-info">
							<h4>Mortal Kombat X</h4>
							<p>Netherrealm Studios</p>
						</div>

						<script>

							jQuery( 'a.play-button' ).click(function(e) {
								e.preventDefault();
								jQuery(this).addClass('hide').siblings('.movie-single-info').addClass('hide');
								jQuery(this).siblings('.movie-01').html('<iframe src="https://player.vimeo.com/video/119891412?autoplay=true"  frameborder="0"></iframe>' );

							});

						</script>
					</div>

					<div class="movie-single" style="background-image: url(/wp-content/themes/a2f-pictures/images/slider-02.jpg);">

						<div class="movie-single-wrap movie-02">

						</div>
						<a href="#" class="play-button"><i class="fa fa-play"></i></a>
						<div class="movie-single-info">
							<h4>You Want the Night</h4>
							<p>Sleep Thieves</p>
						</div>

						<script>

							jQuery( 'a.play-button' ).click(function(e) {
								e.preventDefault();
								jQuery(this).addClass('hide').siblings('.movie-single-info').addClass('hide');
								jQuery(this).siblings('.movie-02').html('<iframe src="https://player.vimeo.com/video/117937270?autoplay=true"  frameborder="0"></iframe>' );

							});

						</script>
					</div>

					
					<div class="movie-single" style="background: #111;">

					</div>
					<div class="movie-single">

					</div>
					<div class="movie-single" style="background: #231513;">

					</div>
					<div class="movie-single">

					</div>
					<div class="movie-single" style="background: #232534;">

					</div>
					<div class="movie-single">

					</div>
					<div class="movie-single" style="background: #153412;">

					</div>
					<div class="movie-single">

					</div>

				</div>
				<script>


					jQuery(document).ready( function() {
						jQuery( '.controller-single' ).click(function(e) {
							e.preventDefault();
							jQuery('.movie-single-wrap').html('');
							jQuery('a.play-button').removeClass('hide');
							jQuery('.movie-single-info').removeClass('hide');

						});
					});

				</script>

				<div class="movie-controller">
					<div class="controller-single" style="background-image: url(/wp-content/themes/a2f-pictures/images/slider-01.jpg);">

					</div>
					<div class="controller-single" style="background-image: url(/wp-content/themes/a2f-pictures/images/slider-02.jpg);">

					</div>
					<div class="controller-single" style="background: #111;">

					</div>
					<div class="controller-single">

					</div>
					<div class="controller-single" style="background: #231513;">

					</div>
					<div class="controller-single">

					</div>
					<div class="controller-single" style="background: #232534;">

					</div>
					<div class="controller-single">

					</div>
					<div class="controller-single"  style="background: #153412;">

					</div>
					<div class="controller-single">

					</div>

				</div>


			</div>
		</section>

		<section class="about-a2f">
			<div class="particle-wrap3"></div>
			<p>A2F Pictures is an Emmy¨ award-winning production company founded in 2010 by Trent Hilborn and Mark Mazur.<br>
			<br>
			No matter the size, scope or limitations, the focus is finding the greatest realization of the story behind every project.</p>
		</section>

	</div><!-- #primary -->

<?php
get_footer();


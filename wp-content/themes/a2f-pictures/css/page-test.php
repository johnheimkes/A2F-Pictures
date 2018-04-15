<?php
/**
 * Template Name: Test
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

					<?php
					$args = array(
						'post_type'			=> 'project', // CPT Name
						'post_status'		=> 'publish',
						'posts_per_page' 	=> 16,
						'order' 			=> 'DESC',
						'orderby' 			=> 'date'
					);
					?>

					<?php
					$the_query = new WP_Query( $args ); ?>

					<?php if ( $the_query->have_posts() ) : ?>

						<?php $counter = 0; ?>
						<?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

							<?php
							$project_id = get_post_thumbnail_id();
							$image_url_array = wp_get_attachment_image_src($project_id, 'movie-full', true);
							$slider_url = $image_url_array[0];

							$vimeo_url = get_field( 'vimeo_id' );
							$video_id = 'https://player.vimeo.com/video/'.$vimeo_url.'?autoplay=true';
							//echo $video_id;

							?>
							<div class="movie-single">
								<div class='embed-container'>
									<iframe src='http://player.vimeo.com/video/66140585' frameborder='0' webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
								</div>
									<!-- iframe class="vimebox" src="" height=1080 width=1920 frameborder="0"> </iframe -->

								<img class="slider-bg" src="<?php echo esc_url( $slider_url );?>">
								<div class="movie-single-info">

									<h4><?php the_title();?></h4>
									<p><?php the_field( 'client' );?></p>
									<span class="movie-play-button vimeo"><i class="fa fa-play"></i></span>
								</div>


							</div>



						<?php endwhile; ?>
						<?php wp_reset_postdata(); ?>
					<?php else : ?>
						<p>it's broken man..</p>
					<?php endif; ?>


				</div>

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
			<p>A2F Pictures is an Emmy® award-winning production company founded in 2010 by Trent Hilborn and Mark Mazur.<br>
				<br>
				No matter the size, scope or limitations, the focus is finding the greatest realization of the story behind every project.</p>
		</section>




	</div><!-- #primary -->

<?php
get_footer();


<?php
/**
 * Template Name: Category Page
 *
 * The template for displaying the "category" pages
 *
 * @package A2F_Pictures
 */

get_header(); ?>
    <section class="home-slider">
        <div class="wrap">
            <h3 class="cat"><?php the_title(); ?></h3>
            
            <div class="main-movie-wrapper">

				<?php
				$category_projects = get_field( 'cat_projects' );
				if ( $category_projects ) :

					?>

					<?php foreach ( $category_projects as $category_project ) : ?>


					<?php
					$slider_id = $category_project->ID; // Sets the Id.
					$vimeo_url = get_field( 'vimeo_id', $slider_id ); // Gets Vimeo ID.
					$video_id  = 'https://player.vimeo.com/video/' . $vimeo_url . '?autoplay=true'; // Gets Vimeo URL.
					$project_id = get_post_thumbnail_id( $slider_id );
					$image_url_array = wp_get_attachment_image_src( $project_id, 'movie-full', true );
					$slider_url = $image_url_array[0]; //Gets Full URL
					?>
                    <div class="movie-single">


                        <div class='embed-container'>
                            <iframe class="vimebox-<?php echo $counter; ?>" src="" frameborder="0" webkitAllowFullScreen
                                    mozallowfullscreen allowFullScreen></iframe>


                            <img class="slider-bg" src="<?php echo esc_url( $slider_url ); ?>">
                            <div class="movie-single-info">

                                <h4><?php //echo get_the_title( $slider_id ); ?>

                                    <?php the_field( 'client', $slider_id ); ?>
                                </h4>


								<?php if ( get_field( 'director', $slider_id ) ) :
									$directorarray = get_field( 'director', $slider_id );
									$directorname = $directorarray[0];
									?>

                                    <p><?php echo $directorname->post_title; ?></p>

								<?php endif; ?>

                                <span class="movie-play-button vimeo"><i class="fa fa-play"></i></span>
                            </div>

                        </div>

                        <script>
                            jQuery('.movie-play-button').click(function (e) {
                                e.preventDefault();
                                jQuery(this).parent().hide();
                                jQuery(this).parent().siblings('img').hide();
                                jQuery('.main-movie-wrapper').slick('setOption', 'autoplay', false, false);

                                var iframeplayer = jQuery(this).parent().siblings('iframe');
                                iframeplayer.attr('src', '<?php echo $video_id; ?> ');

                                jQuery(vimeoboxcounter).attr('src', '<?php echo $video_id; ?> ');
                                console.log(iframeplayer);
                            });
                        </script>

                    </div>


				<?php endforeach; ?>
				<?php endif; ?>
            </div>

            <div class="movie-controller">

				<?php
				if ( $category_projects ):

					?>

					<?php foreach ( $category_projects as $category_project ): ?>


					<?php
					$slider_id = $category_project->ID; // Sets the Id.

					$project_id_thumb = get_post_thumbnail_id( $slider_id );
					$thumb_url_array  = wp_get_attachment_image_src( $project_id_thumb, 'movie-thumb', true );
					$thumb_url        = $thumb_url_array[0];
					?>

                    <div class="controller-single" style="background-image: url(<?php echo esc_url( $thumb_url ); ?>);">

                    </div>
				<?php endforeach; ?>
				<?php endif; ?>

            </div>


        </div>
    </section>

<?php
get_footer();

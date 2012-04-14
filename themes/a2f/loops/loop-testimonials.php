<?php $args = array( 'post_type' => 'testimonials', 'posts_per_page' => -1, 'orderby' => 'title', 'order' => 'ASC') ?>
<?php $my_testimonials_query = new WP_Query( $args ); 

while ( $my_testimonials_query->have_posts() ) : $my_testimonials_query->the_post(); ?>

    <div class="post recent-work testimonial">
		<!-- <h2 class="post-title" id="post-<?php the_ID(); ?>"><a href="<?php the_permalink(); ?>"><?php the_title();?></a></h2> -->
		<div class="entrytext">
			<?php the_content(); ?>
		</div>
	</div>

<?php endwhile; ?>

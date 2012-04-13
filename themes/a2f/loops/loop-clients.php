<ul class="client-list">
<?php $args = array( 'post_type' => 'clients', 'posts_per_page' => -1, 'orderby' => 'title', 'order' => 'ASC') ?>
<?php $my_clients_query = new WP_Query( $args );

while ( $my_clients_query->have_posts() ) : $my_clients_query->the_post(); ?>

	<li class="post client item">
		<a id="post-<?php the_ID(); ?>" href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
	</li>


<?php endwhile; ?>
</ul>
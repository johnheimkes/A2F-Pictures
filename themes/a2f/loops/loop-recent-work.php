<?php $args = array( 'post_type' => 'recent_works', 'posts_per_page' => -1, 'orderby' => 'title', 'order' => 'ASC') ?>
<?php $my_recent_works_query = new WP_Query( $args ); 

while ( $my_recent_works_query->have_posts() ) : $my_recent_works_query->the_post(); ?>

<div id="content">
    <div class="post recent-work">
         <h2 id="post-<?php the_ID(); ?>"><a href="<?php the_permalink(); ?>"><?php the_title();?></a></h2>
        <div class="entrytext">
          <?php the_content(); ?>
          <a href="<?php the_permalink(); ?>">Read more</a>
        </div>
    </div>
</div>

<?php endwhile; ?>

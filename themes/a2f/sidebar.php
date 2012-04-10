<div id="sidebar">
	<?php if (is_page('portfolio') || is_post_type_archive('recent-works')) :
		wp_nav_menu( array('menu' => 'Portfolio-Nav' ));
	 endif; ?>
</div>
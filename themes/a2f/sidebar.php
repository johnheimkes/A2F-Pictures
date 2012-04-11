<div id="sidebar">
	<?php if (is_page(array('portfolio', 'recent-work')) || $post->post_parent=="recent-work") :
		wp_nav_menu(array('menu' => 'Portfolio-Nav' ));
	 endif; ?>
</div>

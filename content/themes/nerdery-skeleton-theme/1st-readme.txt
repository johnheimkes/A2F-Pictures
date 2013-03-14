# Read Me 1st!
----
## Getting Started
   1. Download the theme unit test xml file from the WordPress Codex: http://codex.wordpress.org/Theme_Unit_Test
   2. Import using the WordPress Importer plugin, download latest version [here](http://wordpress.org/extend/plugins/wordpress-importer/).
   3. Rename the nerdery-skeleton-theme folder (something that fits the project)
   4. Update style.css with information relevent to the project.
   5. Update screenshot.png using project PSDs (image should be 300x225).

## Assets Folder
Delete the Skeleton Theme's assets folder and replace with your project's front-end assets folder. The following files are enqueue'd by default:

CSS Files:

   * screen.css
   * screen_huge.css
   * screen_large.css
   * screen_medium.css
   * screen_small.css
   * wysiwyg.css
   * ie9.css
   * ie8.css

JS Files:

   * global.js (jQuery 1.8.3 is already enqueue'd, no need to include it)

Make sure to enqueue (or remove unneeded) any extra CSS or JS files, located in functions.php, in methods:

    NERD_Theme::enqueue_scripts()
    NERD_Theme::enqueue_styles()

## Modules Folder (/modules)
Custom template tags, functions and classes should go in this folder. By default, this folder contains: register-post-types.php, register-taxonomies.php, register-menus.php, register-sidebars.php. Also contains gallery.php, see below for more info.

### Gallery Functionality (gallery.php)
This file contains functions which override the appearance of the default WordPress gallery. One function removes the default embedded stylesheet, another moves the gallery markup to a separate template (views/gallery.php). If modifying gallery markup, please modify the views/gallery.php file.

## Widgets Folder (/widgets)
This folder stores all theme-related widgets. Each widget can be registered in NERD_Theme::widget_init() method (functions.php). For building widgets, please see the [Widgets API article](http://codex.wordpress.org/Widgets_API)

## Resources
 * [Template hierarchy] (http://goo.gl/dX67x)

<?php
return array(
    'modules' => array(
	    'Home',
        'Application',
        'StickyNotes',
		'Admin',
		'EdpModuleLayouts',
		
    ),
    'module_listener_options' => array(
        'config_glob_paths'    => array(
            'config/autoload/{,*.}{global,local}.php',
        ),
        'module_paths' => array(
            './module',
            './vendor',
        ),
    ),
);

# Fixes bad `phpp` extensions to `php` in the WordPress file `wp-settings.php`.
# 0-strace_is_your_friend.pp
file { '/var/www/html/index.php':
  ensure  => file,
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0644',
  content => "<?php\n// Default index page\n?>",
}

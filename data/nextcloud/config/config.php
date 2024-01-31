<?php
$CONFIG = array (
  'htaccess.RewriteBase' => '/',
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/var/www/html/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/var/www/html/custom_apps',
      'url' => '/custom_apps',
      'writable' => true,
    ),
  ),
  'memcache.distributed' => '\\OC\\Memcache\\Redis',
  'memcache.locking' => '\\OC\\Memcache\\Redis',
  'redis' => 
  array (
    'host' => 'redis',
    'password' => '',
    'port' => 6379,
  ),
  'overwriteprotocol' => 'https',
  'overwrite.cli.url' => 'https://cloud.marcpartensky.com',
  'upgrade.disable-web' => true,
  'passwordsalt' => 'fJGt1haZpcBRLPrSSbrrc9r9bp0Xmi',
  'secret' => 'cqss9a+Fzh5XlstLVlx3zaiyv1QxzuMUxTOotDwJFc3Bhbgx',
  'trusted_domains' => 
  array (
    0 => 'localhost',
    1 => 'cloud.marcpartensky.com',
  ),
  'datadirectory' => '/var/www/html/data',
  'dbtype' => 'pgsql',
  'version' => '28.0.1.1',
  'dbname' => 'nextcloud',
  'dbhost' => 'postgres',
  'dbport' => '',
  'dbtableprefix' => 'oc_',
  'dbuser' => 'nextcloud',
  'dbpassword' => 'ZDlmYmU0OWFiMWRiNjBkYWE0YzBhMmU1',
  'installed' => true,
  'instanceid' => 'ocysi44ssid9',
  'app_install_overwrite' => 
  array (
    0 => 'integration_suitecrm',
    1 => 'occweb',
  ),
  'maintenance' => false,
);

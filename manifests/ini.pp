# Define: php::ini
#
# Definition to create a php.ini file. Typically used once per node where php
# will be used, to configure the content of the main /etc/php.ini file.
#
# Sample Usage:
#  Php::Ini {
#      expose_php => 'Off',
#  }
#  php::ini { '/etc/php.ini':
#      display_errors => 'On',
#  }
#
define php::ini (
  # php.ini options in the order they appear in the original file
  $user_ini_filename          = '.user.ini',
  $user_ini_cache_ttl         = '300',
  $engine                     = 'On',
  $short_open_tag             = 'Off',
  $asp_tags                   = 'Off',
  $precision                  = '14',
  $output_buffering           = '4096',
  $zlib_output_compression    = 'Off',
  $implicit_flush             = 'Off',
  $serialize_precision        = '17',
  $disable_functions          = '',
  $disable_classes            = '',
  $ignore_user_abort          = false,
  $expose_php                 = 'On',
  $max_execution_time         = '30',
  $max_input_time             = '60',
  $memory_limit               = '128M',
  $error_reporting            = 'E_ALL & ~E_DEPRECATED & ~E_STRICT',
  $display_errors             = 'Off',
  $display_startup_errors     = 'Off',
  $log_errors                 = 'On',
  $log_errors_max_len         = '1024',
  $ignore_repeated_errors     = 'Off',
  $ignore_repeated_source     = 'Off',
  $report_memleaks            = 'On',
  $track_errors               = 'Off',
  $html_errors                = 'On',
  $error_log                  = false,
  $variables_order            = 'GPCS',
  $request_order              = 'GP',
  $register_argc_argv         = 'Off',
  $auto_globals_jit           = 'On',
  $post_max_size              = '8M',
  $auto_prepend_file          = '',
  $auto_append_file           = '',
  $default_mimetype           = 'text/html',
  $default_charset            = false,
  $include_path               = false,
  $doc_root                   = '',
  $user_dir                   = '',
  $enable_dl                  = 'Off',
  $file_uploads               = 'On',
  $upload_max_filesize        = '2M',
  $max_file_uploads           = '20',
  $allow_url_fopen            = 'On',
  $allow_url_include          = 'Off',
  $default_socket_timeout     = '60',
  $date_timezone              = false,
  $sendmail_path              = '/usr/sbin/sendmail -t -i',
  $mail_add_x_header          = 'On',
  $sql_safe_mode              = 'Off',
  $browscap                   = false,
  $session_save_handler       = 'files',
  $session_use_cookies        = '1',
  $session_use_only_cookies   = '1',
  $session_name               = 'PHPSESSID',
  $session_auto_start         = '0',
  $session_cookie_lifetime    = '0',
  $session_cookie_path        = '/',
  $session_cookie_domain      = '',
  $session_cookie_httponly    = '',
  $session_serialize_handler  = 'php',
  $session_gc_probability     = '1',
  $session_gc_divisor         = '1000',
  $session_gc_maxlifetime     = '1440',
  $session_bug_compat_42      = 'Off',
  $session_bug_compat_warn    = 'Off',
  $session_referer_check      = '',
  $session_hash_function      = '0',
  $session_hash_bits_per_character = '5',
  $url_rewriter_tags          = 'a=href,area=href,frame=src,input=src,form=fakeentry'
) {
  include php::common
  file { $title:
    content => template('php/php.ini-el6.erb'),
  }
}


<?php
$options = getopt("h::");
require('Parsedown.php');
    $Parsedown = new Parsedown();
    $str = file_get_contents($argv[1]);
    $str = $Parsedown->text($str);
    // print($str);
    $str = preg_replace('/<(code|style|blockquote)(?:(?!<\/\1).)*?<\/\1>/s', '', $str);
    $str = preg_replace("/\```[^)]+\```/", '', $str); //remove all between ```
   	$str = preg_replace('/[^a-z0-9]/i', '_', strip_tags(strtolower($str)), 0);
   	$str = preg_replace('/[.“”’]/', '', $str);
    print_r(str_word_count($str, 0, '0..9'));
?>
<?php
$myfile = fopen("file.txt","r") or die("unable to open file");
echo fread($myfile,filesize("file.txt"));
fclose($myfile);
?>

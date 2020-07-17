<?php
$myfile = fopen("newfile.txt","w") or die("Unable to open file!");
$txt = "Hari Narayana\n";
fwrite($myfile, $txt);
fclose($myfile);
?>

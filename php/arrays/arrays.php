<?php 
$names = array("Narayan","Haribol","Johan");
$age = array("Narayan"=>"26","Haribol"=>"60","Johan"=>"26");

echo "Array:\n";
foreach($names as $value){
  echo "$value\n";
}

echo "\n";
echo "Hash:\n";
foreach($age as $x => $val){
  echo "$x = $val \n";
}
?>

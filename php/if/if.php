<?php

$power_lvl = 9108;

if( $power_lvl < 9000 ) {
  echo "Weak";
} elseif ($power_lvl == 9000) {
  echo "Moderate";
} else {
  echo "Power level is to high to read!";
}
?>

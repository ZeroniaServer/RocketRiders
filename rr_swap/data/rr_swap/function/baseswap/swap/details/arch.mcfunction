## Blue
clone 2 64 -58 22 70 -54 -160 184 -160 strict
$fill -160 184 -160 -140 190 -156 $(blue_front_new) replace $(blue_front_old) strict
$fill -160 184 -160 -140 190 -156 $(blue_middle_new) replace $(blue_middle_old) strict
$fill -160 184 -160 -140 190 -156 $(blue_back_new) replace $(blue_back_old) strict
$fill -160 184 -160 -140 190 -156 $(blue_detail_new) replace $(blue_detail_old) strict
clone -160 184 -160 -140 190 -156 2 64 -58 strict masked
$fill -160 184 -160 -140 190 -156 $(blue_back_stained_glass_pane_new) replace $(blue_back_stained_glass_pane_old)
clone -160 184 -160 -140 190 -156 2 64 -58 strict filtered #custom:glasspane

## Yellow
clone 2 64 54 22 70 58 -160 184 -160 strict
$fill -160 184 -160 -140 190 -156 $(yellow_front_new) replace $(yellow_front_old) strict
$fill -160 184 -160 -140 190 -156 $(yellow_middle_new) replace $(yellow_middle_old) strict
$fill -160 184 -160 -140 190 -156 $(yellow_back_new) replace $(yellow_back_old) strict
$fill -160 184 -160 -140 190 -156 $(yellow_detail_new) replace $(yellow_detail_old) strict
clone -160 184 -160 -140 190 -156 2 64 54 strict masked
$fill -160 184 -160 -140 190 -156 $(yellow_back_stained_glass_pane_new) replace $(yellow_back_stained_glass_pane_old)
clone -160 184 -160 -140 190 -156 2 64 54 strict filtered #custom:glasspane

## Blue
clone 8 39 -55 16 47 -47 -160 184 -160 strict
$fill -160 184 -160 -152 192 -152 $(blue_front_new) replace $(blue_front_old) strict
$fill -160 184 -160 -152 192 -152 $(blue_middle_new) replace $(blue_middle_old) strict
$fill -160 184 -160 -152 192 -152 $(blue_back_new) replace $(blue_back_old) strict
$fill -160 184 -160 -152 192 -152 $(blue_detail_new) replace $(blue_detail_old) strict
clone -160 184 -160 -152 192 -152 8 39 -55 strict masked
$fill -160 184 -160 -152 192 -152 $(blue_back_panes_new) replace $(blue_back_panes_old)
clone -160 184 -160 -152 192 -152 8 39 -55 strict filtered #custom:glasspane

## Yellow
clone 8 37 47 16 45 55 -160 184 -160 strict
$fill -160 184 -160 -152 192 -152 $(yellow_front_new) replace $(yellow_front_old) strict
$fill -160 184 -160 -152 192 -152 $(yellow_middle_new) replace $(yellow_middle_old) strict
$fill -160 184 -160 -152 192 -152 $(yellow_back_new) replace $(yellow_back_old) strict
$fill -160 184 -160 -152 192 -152 $(yellow_detail_new) replace $(yellow_detail_old) strict
clone -160 184 -160 -152 192 -152 8 37 47 strict masked
$fill -160 184 -160 -152 192 -152 $(yellow_back_panes_new) replace $(yellow_back_panes_old)
clone -160 184 -160 -152 192 -152 8 37 47 strict filtered #custom:glasspane

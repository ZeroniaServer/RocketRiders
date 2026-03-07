# arguments: material, color, color_source

$data modify storage rocketriders:main team_attributes.result set value "$(material)"
return 1
$setblock 0 0 0 minecraft:$(material) destroy

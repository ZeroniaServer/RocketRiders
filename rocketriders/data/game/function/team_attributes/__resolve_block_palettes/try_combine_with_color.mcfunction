# arguments: material, color, color_source

$data modify storage rocketriders:main team_attributes.result set value "$(color)_$(material)"
return 1
$setblock 0 0 0 minecraft:$(color)_$(material) destroy

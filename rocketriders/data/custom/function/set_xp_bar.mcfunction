# arguments: level, progress

# translate progress (0.0-1.0) into points (0-741)
$data modify storage rocketriders:main set_xp_bar set value {progress:$(progress)}
execute store result score $validate_progress var run data get storage rocketriders:main set_xp_bar.progress
execute if score $validate_progress var matches ..-1 run data modify storage rocketriders:main set_xp_bar.progress set value 0
execute if score $validate_progress var matches 1.. run data modify storage rocketriders:main set_xp_bar.progress set value 1
execute store result storage rocketriders:main set_xp_bar.points int 4.071428571 run data get storage rocketriders:main set_xp_bar.progress 182

function custom:_set_xp_bar_/set_progress with storage rocketriders:main set_xp_bar
$xp set @s $(level) levels

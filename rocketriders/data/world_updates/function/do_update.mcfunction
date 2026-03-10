# arguments: version_id, function, version_display_name, is_indev

scoreboard players set $applied_an_update global 1

$function $(function)
$scoreboard players set $WorldVersion CmdData $(version_id)

$scoreboard players set $is_indev var $(is_indev)
execute if score $is_indev var matches 1 unless function dev:enabled run return 0
$tellraw @a[x=0] {color:"green",text:"Successfully applied updates from Rocket Riders $(version_display_name)"}

$data modify storage rocketriders:version name set value "$(version_display_name)"

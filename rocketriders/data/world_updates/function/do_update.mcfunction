# arguments: version_id, function, version_display_name, is_indev

scoreboard players set $applied_an_update global 1

$function $(function)
$scoreboard players set $WorldVersion CmdData $(version_id)

$data modify storage rocketriders:version name set value "$(version_display_name)"

$scoreboard players set $is_indev var $(is_indev)
execute unless score $is_indev var matches 1 run tellraw @a[x=0] [{color:"green",text:"Successfully applied updates from Rocket Riders "},{storage:"rocketriders:version",nbt:"name",interpret:true}]
execute if score $is_indev var matches 1 if function dev:enabled run tellraw @a[x=0] [{color:"green",text:"Successfully applied updates from Rocket Riders "},{storage:"rocketriders:version",nbt:"name",interpret:true}]

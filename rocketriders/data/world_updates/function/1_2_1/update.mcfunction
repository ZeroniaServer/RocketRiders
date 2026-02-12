#> Cancel active PowerClear
execute if entity @e[x=0,type=marker,tag=PowerClearAEC] as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:superspeed
kill @e[x=0,type=marker,tag=PowerClearAEC]
kill @e[x=0,type=marker,tag=PowerClearChecker]
kill @e[x=0,type=marker,tag=PlacerPowerClear]
scoreboard players reset $ClearTime CmdData
function world_updates:1_21_1/disable_command_feedback

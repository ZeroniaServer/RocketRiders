#> Cancel active PowerClear
execute if entity @e[x=0,type=marker,tag=PowerClearAEC] as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:superspeed
kill @e[x=0,type=marker,tag=PowerClearAEC]
kill @e[x=0,type=marker,tag=PowerClearChecker]
kill @e[x=0,type=marker,tag=PlacerPowerClear]
scoreboard players reset $ClearTime CmdData
gamerule sendCommandFeedback false

tellraw @a[x=0] {"text":"Successfully applied updates from Rocket Riders 1.2.1","color":"green"}
scoreboard players set $WorldVersion CmdData 1210
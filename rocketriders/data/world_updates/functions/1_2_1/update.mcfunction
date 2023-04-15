#> Cancel active PowerClear
execute if entity @e[type=marker,tag=PowerClearAEC] as @e[type=armor_stand,tag=Selection] run function arenaclear:superspeed
kill @e[type=marker,tag=PowerClearAEC]
kill @e[type=marker,tag=PowerClearChecker]
kill @e[type=marker,tag=PlacerPowerClear]
scoreboard players reset $ClearTime CmdData
gamerule sendCommandFeedback false

tellraw @a[predicate=custom:indimension] {"text":"Successfully applied updates from Rocket Riders 1.2.1","color":"green"}
scoreboard players set $WorldVersion CmdData 1210
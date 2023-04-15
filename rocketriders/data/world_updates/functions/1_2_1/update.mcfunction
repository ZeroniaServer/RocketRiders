#> Cancel active PowerClear
execute if entity @e[predicate=custom:indimension,type=marker,tag=PowerClearAEC] as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:superspeed
kill @e[predicate=custom:indimension,type=marker,tag=PowerClearAEC]
kill @e[predicate=custom:indimension,type=marker,tag=PowerClearChecker]
kill @e[predicate=custom:indimension,type=marker,tag=PlacerPowerClear]
scoreboard players reset $ClearTime CmdData
gamerule sendCommandFeedback false

tellraw @a[predicate=custom:indimension] {"text":"Successfully applied updates from Rocket Riders 1.2.1","color":"green"}
scoreboard players set $WorldVersion CmdData 1210
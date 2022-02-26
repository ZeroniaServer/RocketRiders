#> Cancel active PowerClear
kill @e[type=marker,tag=PowerClearAEC]
kill @e[type=marker,tag=PowerClearChecker]
kill @e[type=marker,tag=PlacerPowerClear]
scoreboard players reset $ClearTime CmdData
gamerule sendCommandFeedback false

tellraw @a {"text":"Successfully applied updates from Rocket Riders 1.2.1","color":"green"}
scoreboard players set $WorldVersion CmdData 1210
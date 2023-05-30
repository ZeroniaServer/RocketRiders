execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill -18 ~ -1 -18 ~ 1 minecraft:light_gray_stained_glass replace air 
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill -17 ~ -3 -11 ~ 3 minecraft:light_gray_stained_glass replace air 
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill -13 ~ -4 -15 ~ -4 minecraft:light_gray_stained_glass replace air 
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill -15 ~ 4 -13 ~ 4 minecraft:light_gray_stained_glass replace air 
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill -10 ~ 1 -10 ~ -1 minecraft:light_gray_stained_glass replace air 
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill -10 ~ 2 34 ~ -2 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 6 ~ 1 6 ~ -1 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 7 ~ 3 17 ~ -3 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 9 ~ -5 15 ~ -4 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 9 ~ -5 15 ~ -4 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 15 ~ 5 9 ~ 4 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 16 ~ 4 16 ~ 4 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 8 ~ 4 8 ~ 4 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 8 ~ -4 8 ~ -4 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 16 ~ -4 16 ~ -4 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 18 ~ 1 18 ~ -1 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 11 ~ 6 13 ~ 6 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 13 ~ -6 11 ~ -6 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 35 ~ 3 41 ~ -3 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 39 ~ -4 37 ~ -4 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 34 ~ -1 34 ~ 1 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 37 ~ 4 39 ~ 4 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run fill 42 ~ 1 42 ~ -1 minecraft:light_gray_stained_glass replace air
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run tp @s ~ ~-1 ~
execute as @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker] at @s run scoreboard players remove @s CmdData 1

execute if entity @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker,scores={CmdData=1..}] run schedule function rr_crusade:game/glassovertime_indimension 2t
execute if entity @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker,scores={CmdData=-1000..0}] run kill @e[predicate=custom:indimension,type=marker,tag=GlassSetMarker,scores={CmdData=-1000..0}]

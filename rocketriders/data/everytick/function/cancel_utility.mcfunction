####################################
## CANCEL UTILITY: Kill utilities ##
## near portals or above the roof ##
####################################

#Kill everything near/above the roof
execute as @e[x=0,type=tnt] at @s if predicate custom:near_or_above_roof run kill @s
execute as @e[x=0,type=tnt_minecart] at @s if predicate custom:near_or_above_roof run kill @s

#Kill everything below void
execute as @e[x=0,type=tnt] at @s if predicate custom:in_void run kill @s
execute as @e[x=0,type=tnt_minecart] at @s if predicate custom:in_void run kill @s

#Kill everything near world border
execute as @e[x=0,type=#arrows] at @s if predicate custom:location/touching_or_beyond_world_border run kill @s
execute as @e[x=0,type=tnt] at @s if predicate custom:location/touching_or_beyond_world_border run kill @s
execute as @e[x=0,type=tnt_minecart] at @s if predicate custom:location/touching_or_beyond_world_border run kill @s

#Disable obsidian shields near flags
execute if predicate game:match_components/has_flags positioned as @e[x=0,type=marker,tag=ctf_flag] run kill @e[type=marker,tag=yellowobalone,distance=..5]
execute if predicate game:match_components/has_flags positioned as @e[x=0,type=marker,tag=ctf_flag] run kill @e[type=marker,tag=blueobalone,distance=..5]

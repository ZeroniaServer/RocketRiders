####################################
## CANCEL UTILITY: Kill utilities ##
## near portals or above the roof ##
####################################

#Kill everything near/above the roof
execute as @e[x=0,type=ender_pearl,predicate=custom:near_or_above_roof] run function entities:type/canopy_projectile/actions/break
execute as @e[x=0,type=snowball] at @s run kill @s[predicate=custom:near_or_above_roof]
execute as @e[x=0,type=dragon_fireball] at @s run kill @s[predicate=custom:near_or_above_roof]
execute as @e[x=0,type=tnt] at @s run kill @s[predicate=custom:near_or_above_roof]
execute as @e[x=0,type=tnt_minecart] at @s run kill @s[predicate=custom:near_or_above_roof]
execute as @e[x=0,type=#custom:potion] at @s run kill @s[predicate=custom:near_or_above_roof]

#Kill everything below void
kill @e[x=0,type=ender_pearl,predicate=custom:in_void]
kill @e[x=0,type=snowball,predicate=custom:in_void]
kill @e[x=0,type=dragon_fireball,predicate=custom:in_void]
kill @e[x=0,type=tnt,predicate=custom:in_void]
kill @e[x=0,type=tnt_minecart,predicate=custom:in_void]
kill @e[x=0,type=firework_rocket,scores={novatimer=1..},predicate=custom:in_void]
kill @e[x=0,type=#custom:potion,predicate=custom:in_void]
kill @e[x=0,predicate=entities:type/damage_spell,predicate=custom:in_void]
kill @e[x=0,predicate=entities:type/fire_spell,predicate=custom:in_void]
kill @e[x=0,predicate=entities:type/wind_spell,predicate=custom:in_void]

#Kill everything near world border
execute as @e[x=0,type=#arrows] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=ender_pearl] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=snowball] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=dragon_fireball] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=tnt] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=tnt_minecart] at @s unless predicate custom:insideborder run kill @s
execute as @e[x=0,type=#custom:potion] at @s unless predicate custom:insideborder run kill @s

#Disable obsidian shields near flags
execute if predicate game:gamemode_components/has_flags positioned -10 65 -64 run kill @e[type=marker,tag=yellowobalone,distance=..5]
execute if predicate game:gamemode_components/has_flags positioned 34 65 -64 run kill @e[type=marker,tag=yellowobalone,distance=..5]
execute if predicate game:gamemode_components/has_flags positioned -10 65 64 run kill @e[type=marker,tag=yellowobalone,distance=..5]
execute if predicate game:gamemode_components/has_flags positioned 34 65 64 run kill @e[type=marker,tag=yellowobalone,distance=..5]

execute if predicate game:gamemode_components/has_flags positioned -10 65 -64 run kill @e[type=marker,tag=blueobalone,distance=..5]
execute if predicate game:gamemode_components/has_flags positioned 34 65 -64 run kill @e[type=marker,tag=blueobalone,distance=..5]
execute if predicate game:gamemode_components/has_flags positioned -10 65 64 run kill @e[type=marker,tag=blueobalone,distance=..5]
execute if predicate game:gamemode_components/has_flags positioned 34 65 64 run kill @e[type=marker,tag=blueobalone,distance=..5]

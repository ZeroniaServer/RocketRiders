##They're Useful achievement
##Detects if a player successfully uses a Splash to prevent a TNT explosion
scoreboard players operation $useful playerUUID = @s playerUUID
execute as @e[type=area_effect_cloud,tag=splash_alone] if score @s splashOwnerUUID = $useful playerUUID run tag @s add currSplash
execute as @e[type=area_effect_cloud,tag=currSplash] at @s if entity @e[type=tnt,predicate=custom:is_underwater,distance=..7,nbt={fuse:1s}] run tag @s add useful
execute if entity @e[type=area_effect_cloud,tag=useful] run scoreboard players add @s useful 1
scoreboard players reset $useful playerUUID
tag @e[type=area_effect_cloud,tag=useful] remove useful
tag @e[type=area_effect_cloud,tag=currSplash] remove currSplash
advancement grant @s[scores={useful=20..}] only achievements:rr_challenges/useful
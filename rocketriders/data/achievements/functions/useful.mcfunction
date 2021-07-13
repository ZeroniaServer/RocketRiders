##They're Useful achievement
##Detects if a player successfully uses a Splash to prevent a TNT explosion

scoreboard players operation $useful playerUUID = @s playerUUID
execute as @e[tag=splash_alone,type=area_effect_cloud] if score @s splashOwnerUUID = $useful playerUUID run tag @s add currSplash
execute as @e[tag=currSplash,type=area_effect_cloud] at @s if entity @e[type=tnt,nbt={Fuse:1s},distance=..7,predicate=custom:is_underwater] run tag @s add useful
execute if entity @e[tag=useful,type=area_effect_cloud] run scoreboard players add @s useful 1
scoreboard players reset $useful playerUUID
tag @e[tag=useful,type=area_effect_cloud] remove useful
tag @e[tag=currSplash,type=area_effect_cloud] remove currSplash
advancement grant @s[scores={useful=20..}] only achievements:rr_challenges/useful
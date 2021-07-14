##Volcanic Hatred achievement
##Detects player killing an enemy using their own Lava Splash (only applies to Powerups Mode)
scoreboard players operation $volcanic playerUUID = @s playerUUID
execute as @e[type=area_effect_cloud,tag=lavasplash_alone] if score @s splashOwnerUUID = $volcanic playerUUID run tag @s add currLavaSplash
execute as @s[team=Blue] as @e[type=area_effect_cloud,tag=currLavaSplash] at @s run tag @a[team=Yellow,distance=..5,predicate=custom:is_in_lava] add volcanicdie
execute as @s[team=Yellow] as @e[type=area_effect_cloud,tag=currLavaSplash] at @s run tag @a[team=Blue,distance=..5,predicate=custom:is_in_lava] add volcanicdie
execute as @a[tag=volcanicdie] if score @s PlayerDeaths < @s deaths run tag @s add volcanicdead
execute as @s[team=Blue] if entity @a[tag=volcanicdead,team=Yellow] run advancement grant @s only achievements:rr_challenges/volcanic_hatred
execute as @s[team=Yellow] if entity @a[tag=volcanicdead,team=Blue] run advancement grant @s only achievements:rr_challenges/volcanic_hatred
scoreboard players reset $volcanic playerUUID
tag @a[tag=volcanicdead,predicate=!custom:is_in_lava] remove volcanicdead
tag @a[tag=volcanicdie,predicate=!custom:is_in_lava] remove volcanicdie
tag @e[type=area_effect_cloud,tag=currLavaSplash] remove currLavaSplash
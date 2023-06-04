##Volcanic Hatred achievement
##Detects player killing an enemy using their own Lava Splash (only applies to Powerups Mode)
scoreboard players operation $volcanic playerUUID = @s playerUUID
execute as @e[x=0,type=area_effect_cloud,tag=lavasplash_alone] if score @s splashOwnerUUID = $volcanic playerUUID run tag @s add currLavaSplash
execute if entity @s[team=Blue] as @e[x=0,type=area_effect_cloud,tag=currLavaSplash] at @s run tag @a[team=Yellow,distance=..5,predicate=custom:is_in_lava] add volcanicdie
execute if entity @s[team=Yellow] as @e[x=0,type=area_effect_cloud,tag=currLavaSplash] at @s run tag @a[team=Blue,distance=..5,predicate=custom:is_in_lava] add volcanicdie
execute as @a[x=0,tag=volcanicdie] if score @s PlayerDeaths < @s deaths run tag @s add volcanicdead
execute if entity @s[team=Blue] if entity @a[x=0,tag=volcanicdead,team=Yellow] run advancement grant @s only achievements:rr_challenges/volcanic_hatred
execute if entity @s[team=Yellow] if entity @a[x=0,tag=volcanicdead,team=Blue] run advancement grant @s only achievements:rr_challenges/volcanic_hatred
scoreboard players reset $volcanic playerUUID
tag @a[x=0,tag=volcanicdead,predicate=!custom:is_in_lava] remove volcanicdead
tag @a[x=0,tag=volcanicdie,predicate=!custom:is_in_lava] remove volcanicdie
tag @e[x=0,type=area_effect_cloud,tag=currLavaSplash] remove currLavaSplash
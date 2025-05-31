##Volcanic Hatred achievement
##Detects player killing an enemy using their own Lava Splash (only applies to Powerups Mode)

tag @s add matchOrigin
execute if entity @s[team=Blue] as @e[x=0,type=area_effect_cloud,tag=lavasplash_alone] if function custom:match_origin at @s run tag @a[team=Yellow,distance=..5,predicate=custom:is_in_lava] add volcanicdie
execute if entity @s[team=Yellow] as @e[x=0,type=area_effect_cloud,tag=lavasplash_alone] if function custom:match_origin at @s run tag @a[team=Blue,distance=..5,predicate=custom:is_in_lava] add volcanicdie
tag @s remove matchOrigin

execute as @a[x=0,tag=volcanicdie] if score @s PlayerDeaths < @s deaths run tag @s add volcanicdead

execute if entity @s[team=Blue] if entity @a[x=0,tag=volcanicdead,team=Yellow] run advancement grant @s only achievements:rr_challenges/volcanic_hatred
execute if entity @s[team=Yellow] if entity @a[x=0,tag=volcanicdead,team=Blue] run advancement grant @s only achievements:rr_challenges/volcanic_hatred

tag @a[x=0,tag=volcanicdead,predicate=!custom:is_in_lava] remove volcanicdead
tag @a[x=0,tag=volcanicdie,predicate=!custom:is_in_lava] remove volcanicdie

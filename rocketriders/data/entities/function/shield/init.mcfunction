# Do nothing if already processed
execute unless entity @s[type=area_effect_cloud] run return fail
execute if entity @s[predicate=entities:shield] run return fail

## Set up data
data modify entity @s data.shield set value {}
scoreboard players set @s entity.age 0

scoreboard players add $shield_count global 1

data modify storage rocketriders:main shield.name set value "Shield"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Canopy"], write_to:"storage rocketriders:main shield.name"}
data modify entity @s CustomName set from storage rocketriders:main shield.name

## Achievements
execute on origin run advancement grant @s only achievements:rr_challenges/veteran ShieldSpawned
execute on origin run tag @s add ShieldSpawned

## Spawn behaviour
execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

data modify storage rocketriders:shieldpos x prepend from entity @s Pos[0]
data modify storage rocketriders:shieldpos y prepend from entity @s Pos[1]
data modify storage rocketriders:shieldpos z prepend from entity @s Pos[2]

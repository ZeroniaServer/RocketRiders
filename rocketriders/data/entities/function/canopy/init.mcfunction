# Do nothing if already processed
execute unless entity @s[type=area_effect_cloud] run return fail
execute if entity @s[predicate=entities:canopy] run return fail

## Set up data
data modify entity @s data.canopy set value {}
scoreboard players set @s entity.age 0

scoreboard players add $canopy_count global 1

data modify storage rocketriders:main canopy_projectile.name set value "Canopy"
execute on origin run function custom:resolve_text_component {text_component:["",{selector:"@s"},"'s Canopy"], write_to:"storage rocketriders:main canopy.name"}
data modify entity @s CustomName set from storage rocketriders:main canopy.name

## Spawn behaviour
execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

data modify storage rocketriders:canopypos x prepend from entity @s Pos[0]
data modify storage rocketriders:canopypos y prepend from entity @s Pos[1]
data modify storage rocketriders:canopypos z prepend from entity @s Pos[2]

execute on origin run function custom:player_action/forget_all_canopies
tag @s remove canopy.forgotten_origin

scoreboard players set $team var -1
execute store success score $team var if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!customShield] on origin if entity @s[team=!Blue]
execute if score $team var matches 0 run place template minecraft:bluecanopy1 ~-1 ~ ~-1
execute if score $team var matches 1 run place template minecraft:yellowcanopy1 ~-1 ~ ~-1
execute if score $team var matches -1 run place template rr_chase:whitecanopy1 ~-1 ~ ~-1

playsound ui.stonecutter.take_result master @a[x=0] ~ ~ ~ 2 0
playsound block.wood.break master @a[x=0] ~ ~ ~ 2 1
playsound block.grass.place master @a[x=0] ~ ~ ~ 2 0

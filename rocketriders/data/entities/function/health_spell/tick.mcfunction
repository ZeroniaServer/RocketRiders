#particle minecraft:dust{color:0x00FF00,scale:1} ~ ~ ~ 3 3 3 0 2 force @a[predicate=custom:in_arena]
#particle minecraft:instant_effect{color:0x00FF00} ~ ~ ~ 3 3 3 0 2 force @a[predicate=custom:in_arena]

scoreboard players set $LIFE var 400
execute if score @s entity.age >= $LIFE var run return run kill @s

tag @s add health_spell.this
scoreboard players operation #this entity.age = @s entity.age

scoreboard players set $MAX_RADIUS var 10
scoreboard players operation $radius var = $LIFE var
scoreboard players operation $radius var -= @s entity.age
scoreboard players operation $radius var *= $100 constant
scoreboard players operation $radius var *= $MAX_RADIUS var
scoreboard players operation $radius var /= $LIFE var

data modify storage rocketriders:main health_spell.team set value "none"
data modify storage rocketriders:main health_spell.team set from entity @s data.origin_team

execute unless data storage rocketriders:main health_spell{team:"none"} run function entities:health_spell/tick/select_teammates with storage rocketriders:main health_spell
execute unless data storage rocketriders:main health_spell{team:"none"} positioned ~ ~-1.6 ~ run function entities:health_spell/tick/select_teammates with storage rocketriders:main health_spell

execute store result storage rocketriders:main health_spell.random_radius_scaled_max int 1 store result storage rocketriders:main health_spell.radius float 0.01 run scoreboard players get $radius var
function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
execute if score $radius var matches 100.. run function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
execute if score $radius var matches 150.. run function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
execute if score $radius var matches 200.. run function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
execute if score $radius var matches 250.. run function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
execute if score $radius var matches 300.. run function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
execute if score $radius var matches 350.. run function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
execute if score $radius var matches 400.. run function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
execute if score $radius var matches 450.. run function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
execute if score $radius var matches 500.. run function entities:health_spell/tick/random_edge with storage rocketriders:main health_spell
function entities:health_spell/tick/random_trail
tp @s ~ ~ ~

tag @s remove health_spell.this

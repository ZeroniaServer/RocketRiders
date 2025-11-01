# Do nothing if already processed
execute unless entity @s[type=snowball] run return fail
execute if entity @s[predicate=entities:type/vortex_arm] run return fail

# Break if there is no origin
scoreboard players set $origin_exists var 0
execute on origin run scoreboard players set $origin_exists var 1
execute if score $origin_exists var matches 0 run return run kill @s

## Set up data
data modify entity @s data.vortex_arm set value {brain:{}}

# Break if origin already has 5 arms
scoreboard players set $too_many_arms var 0
execute on origin if predicate entities:vortex_has_max_arms run scoreboard players set $too_many_arms var 1
execute if score $too_many_arms var matches 1 run return run function entities:vortex_arm/actions/break

scoreboard players set $index var 0
execute on origin store result score $index var run scoreboard players add @s entity.vortex.arms 1
scoreboard players operation @s entity.vortex_arm.index = $index var
scoreboard players remove @s entity.vortex_arm.index 1

## Spawn behaviour
execute store success score $feathered var on origin if entity @s[tag=vortex.feathered]
tag @s add vortex_arm.this
execute at @s summon item_display run function entities:vortex_arm/init/body
tag @s remove vortex_arm.this

execute on origin on origin run tag @s add vortex.origin 
execute if score $feathered var matches 0 at @s run playsound minecraft:entity.shulker.hurt_closed master @a[x=0,tag=vortex.origin] ~ ~ ~ 0.7 0 0.25
execute if score $feathered var matches 0 at @s run playsound minecraft:block.sculk_sensor.clicking master @a[x=0,tag=vortex.origin] ~ ~ ~ 1 1 0.25
execute if score $feathered var matches 1 at @s run playsound minecraft:entity.chicken.hurt master @a[x=0,tag=vortex.origin] ~ ~ ~ 2 0 0.25

execute if score $feathered var matches 0 at @s run playsound minecraft:entity.shulker.hurt_closed master @a[x=0,tag=!vortex.origin] ~ ~ ~ 0.7 0 0.05
execute if score $feathered var matches 0 at @s run playsound minecraft:block.sculk_sensor.clicking master @a[x=0,tag=!vortex.origin] ~ ~ ~ 1 1 0.05
execute if score $feathered var matches 1 at @s run playsound minecraft:entity.chicken.hurt master @a[x=0,tag=!vortex.origin] ~ ~ ~ 2 0 0.05
execute on origin on origin run tag @s remove vortex.origin

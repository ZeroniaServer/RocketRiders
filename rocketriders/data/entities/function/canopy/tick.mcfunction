# Movement cooldown
scoreboard players add @s entity.canopy.movement_cooldown 0
execute if entity @s[tag=!canopy.forgotten_origin,tag=!canopy.kill] if score @s entity.canopy.movement_cooldown matches ..45 run function entities:canopy/tick/teleporting
scoreboard players add @s[predicate=entities:do_age,tag=!canopy.forgotten_origin] entity.canopy.movement_cooldown 1
execute if entity @s[tag=!canopy.forgotten_origin,tag=!canopy.animated,predicate=custom:canopy_nearblue] if function custom:origin_on_blue_team run scoreboard players add @s entity.canopy.movement_cooldown 3
execute if entity @s[tag=!canopy.forgotten_origin,tag=!canopy.animated,predicate=custom:canopy_nearyellow] if function custom:origin_on_yellow_team run scoreboard players add @s entity.canopy.movement_cooldown 3

# Speed up aging when near the base of its own team color
execute if entity @s[tag=!canopy.animated,predicate=custom:canopy_nearblue] if function custom:origin_on_blue_team run scoreboard players add @s entity.age 3
execute if entity @s[tag=!canopy.animated,predicate=custom:canopy_nearyellow] if function custom:origin_on_yellow_team run scoreboard players add @s entity.age 3

# Animate platform
tag @s[tag=canopy.kill,tag=!canopy.animated] add canopy.animated
execute if entity @s[tag=!canopy.animated,tag=!canopy.small] run function entities:canopy/tick/deployment_animation
execute if entity @s[tag=!canopy.animated,tag=canopy.small] run function entities:canopy/tick/deployment_animation_small

#Kill Canopy if marked to be killed
execute if entity @s[tag=canopy.kill] run return run function entities:canopy/actions/kill

#Kill Canopy once it expires
execute if score @s entity.age matches 299.. run return run function entities:canopy/actions/kill

#Canopy smoke when player on fire is nearby
execute if score @s entity.age matches 2..299 if entity @e[distance=..3,type=player,predicate=custom:is_on_fire] run scoreboard players add @s canopySmoke 2
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 1.. run scoreboard players remove @s canopySmoke 1
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 1.. unless entity @e[distance=..3,type=player,predicate=custom:is_on_fire] run scoreboard players remove @s canopySmoke 1

execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 1 run playsound block.campfire.crackle master @a[x=0] ~ ~ ~ 2 1
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 1 run particle minecraft:large_smoke ~ ~ ~ 1 0 1 0 100 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 7 run playsound block.fire.ambient player @a[x=0] ~ ~ ~ 2 0.25
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 14 run playsound block.campfire.crackle master @a[x=0] ~ ~ ~ 2 1
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 14 run particle minecraft:large_smoke ~ ~ ~ 1 0 1 0 200 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 21 run playsound block.fire.ambient master @a[x=0] ~ ~ ~ 2 0.5
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 21 run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1 -1 1 0.01 100 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 28 run playsound block.campfire.crackle master @a[x=0] ~ ~ ~ 2 1
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 28 run particle minecraft:large_smoke ~ ~ ~ 1.5 0 1.5 0 200 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 35 run playsound block.fire.ambient master @a[x=0] ~ ~ ~ 2 0.75
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 35 run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1 -1 1 0.01 100 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 42 run playsound block.campfire.crackle player @a[x=0] ~ ~ ~ 2 1
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 42 run particle minecraft:large_smoke ~ ~ ~ 1.5 0 1.5 0.1 200 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 49 run playsound block.fire.ambient master @a[x=0] ~ ~ ~ 2 1
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 49 run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1.5 -1 1.5 0.01 200 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 56 run playsound block.campfire.crackle master @a[x=0] ~ ~ ~ 2 1
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 56 run particle minecraft:large_smoke ~ ~ ~ 2 0 2 0.1 200 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 63 run playsound block.fire.ambient master @a[x=0] ~ ~ ~ 2 1.5
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 63 run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1.5 -1 1.5 0.01 200 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 70 run playsound block.campfire.crackle master @a[x=0] ~ ~ ~ 2 1
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 70 run particle minecraft:large_smoke ~ ~ ~ 2 0 2 0.1 300 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 77 run playsound block.fire.ambient master @a[x=0] ~ ~ ~ 2 2
execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 77 run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 2 -1 2 0.01 200 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

execute if score @s entity.age matches 2..299 if score @s canopySmoke matches 80.. run tag @s add canopy.burn

#Canopy lava poof
scoreboard players set $in_lava var 0
execute store success score $in_lava var run clone ~-3 ~-1 ~-3 ~3 ~2 ~3 ~-3 ~-1 ~-3 filtered lava force
execute if score $in_lava var matches 1 run particle lava ~ ~1 ~ 2 0.1 2 2 50 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $in_lava var matches 1 run particle minecraft:falling_lava ~ ~-1 ~ 2 1 2 0.1 50 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $in_lava var matches 1 run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 1 1 1 0.5 40 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $in_lava var matches 1 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 1 0.7
execute if score $in_lava var matches 1 run playsound minecraft:block.lava.pop master @a[x=0] ~ ~ ~ 1 0.9
execute if score $in_lava var matches 1 run playsound minecraft:item.bucket.empty_lava master @a[x=0] ~ ~ ~ 2 0.8
execute if score $in_lava var matches 1 run tag @s add canopy.burn

#Burning (fire poofing)
scoreboard players set $on_fire var 0
execute if score @s entity.age matches 2..299 store success score $on_fire var run clone ~-1 ~-1 ~-1 ~1 ~2 ~1 ~-1 ~-1 ~-1 filtered fire force
execute if score @s entity.age matches 2..299 if score $on_fire var matches 1 run tag @s add canopy.burn

execute if entity @s[tag=canopy.burn] run playsound entity.blaze.shoot master @a[x=0] ~ ~ ~ 2 0
execute if entity @s[tag=canopy.burn] run playsound block.fire.ambient master @a[x=0] ~ ~ ~ 2 2
execute if entity @s[tag=canopy.burn] run fill ~ ~ ~ ~ ~1 ~ air destroy
execute if entity @s[tag=canopy.burn] run fill ~-3 ~1 ~-3 ~3 ~1 ~3 fire replace #custom:air
execute if entity @s[tag=canopy.burn] run particle flame ~ ~ ~ 2 0 2 0.15 250 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[tag=canopy.burn] run particle lava ~ ~ ~ 2 0 2 0.1 20 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[tag=canopy.burn] run particle explosion_emitter ~ ~ ~ 2 0 2 0.1 1 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if entity @s[tag=canopy.burn] run return run function entities:canopy/actions/kill

#Canopy durations
execute if score @s entity.age matches 3.. unless block ~ ~1 ~ oak_wood run return run function entities:canopy/actions/kill
execute if score @s entity.age matches 3.. unless block ~ ~ ~ oak_wood run return run function entities:canopy/actions/kill
execute if score @s entity.age matches 219.. at @s if score $dust CmdData matches 1 run particle minecraft:block{block_state:"minecraft:oak_wood"} ~ ~1 ~ 0.5 0.5 0.5 1 10 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score @s entity.age matches 219 at @s run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 224 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 229 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 234 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0
execute if score @s entity.age matches 239 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0.4
execute if score @s entity.age matches 244 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0.5
execute if score @s entity.age matches 249 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0.6
execute if score @s entity.age matches 254 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0.7
execute if score @s entity.age matches 259 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0.8
execute if score @s entity.age matches 264 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 0.9
execute if score @s entity.age matches 269 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 1
execute if score @s entity.age matches 274 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 1.2
execute if score @s entity.age matches 279 run playsound block.wood.break master @a[x=0] ~ ~ ~ 2 1.5
execute if score @s entity.age matches 299 run particle minecraft:block{block_state:"minecraft:oak_wood"} ~ ~1 ~ 0.5 0.5 0.5 1 50 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]

#Canopy watering (one time use - Splash extends Canopy duration)
scoreboard players set $in_water var 0
execute if score @s[tag=!canopy.watered] entity.age matches 2..299 store success score $in_water var run clone ~-2 ~-1 ~-2 ~2 ~2 ~2 ~-2 ~-1 ~-2 filtered water force
execute if score $in_water var matches 1 run setblock ~ ~1 ~ sponge
execute if score $in_water var matches 1 run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 air replace water
execute if score $in_water var matches 1 run setblock ~ ~1 ~ oak_wood[axis=y]
execute if score $in_water var matches 1 run playsound minecraft:block.bamboo_sapling.place master @a[x=0] ~ ~ ~ 1 0.5
execute if score $in_water var matches 1 run playsound minecraft:block.chorus_flower.grow master @a[x=0] ~ ~ ~ 1 1
execute if score $in_water var matches 1 run playsound minecraft:entity.player.swim master @a[x=0] ~ ~ ~ 1 1
execute if score $in_water var matches 1 run particle minecraft:falling_water ~ ~1 ~ 2 -1 2 1 50 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $in_water var matches 1 run particle minecraft:happy_villager ~ ~1 ~ 2 -1 2 1 50 force @a[x=0,tag=!hideParticles,predicate=custom:belowroof]
execute if score $in_water var matches 1 if entity @s[tag=canopy.animated] run scoreboard players remove @s entity.age 200
execute if score $in_water var matches 1 if entity @s[tag=canopy.animated] run tag @s add canopy.watered

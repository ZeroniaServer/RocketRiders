# Converts to random legacy missile spawner entity

execute unless score $spawn_egg.placer_team var matches 1 run scoreboard players add @a[limit=1,tag=spawn_egg.placer] BSurpriseSpawned 1
execute if score $spawn_egg.placer_team var matches 1 run scoreboard players add @a[limit=1,tag=spawn_egg.placer] YSurpriseSpawned 1

# choose a random category, then choose a random missile from that category
loot replace block 0 184 -16 container.0 loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{category:"heavy"}}}],conditions:[{condition:"minecraft:inverted",term:{condition:"minecraft:reference",name:"game:item_pool/__all_heavy_missiles_disabled"}}]},{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{category:"normal"}}}],conditions:[{condition:"minecraft:inverted",term:{condition:"minecraft:reference",name:"game:item_pool/__all_normal_missiles_disabled"}}]},{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{category:"lightning"}}}],conditions:[{condition:"minecraft:inverted",term:{condition:"minecraft:reference",name:"game:item_pool/__all_lightning_missiles_disabled"}}]},{type:"minecraft:item",name:"minecraft:stone",functions:[{function:"minecraft:set_components",components:{"minecraft:custom_data":{category:"special"}}}],conditions:[{condition:"minecraft:reference",name:"game:modifiers/special_treatment/on"}]}]}]}
execute if items block 0 184 -16 container.0 *[custom_data={category:"heavy"}] run function items:spawn_egg/spawn/__random_missile/heavy
execute if items block 0 184 -16 container.0 *[custom_data={category:"normal"}] run function items:spawn_egg/spawn/__random_missile/normal
execute if items block 0 184 -16 container.0 *[custom_data={category:"lightning"}] run function items:spawn_egg/spawn/__random_missile/lightning
execute if items block 0 184 -16 container.0 *[custom_data={category:"special"}] run function items:spawn_egg/spawn/__random_missile/special

# convert to legacy missile spawner
execute if entity @a[limit=1,tag=spawn_egg.placer,predicate=!custom:team/yellow] run tag @s add bluemissile
execute if entity @a[limit=1,tag=spawn_egg.placer,predicate=custom:team/yellow] run tag @s add yellowmissile

execute if data storage rocketriders:main spawn_egg{missile:"ant"} run tag @s[tag=bluemissile] add BlueAnt
execute if data storage rocketriders:main spawn_egg{missile:"ant"} run tag @s[tag=yellowmissile] add YellowAnt

execute if data storage rocketriders:main spawn_egg{missile:"auxiliary"} run tag @s[tag=bluemissile] add BlueAux
execute if data storage rocketriders:main spawn_egg{missile:"auxiliary"} run tag @s[tag=yellowmissile] add YellowAux

execute if data storage rocketriders:main spawn_egg{missile:"blade"} run tag @s[tag=bluemissile] add BlueBlade
execute if data storage rocketriders:main spawn_egg{missile:"blade"} run tag @s[tag=yellowmissile] add YellowBlade

execute if data storage rocketriders:main spawn_egg{missile:"bullet"} run tag @s[tag=bluemissile] add BlueBull
execute if data storage rocketriders:main spawn_egg{missile:"bullet"} run tag @s[tag=yellowmissile] add YellowBull

execute if data storage rocketriders:main spawn_egg{missile:"broadsword"} run tag @s[tag=bluemissile] add BlueBroad
execute if data storage rocketriders:main spawn_egg{missile:"broadsword"} run tag @s[tag=yellowmissile] add YellowBroad

execute if data storage rocketriders:main spawn_egg{missile:"catapult"} run tag @s[tag=bluemissile] add BlueCata
execute if data storage rocketriders:main spawn_egg{missile:"catapult"} run tag @s[tag=yellowmissile] add YellowCata

execute if data storage rocketriders:main spawn_egg{missile:"chronullifier"} run tag @s[tag=bluemissile] add BlueNull
execute if data storage rocketriders:main spawn_egg{missile:"chronullifier"} run tag @s[tag=yellowmissile] add YellowNull

execute if data storage rocketriders:main spawn_egg{missile:"citadel"} run tag @s[tag=bluemissile] add BlueCitadel
execute if data storage rocketriders:main spawn_egg{missile:"citadel"} run tag @s[tag=yellowmissile] add YellowCitadel

execute if data storage rocketriders:main spawn_egg{missile:"duplex"} run tag @s[tag=bluemissile] add BlueDuplex
execute if data storage rocketriders:main spawn_egg{missile:"duplex"} run tag @s[tag=yellowmissile] add YellowDuplex

execute if data storage rocketriders:main spawn_egg{missile:"elder_guardian"} run tag @s[tag=bluemissile] add BlueGuard
execute if data storage rocketriders:main spawn_egg{missile:"elder_guardian"} run tag @s[tag=yellowmissile] add YellowGuard

execute if data storage rocketriders:main spawn_egg{missile:"gemini"} run tag @s[tag=bluemissile] add BlueGemi
execute if data storage rocketriders:main spawn_egg{missile:"gemini"} run tag @s[tag=yellowmissile] add YellowGemi

execute if data storage rocketriders:main spawn_egg{missile:"hurricane"} run tag @s[tag=bluemissile] add BlueHur
execute if data storage rocketriders:main spawn_egg{missile:"hurricane"} run tag @s[tag=yellowmissile] add YellowHur

execute if data storage rocketriders:main spawn_egg{missile:"hypersonic"} run tag @s[tag=bluemissile] add BlueHyper
execute if data storage rocketriders:main spawn_egg{missile:"hypersonic"} run tag @s[tag=yellowmissile] add YellowHyper

execute if data storage rocketriders:main spawn_egg{missile:"juggerbuster"} run tag @s[tag=bluemissile] add BlueJug
execute if data storage rocketriders:main spawn_egg{missile:"juggerbuster"} run tag @s[tag=yellowmissile] add YellowJug

execute if data storage rocketriders:main spawn_egg{missile:"lifter"} run tag @s[tag=bluemissile] add BlueLift
execute if data storage rocketriders:main spawn_egg{missile:"lifter"} run tag @s[tag=yellowmissile] add YellowLift

execute if data storage rocketriders:main spawn_egg{missile:"rifter"} run tag @s[tag=bluemissile] add BlueRift
execute if data storage rocketriders:main spawn_egg{missile:"rifter"} run tag @s[tag=yellowmissile] add YellowRift

execute if data storage rocketriders:main spawn_egg{missile:"slasher"} run tag @s[tag=bluemissile] add BlueSlash
execute if data storage rocketriders:main spawn_egg{missile:"slasher"} run tag @s[tag=yellowmissile] add YellowSlash

execute if data storage rocketriders:main spawn_egg{missile:"thunderbolt"} run tag @s[tag=bluemissile] add BlueBolt
execute if data storage rocketriders:main spawn_egg{missile:"thunderbolt"} run tag @s[tag=yellowmissile] add YellowBolt

execute if data storage rocketriders:main spawn_egg{missile:"tomatwo"} run tag @s[tag=bluemissile] add BlueToma
execute if data storage rocketriders:main spawn_egg{missile:"tomatwo"} run tag @s[tag=yellowmissile] add YellowToma

execute if data storage rocketriders:main spawn_egg{missile:"warhead"} run tag @s[tag=bluemissile] add BlueWar
execute if data storage rocketriders:main spawn_egg{missile:"warhead"} run tag @s[tag=yellowmissile] add YellowWar


# place missile
function items:spawnmissiles

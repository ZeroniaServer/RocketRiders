# List missiles that are forcibly enabled
execute if score $item_pool.missile/ant gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"ant",name:"A.N.T.",category:"normal"}
execute if score $item_pool.missile/blade gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"blade",name:"Blade",category:"normal"}
execute if score $item_pool.missile/catapult gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"catapult",name:"Catapult",category:"normal"}
execute if score $item_pool.missile/chronullifier gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"chronullifier",name:"Chronullifier",category:"normal"}
execute if score $item_pool.missile/citadel gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"citadel",name:"Citadel",category:"normal"}
execute if score $item_pool.missile/elder_guardian gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"elder_guardian",name:"Elder Guardian",category:"normal"}
execute if score $item_pool.missile/gemini gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"gemini",name:"Gemini",category:"normal"}
execute if score $item_pool.missile/lifter gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"lifter",name:"Lifter",category:"normal"}
execute if score $item_pool.missile/slasher gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"slasher",name:"Slasher",category:"normal"}
execute if score $item_pool.missile/tomatwo gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"tomatwo",name:"TomaTwo",category:"normal"}
execute if score $item_pool.missile/auxiliary gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"auxiliary",name:"Auxiliary",category:"heavy"}
execute if score $item_pool.missile/juggerbuster gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"juggerbuster",name:"Juggerbuster",category:"heavy"}
execute if score $item_pool.missile/rifter gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"rifter",name:"Rifter",category:"heavy"}
execute if score $item_pool.missile/warhead gamemode_components matches 1 run data modify storage rocketriders:main forced_settings.missiles append value {id:"warhead",name:"Warhead",category:"heavy"}

# If there are already 5 or more, stop here
execute store result score $missiles_force_enabled var if data storage rocketriders:main forced_settings.missiles[]
execute unless score $missiles_force_enabled var matches 0..4 run return 0

# Otherwise, randomly select 5, add them to the list, and disable the rest
execute if predicate servermode:non_lightning_missiles/ant_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"ant",name:"A.N.T.",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/blade_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"blade",name:"Blade",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/catapult_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"catapult",name:"Catapult",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/chronullifier_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"chronullifier",name:"Chronullifier",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/citadel_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"citadel",name:"Citadel",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/elder_guardian_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"elder_guardian",name:"Elder Guardian",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/gemini_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"gemini",name:"Gemini",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/lifter_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"lifter",name:"Lifter",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/slasher_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"slasher",name:"Slasher",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/tomatwo_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"tomatwo",name:"TomaTwo",category:"normal"}}
execute if predicate servermode:non_lightning_missiles/auxiliary_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"auxiliary",name:"Auxiliary",category:"heavy"}}
execute if predicate servermode:non_lightning_missiles/juggerbuster_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"juggerbuster",name:"Juggerbuster",category:"heavy"}}
execute if predicate servermode:non_lightning_missiles/rifter_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"rifter",name:"Rifter",category:"heavy"}}
execute if predicate servermode:non_lightning_missiles/warhead_in_pool run summon marker 0 0 0 {Tags:["non_lightning_missiles_pool"],data:{id:"warhead",name:"Warhead",category:"heavy"}}

execute if score $missiles_force_enabled var matches 0 as @e[limit=5,sort=random,x=0,type=marker,tag=non_lightning_missiles_pool] run data modify storage rocketriders:main forced_settings.missiles append from entity @s data
execute if score $missiles_force_enabled var matches 1 as @e[limit=4,sort=random,x=0,type=marker,tag=non_lightning_missiles_pool] run data modify storage rocketriders:main forced_settings.missiles append from entity @s data
execute if score $missiles_force_enabled var matches 2 as @e[limit=3,sort=random,x=0,type=marker,tag=non_lightning_missiles_pool] run data modify storage rocketriders:main forced_settings.missiles append from entity @s data
execute if score $missiles_force_enabled var matches 3 as @e[limit=2,sort=random,x=0,type=marker,tag=non_lightning_missiles_pool] run data modify storage rocketriders:main forced_settings.missiles append from entity @s data
execute if score $missiles_force_enabled var matches 4 as @e[limit=1,sort=random,x=0,type=marker,tag=non_lightning_missiles_pool] run data modify storage rocketriders:main forced_settings.missiles append from entity @s data
kill @e[x=0,type=marker,tag=non_lightning_missiles_pool]

execute if predicate servermode:non_lightning_missiles/ant_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"ant"}]} run scoreboard players set $disable_item/missile/ant config 1
execute if predicate servermode:non_lightning_missiles/blade_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"blade"}]} run scoreboard players set $disable_item/missile/blade config 1
execute if predicate servermode:non_lightning_missiles/catapult_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"catapult"}]} run scoreboard players set $disable_item/missile/catapult config 1
execute if predicate servermode:non_lightning_missiles/chronullifier_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"chronullifier"}]} run scoreboard players set $disable_item/missile/chronullifier config 1
execute if predicate servermode:non_lightning_missiles/citadel_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"citadel"}]} run scoreboard players set $disable_item/missile/citadel config 1
execute if predicate servermode:non_lightning_missiles/elder_guardian_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"elder_guardian"}]} run scoreboard players set $disable_item/missile/elder_guardian config 1
execute if predicate servermode:non_lightning_missiles/gemini_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"gemini"}]} run scoreboard players set $disable_item/missile/gemini config 1
execute if predicate servermode:non_lightning_missiles/lifter_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"lifter"}]} run scoreboard players set $disable_item/missile/lifter config 1
execute if predicate servermode:non_lightning_missiles/slasher_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"slasher"}]} run scoreboard players set $disable_item/missile/slasher config 1
execute if predicate servermode:non_lightning_missiles/tomatwo_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"tomatwo"}]} run scoreboard players set $disable_item/missile/tomatwo config 1
execute if predicate servermode:non_lightning_missiles/auxiliary_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"auxiliary"}]} run scoreboard players set $disable_item/missile/auxiliary config 1
execute if predicate servermode:non_lightning_missiles/juggerbuster_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"juggerbuster"}]} run scoreboard players set $disable_item/missile/juggerbuster config 1
execute if predicate servermode:non_lightning_missiles/rifter_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"rifter"}]} run scoreboard players set $disable_item/missile/rifter config 1
execute if predicate servermode:non_lightning_missiles/warhead_in_pool unless data storage rocketriders:main forced_settings{missiles:[{id:"warhead"}]} run scoreboard players set $disable_item/missile/warhead config 1

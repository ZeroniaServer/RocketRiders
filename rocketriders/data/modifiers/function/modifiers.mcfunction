####################################
## MODIFIERS: Any commands needed ##
## for Game Modifiers to function ##
####################################

##Instamine
execute if entity @s[tag=Instamine] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run attribute @s minecraft:block_break_speed modifier add rocketriders:instamine 10000000000000000000000000000000000000 add_multiplied_base
execute if entity @s[tag=Instamine] as @a[x=0,predicate=!custom:on_blue_or_yellow_team] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine
execute if entity @s[tag=!Instamine] as @a[x=0] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine

##Explosive
execute if predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on as @e[x=0,type=tnt] run data merge entity @s {explosion_power:5}
execute if predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:3}

##Sonar
execute unless entity @s[tag=Sonar] as @a[x=0,predicate=custom:on_blue_or_yellow_or_spectator_team] run effect give @s night_vision infinite 100 true
execute if entity @s[tag=Sonar] as @a[x=0,predicate=custom:on_blue_or_yellow_or_spectator_team] run effect clear @s night_vision
execute if entity @s[tag=Sonar] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect give @s glowing infinite 1 true
execute if entity @s[tag=Sonar] as @e[x=0,type=#arrows] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=snowball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=egg] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=firework_rocket] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=fireball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=dragon_fireball] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=#custom:potion] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=tnt] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=tnt_minecart] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=item] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,predicate=entities:type/vortex/body] run data merge entity @s {Glowing:1b}
execute if entity @s[tag=Sonar] as @e[x=0,type=armor_stand,tag=Bot] run data merge entity @s {Glowing:1b}

##Rocket Residers (anti-crossing behavior)
execute if predicate game:modifiers/rocket_residers/on if entity @s[tag=!GameEnd] as @a[x=0,team=Blue,predicate=custom:residers] run tag @s add crosser
execute if predicate game:modifiers/rocket_residers/on if entity @s[tag=!GameEnd] as @a[x=0,team=Yellow,predicate=custom:residers] run tag @s add crosser
#Hackfix: void works for crossers too
execute as @a[x=0,tag=crosser] run function game:void
tag @a[x=0] remove crosser

##Spam Click
execute if entity @s[tag=SpamClick] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run attribute @s minecraft:attack_speed base set 1000
execute if entity @s[tag=SpamClick] as @a[x=0,team=Lobby] run attribute @s minecraft:attack_speed base set 4
execute if entity @s[tag=!SpamClick] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run attribute @s minecraft:attack_speed base set 4

##Ninja Jump
execute if entity @s[tag=NinjaJump] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect give @s speed infinite 2 true
execute if entity @s[tag=NinjaJump] as @a[x=0,predicate=custom:on_blue_or_yellow_team] run effect give @s jump_boost infinite 2 true

##Hardcore
execute if predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:on_blue_or_yellow_team] if entity @s[tag=!hardcore] run function modifiers:hardcoreset
execute unless predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:on_blue_or_yellow_team] if entity @s[tag=hardcore] run function modifiers:hardcorereset

##Hobbits
execute if predicate game:modifiers/hobbits/on as @a[x=0,predicate=custom:on_blue_or_yellow_team,tag=!hobbit] run function modifiers:hobbit/set
execute if predicate game:modifiers/hobbits/on as @a[x=0,predicate=!custom:on_blue_or_yellow_team,tag=hobbit] run function modifiers:hobbit/reset
execute unless predicate game:modifiers/hobbits/on as @a[x=0,tag=hobbit] run function modifiers:hobbit/reset

#Clutter Collector
execute if predicate game:modifiers/clutter_collector/on as @e[type=tnt,predicate=custom:in_clutter_collection_zone,tag=!nosplode] run function modifiers:explosionpower/0
execute if predicate game:modifiers/clutter_collector/on unless predicate game:modifiers/explosive/on as @e[x=0,type=tnt,predicate=!custom:in_clutter_collection_zone,tag=nosplode] run function modifiers:explosionpower/4
execute if predicate game:modifiers/clutter_collector/on if predicate game:modifiers/explosive/on as @e[x=0,type=tnt,predicate=!custom:in_clutter_collection_zone,tag=nosplode] run function modifiers:explosionpower/5

execute if predicate game:modifiers/clutter_collector/on unless predicate game:modifiers/explosive/on as @e[x=0,type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:-1}
execute if predicate game:modifiers/clutter_collector/on if predicate game:modifiers/explosive/on as @e[x=0,type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:-3}
####################################
## MODIFIERS: Any commands needed ##
## for Game Modifiers to function ##
####################################

##Instamine
execute if entity @s[tag=Instamine] unless predicate game:match_over unless predicate game:game_paused as @a[x=0,predicate=custom:team/any_playing_team] run attribute @s minecraft:block_break_speed modifier add rocketriders:instamine 10000000000000000000000000000000000000 add_multiplied_base
execute if entity @s[tag=Instamine] unless predicate game:match_over unless predicate game:game_paused as @a[x=0,predicate=!custom:team/any_playing_team] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine
execute if entity @s[tag=Instamine] if predicate game:match_over as @a[x=0] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine
execute if entity @s[tag=Instamine] if predicate game:game_paused as @a[x=0] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine
execute unless entity @s[tag=Instamine] as @a[x=0] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine

##Explosive
execute if predicate game:modifiers/explosive/on unless predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:3}

##Sonar
execute if entity @s[tag=Sonar,predicate=!game:game_paused] run effect clear @a[x=0,predicate=custom:team/any_playing_team] night_vision
execute if entity @s[tag=Sonar,predicate=!game:game_paused] run effect give @a[x=0,predicate=custom:team/spectator] night_vision infinite 100 true
execute if entity @s[tag=Sonar,predicate=!game:game_paused] run effect give @a[x=0,predicate=custom:team/any_playing_team] darkness infinite 0 true
execute if entity @s[tag=Sonar,predicate=!game:game_paused] run effect give @a[x=0,predicate=custom:team/any_playing_team] glowing infinite 1 true
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=#arrows,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=snowball,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=ender_pearl,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=egg,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=firework_rocket,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=fireball,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=dragon_fireball,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=#custom:potion,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=tnt_minecart,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=item,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,predicate=entities:type/vortex/body,tag=!is_glowing] run function game:glowing/on
execute if entity @s[tag=Sonar,predicate=!game:game_paused] as @e[x=0,type=armor_stand,tag=Bot,tag=!is_glowing] run function game:glowing/on
execute unless entity @s[tag=Sonar,predicate=!game:game_paused] run effect give @a[x=0,predicate=custom:team/any_arena_team] night_vision infinite 100 true
execute unless entity @s[tag=Sonar,predicate=!game:game_paused] run effect clear @a[x=0,predicate=custom:team/any_arena_team] darkness

##Rocket Residers (anti-crossing behavior)
execute unless predicate game:game_paused if predicate game:modifiers/rocket_residers/on unless predicate game:match_over as @a[x=0,predicate=custom:team/blue,predicate=custom:residers] run tag @s add crosser
execute unless predicate game:game_paused if predicate game:modifiers/rocket_residers/on unless predicate game:match_over as @a[x=0,predicate=custom:team/yellow,predicate=custom:residers] run tag @s add crosser
#Hackfix: void works for crossers too
execute unless predicate game:game_paused as @a[x=0,tag=crosser] run function game:void
tag @a[x=0] remove crosser

##Spam Click
execute if entity @s[tag=SpamClick] as @a[x=0,predicate=custom:team/any_playing_team] run attribute @s minecraft:attack_speed base set 1000
execute if entity @s[tag=SpamClick] as @a[x=0,predicate=custom:team/lobby] run attribute @s minecraft:attack_speed base reset
execute if entity @s[tag=!SpamClick] as @a[x=0,predicate=custom:team/any_playing_team] run attribute @s minecraft:attack_speed base reset

##Ninja Jump
execute if entity @s[tag=NinjaJump] as @a[x=0,predicate=custom:team/any_playing_team] run effect give @s speed infinite 2 true
execute if entity @s[tag=NinjaJump] as @a[x=0,predicate=custom:team/any_playing_team] run effect give @s jump_boost infinite 2 true

##Hardcore
execute if predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/any_playing_team] if entity @s[tag=!hardcore] run function modifiers:hardcoreset
execute unless predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/any_playing_team] if entity @s[tag=hardcore] run function modifiers:hardcorereset

##Hobbits
execute if predicate game:modifiers/hobbits/on as @a[x=0,predicate=custom:team/any_playing_team,tag=!hobbit] run function modifiers:hobbit/set
execute if predicate game:modifiers/hobbits/on as @a[x=0,predicate=!custom:team/any_playing_team,tag=hobbit] run function modifiers:hobbit/reset
execute unless predicate game:modifiers/hobbits/on as @a[x=0,tag=hobbit] run function modifiers:hobbit/reset

#Clutter Collector
execute if predicate game:modifiers/clutter_collector/on as @e[x=0,type=fireball,tag=NormalFireball] run data merge entity @s {ExplosionPower:0}
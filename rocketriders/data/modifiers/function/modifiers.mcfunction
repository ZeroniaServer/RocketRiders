####################################
## MODIFIERS: Any commands needed ##
## for Game Modifiers to function ##
####################################

##Instamine
execute if predicate game:modifiers/instamine/on if predicate game:phase/match/play as @a[x=0,predicate=custom:team/any_playing_team] run attribute @s minecraft:block_break_speed modifier add rocketriders:instamine 10000000000000000000000000000000000000 add_multiplied_base
execute if predicate game:modifiers/instamine/on if predicate game:phase/match/play as @a[x=0,predicate=!custom:team/any_playing_team] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine
execute if predicate game:modifiers/instamine/on unless predicate game:phase/match/play as @a[x=0] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine
execute unless predicate game:modifiers/instamine/on as @a[x=0] run attribute @s minecraft:block_break_speed modifier remove rocketriders:instamine

##Sonar
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on run effect clear @a[x=0,predicate=custom:team/any_playing_team] night_vision
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on run effect give @a[x=0,predicate=custom:team/spectator] night_vision infinite 100 true
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on run effect give @a[x=0,predicate=custom:team/any_playing_team] darkness infinite 0 true
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on run effect give @a[x=0,predicate=custom:team/any_playing_team] glowing infinite 1 true
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=#arrows,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=snowball,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=ender_pearl,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=firework_rocket,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=fireball,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=dragon_fireball,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=#custom:potion,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=tnt_minecart,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=item,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,predicate=entities:type/vortex/body,tag=!is_glowing] run function game:glowing/on
execute unless predicate game:phase/match/paused if predicate game:modifiers/sonar/on as @e[x=0,type=armor_stand,tag=Bot,tag=!is_glowing] run function game:glowing/on
execute unless entity @s[predicate=game:modifiers/sonar/on,predicate=!game:phase/match/paused] run effect give @a[x=0,predicate=custom:team/any_arena_team] night_vision infinite 100 true
execute unless entity @s[predicate=game:modifiers/sonar/on,predicate=!game:phase/match/paused] run effect clear @a[x=0,predicate=custom:team/any_arena_team] darkness

##Rocket Residers (anti-crossing behavior)
execute unless predicate game:phase/match/paused if predicate game:modifiers/rocket_residers/on unless predicate game:phase/match/closing as @a[x=0,predicate=custom:team/blue,predicate=custom:residers] run tag @s add crosser
execute unless predicate game:phase/match/paused if predicate game:modifiers/rocket_residers/on unless predicate game:phase/match/closing as @a[x=0,predicate=custom:team/yellow,predicate=custom:residers] run tag @s add crosser
#Hackfix: void works for crossers too
execute unless predicate game:phase/match/paused as @a[x=0,tag=crosser] run function game:void
tag @a[x=0] remove crosser

##Spam Click
execute if predicate game:modifiers/spam_click/on as @a[x=0,predicate=custom:team/any_playing_team] run attribute @s minecraft:attack_speed base set 1000
execute if predicate game:modifiers/spam_click/on as @a[x=0,predicate=!custom:team/any_playing_team] run attribute @s minecraft:attack_speed base reset
execute unless predicate game:modifiers/spam_click/on as @a[x=0,predicate=custom:team/any_playing_team] run attribute @s minecraft:attack_speed base reset

##Ninja Jump
execute if predicate game:modifiers/ninja_jump/on as @a[x=0,predicate=custom:team/any_playing_team] run effect give @s speed infinite 2 true
execute if predicate game:modifiers/ninja_jump/on as @a[x=0,predicate=custom:team/any_playing_team] run effect give @s jump_boost infinite 2 true

##Hardcore
execute if predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/any_playing_team] if entity @s[tag=!hardcore] run function modifiers:hardcoreset
execute unless predicate game:modifiers/hardcore/on as @a[x=0,predicate=custom:team/any_playing_team] if entity @s[tag=hardcore] run function modifiers:hardcorereset

##Hobbits
execute if predicate game:modifiers/hobbits/on as @a[x=0,predicate=custom:team/any_playing_team,tag=!hobbit] run function modifiers:hobbit/set
execute if predicate game:modifiers/hobbits/on as @a[x=0,predicate=!custom:team/any_playing_team,tag=hobbit] run function modifiers:hobbit/reset
execute unless predicate game:modifiers/hobbits/on as @a[x=0,tag=hobbit] run function modifiers:hobbit/reset

##Rotting
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location
execute if predicate game:modifiers/rotting/on run function modifiers:rotting/check_random_location

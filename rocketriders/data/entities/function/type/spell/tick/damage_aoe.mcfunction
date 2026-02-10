execute on origin run tag @s add spell.origin

execute if score @s entity.spell.bee_cooldown matches 1.. run scoreboard players remove @s entity.spell.bee_cooldown 1

# Search for player
execute if predicate entities:origin_team/blue positioned ~-1.5 ~-1.5 ~-1.5 run tag @e[dx=2,dy=2,dz=2,type=#entities:spell_targets,predicate=custom:team/yellow,tag=!spell.origin,predicate=!custom:has_wither_effect] add spell.target_candidate
execute if predicate entities:origin_team/yellow positioned ~-1.5 ~-1.5 ~-1.5 run tag @e[dx=2,dy=2,dz=2,type=#entities:spell_targets,predicate=custom:team/blue,tag=!spell.origin,predicate=!custom:has_wither_effect] add spell.target_candidate
execute if predicate entities:origin_team/none positioned ~-1.5 ~-1.5 ~-1.5 run tag @e[dx=2,dy=2,dz=2,type=#entities:spell_targets,tag=!spell.origin,predicate=!custom:has_wither_effect] add spell.target_candidate
execute positioned ~-2 ~-2 ~-2 unless entity @e[limit=1,dx=3,dy=3,dz=3,type=#entities:spell_targets,tag=spell.target_candidate] run return run execute on origin run tag @s remove spell.origin
tag @n[distance=0..,type=#entities:spell_targets,tag=spell.target_candidate] add spell.target
tag @e[x=0,type=#entities:spell_targets] remove spell.target_candidate

# Bee cooldown
execute if score @s entity.spell.bee_cooldown matches 1.. if entity @e[limit=1,x=0,tag=spell.target,type=bee] run return run execute on origin run tag @s remove spell.origin
execute if entity @e[limit=1,x=0,tag=spell.target,type=bee] run scoreboard players set @s entity.spell.bee_cooldown 6

# If player is targetted, give them regeneration and face a new player
execute on origin run damage @e[limit=1,x=0,tag=spell.target] 1 minecraft:wither by @s
effect give @e[limit=1,x=0,type=#entities:spell_targets,tag=spell.target] wither 6 2 false
playsound minecraft:entity.wither_skeleton.step master @a[x=0,predicate=custom:in_arena] ~ ~ ~ 1 1.5
tag @e[x=0,type=#entities:spell_targets] remove spell.target
execute if predicate entities:origin_team/blue facing entity @e[limit=1,distance=..20,type=#entities:spell_targets,predicate=custom:team/yellow,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes run rotate @s ~ ~
execute if predicate entities:origin_team/yellow facing entity @e[limit=1,distance=..20,type=#entities:spell_targets,predicate=custom:team/blue,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes run rotate @s ~ ~
execute if predicate entities:origin_team/none facing entity @e[limit=1,distance=..20,type=#entities:spell_targets,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes run rotate @s ~ ~

execute on origin run tag @s remove spell.origin

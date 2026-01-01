execute on origin run tag @s add spell.origin

# Search for player
execute if predicate entities:origin_team/blue positioned ~-1.5 ~-1.5 ~-1.5 run tag @a[dx=3,dy=3,dz=3,predicate=custom:team/yellow,tag=!spell.origin,predicate=!custom:has_wither_effect] add spell.target_candidate
execute if predicate entities:origin_team/yellow positioned ~-1.5 ~-1.5 ~-1.5 run tag @a[dx=3,dy=3,dz=3,predicate=custom:team/blue,tag=!spell.origin,predicate=!custom:has_wither_effect] add spell.target_candidate
execute if predicate entities:origin_team/none positioned ~-1.5 ~-1.5 ~-1.5 run tag @a[dx=3,dy=3,dz=3,tag=!spell.origin,predicate=!custom:has_wither_effect] add spell.target_candidate
execute unless entity @a[limit=1,x=0,tag=spell.target_candidate] run return run execute on origin run tag @s remove spell.origin
tag @p[distance=0..,tag=spell.target_candidate] add spell.target
tag @a[x=0] remove spell.target_candidate

# If player is targetted, give them regeneration and face a new player
execute on origin run damage @a[limit=1,x=0,tag=spell.target] 1 minecraft:wither by @s
effect give @a[limit=1,x=0,tag=spell.target] wither 6 2 false
playsound minecraft:entity.wither_skeleton.step master @a[x=0,predicate=custom:in_arena] ~ ~ ~ 1 1.5
tag @a[x=0,tag=spell.target] remove spell.target
execute if predicate entities:origin_team/blue facing entity @p[distance=..20,predicate=custom:team/yellow,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes run rotate @s ~ ~
execute if predicate entities:origin_team/yellow facing entity @p[distance=..20,predicate=custom:team/blue,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes run rotate @s ~ ~
execute if predicate entities:origin_team/none facing entity @p[distance=..20,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes run rotate @s ~ ~

execute on origin run tag @s remove spell.origin

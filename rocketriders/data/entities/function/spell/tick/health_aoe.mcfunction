execute on origin run tag @s add spell.origin

# Search for player
execute if predicate entities:origin_team/blue positioned ~-2.5 ~-2.5 ~-2.5 run tag @a[dx=4,dy=4,dz=4,predicate=custom:team/blue,tag=!spell.origin,predicate=!custom:has_regeneration_effect] add spell.target_candidate
execute if predicate entities:origin_team/yellow positioned ~-2.5 ~-2.5 ~-2.5 run tag @a[dx=4,dy=4,dz=4,predicate=custom:team/yellow,tag=!spell.origin,predicate=!custom:has_regeneration_effect] add spell.target_candidate
execute unless entity @a[limit=1,x=0,tag=spell.target_candidate] run return run execute on origin run tag @s remove spell.origin
tag @p[distance=0..,tag=spell.target_candidate] add spell.target
tag @a[x=0] remove spell.target_candidate

# If player is targetted, give them regeneration and face a new player
effect give @a[limit=1,x=0,tag=spell.target] regeneration 5 3 false
playsound minecraft:block.brewing_stand.brew master @a[x=0,predicate=custom:in_arena] ~ ~ ~ 1 2
tag @a[x=0,tag=spell.target] remove spell.target
execute if predicate entities:origin_team/blue facing entity @p[distance=..20,predicate=custom:team/blue,tag=!spell.origin,predicate=!custom:has_regeneration_effect] eyes run rotate @s ~ ~
execute if predicate entities:origin_team/yellow facing entity @p[distance=..20,predicate=custom:team/yellow,tag=!spell.origin,predicate=!custom:has_regeneration_effect] eyes run rotate @s ~ ~

execute on origin run tag @s remove spell.origin

execute on origin run tag @s add spell.origin

# Search for player
execute if predicate entities:origin_team/blue run tag @p[distance=..2,team=Blue,tag=!spell.origin,predicate=!custom:has_regeneration_effect] add spell.target
execute if predicate entities:origin_team/yellow run tag @p[distance=..2,team=Yellow,tag=!spell.origin,predicate=!custom:has_regeneration_effect] add spell.target
execute unless entity @a[limit=1,x=0,tag=spell.target] run return run execute on origin run tag @s remove spell.origin

# If player is targetted, give them regeneration and face a new player
effect give @a[limit=1,x=0,tag=spell.target] regeneration 5 2 false
playsound minecraft:block.brewing_stand.brew master @a[x=0,predicate=custom:belowroof] ~ ~ ~ 1 2
tag @a[limit=1,x=0,tag=spell.target] remove spell.target
execute if predicate entities:origin_team/blue facing entity @p[distance=..20,team=Blue,tag=!spell.origin,predicate=!custom:has_regeneration_effect] eyes run rotate @s ~ ~
execute if predicate entities:origin_team/yellow facing entity @p[distance=..20,team=Yellow,tag=!spell.origin,predicate=!custom:has_regeneration_effect] eyes run rotate @s ~ ~

execute on origin run tag @s remove spell.origin

execute on origin run tag @s add spell.origin

# Search for player
execute if predicate entities:origin_team/blue run tag @p[distance=..2,team=Yellow,tag=!spell.origin,predicate=!custom:has_wither_effect] add spell.target
execute if predicate entities:origin_team/yellow run tag @p[distance=..2,team=Blue,tag=!spell.origin,predicate=!custom:has_wither_effect] add spell.target
execute if predicate entities:origin_team/none run tag @p[distance=..2,tag=!spell.origin,predicate=!custom:has_wither_effect] add spell.target
execute unless entity @a[limit=1,x=0,tag=spell.target] run return run execute on origin run tag @s remove spell.origin

# If player is targetted, give them regeneration and face a new player
execute on origin run damage @a[limit=1,x=0,tag=spell.target] 1 minecraft:wither by @s
effect give @a[limit=1,x=0,tag=spell.target] wither 4 2 false
playsound minecraft:entity.wither_skeleton.step master @a[predicate=custom:belowroof] ~ ~ ~ 1 1.5
tag @a[limit=1,x=0,tag=spell.target] remove spell.target
execute if predicate entities:origin_team/blue facing entity @p[distance=..20,team=Yellow,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes run rotate @s ~ ~
execute if predicate entities:origin_team/yellow facing entity @p[distance=..20,team=Blue,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes run rotate @s ~ ~
execute if predicate entities:origin_team/none facing entity @p[distance=..20,tag=!spell.origin,predicate=!custom:has_wither_effect] eyes run rotate @s ~ ~

execute on origin run tag @s remove spell.origin

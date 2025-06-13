##Support function for arrow pickup
tag @a[x=0] remove fullOffhand
execute as @a[x=0] if items entity @s weapon.offhand * run tag @s add fullOffhand
execute if entity @s[tag=!given] as @p[team=!Spectator,distance=..2,tag=!fullOffhand] if items entity @s contents arrow[count~{max:63}] run return run tag @s add fullOffhand
execute if entity @s[tag=!given] if predicate game:game_started run loot replace entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand loot items:misc/arrow
execute if entity @s[tag=!given] unless predicate game:game_started run loot replace entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand loot items:misc/arrow_lobby
execute if entity @s[tag=!given] as @p[team=!Spectator,distance=..2,tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
tag @s add given
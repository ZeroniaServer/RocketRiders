##Overhauls default arrow pickup system to give custom named arrows
#Pickup conditions
execute as @e[x=0,type=#arrows,nbt={pickup:2b}] run tag @s add infinity
execute as @e[x=0,type=#arrows,nbt={pickup:1b},tag=!infinity] run data merge entity @s {pickup:0}
scoreboard players add @e[x=0,type=#arrows,nbt={inGround:1b},tag=!pickup] arrowtime 1
scoreboard players add @e[x=0,type=#arrows,tag=pickup] arrowtime 1
execute as @a[x=0,team=!Spectator] at @s as @e[type=#arrows,scores={arrowtime=10..},nbt={inGround:1b},tag=!infinity,limit=1,distance=..2,sort=nearest] unless items entity @s contents tipped_arrow run tag @s add pickup

#Move towards player
execute as @e[x=0,type=#arrows,tag=pickup,tag=!infinity] at @s at @p[team=!Spectator,distance=..2] run tp @s ~ ~ ~
scoreboard players add $arrowanim arrowtime 1
execute if score $arrowanim arrowtime matches 1 as @e[x=0,type=#arrows,tag=pickup,nbt={inGround:1b}] run data merge entity @s {Air:1}
execute if score $arrowanim arrowtime matches 2 as @e[x=0,type=#arrows,tag=pickup,nbt={inGround:1b}] run data merge entity @s {Air:0}
execute if score $arrowanim arrowtime matches 2 run scoreboard players set $arrowanim arrowtime 0

#Despawn after 1 minute on ground or upon pickup
kill @e[x=0,type=#arrows,scores={arrowtime=1200..}]

#Cancel pickup conditions
scoreboard players set @e[x=0,type=#arrows,nbt={inGround:0b}] arrowtime 0
execute as @e[x=0,type=#arrows,scores={arrowtime=..9}] run tag @s remove pickup

#Give arrow
execute as @a[x=0,team=!Spectator,tag=!fullOffhand] at @s as @e[type=#arrows,tag=pickup,tag=!given,nbt={inGround:1b},tag=!infinity,limit=1,distance=..2,sort=nearest] unless items entity @s contents tipped_arrow at @s run function everytick:arrow_replace
execute unless predicate game:game_started as @e[x=0,type=#arrows,tag=pickup,tag=!given,nbt={inGround:1b},tag=!infinity] unless items entity @s contents tipped_arrow at @s run loot give @p[team=!Spectator,distance=..2,tag=fullOffhand] loot items:misc/arrow_lobby
execute if predicate game:game_started as @e[x=0,type=#arrows,tag=pickup,tag=!given,nbt={inGround:1b},tag=!infinity] unless items entity @s contents tipped_arrow at @s run loot give @p[team=!Spectator,distance=..2,tag=fullOffhand] loot items:misc/arrow
tag @a[x=0] remove fullOffhand
execute as @a[x=0] if items entity @s weapon.offhand * run tag @s add fullOffhand

#Schedule arrow for despawn
scoreboard players set @e[x=0,type=#arrows,tag=pickup] arrowtime 1199
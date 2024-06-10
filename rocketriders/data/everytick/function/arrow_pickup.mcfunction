##Overhauls default arrow pickup system to give custom named arrows
#Pickup conditions
execute as @e[x=0,type=arrow,nbt={pickup:2b}] run tag @s add infinity
execute as @e[x=0,type=arrow,nbt={pickup:1b},tag=!infinity] run data merge entity @s {pickup:0}
scoreboard players add @e[x=0,type=arrow,nbt={inGround:1b},tag=!pickup] arrowtime 1
scoreboard players add @e[x=0,type=arrow,tag=pickup] arrowtime 1
execute as @a[x=0,team=!Spectator] at @s as @e[type=arrow,scores={arrowtime=10..},nbt={inGround:1b},tag=!infinity,limit=1,distance=..2,sort=nearest] unless data entity @s custom_potion_effects run tag @s add pickup

#Move towards player
execute as @e[x=0,type=arrow,tag=pickup,tag=!infinity] at @s at @p[team=!Spectator,distance=..2] run tp @s ~ ~ ~
scoreboard players add $arrowanim arrowtime 1
execute if score $arrowanim arrowtime matches 1 as @e[x=0,type=arrow,tag=pickup,nbt={inGround:1b}] run data merge entity @s {Air:1}
execute if score $arrowanim arrowtime matches 2 as @e[x=0,type=arrow,tag=pickup,nbt={inGround:1b}] run data merge entity @s {Air:0}
execute if score $arrowanim arrowtime matches 2 run scoreboard players set $arrowanim arrowtime 0

#Despawn after 1 minute on ground or upon pickup
kill @e[x=0,type=arrow,scores={arrowtime=1200..}]

#Cancel pickup conditions
scoreboard players set @e[x=0,type=arrow,nbt={inGround:0b}] arrowtime 0
execute as @e[x=0,type=arrow,scores={arrowtime=..9}] run tag @s remove pickup

#Give arrow
execute as @a[x=0,team=!Spectator,tag=!fullOffhand] at @s as @e[x=0,type=arrow,tag=pickup,tag=!given,nbt={inGround:1b},tag=!infinity,limit=1,distance=..2,sort=nearest] unless data entity @s custom_potion_effects at @s run function everytick:arrow_replace
execute if entity @s[tag=!GameStarted] as @e[x=0,type=arrow,tag=pickup,tag=!given,nbt={inGround:1b},tag=!infinity] unless data entity @s custom_potion_effects at @s run give @p[team=!Spectator,distance=..2,tag=fullOffhand] minecraft:arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}',custom_data={Lobby:1b}]
execute if entity @s[tag=GameStarted] as @e[x=0,type=arrow,tag=pickup,tag=!given,nbt={inGround:1b},tag=!infinity] unless data entity @s custom_potion_effects at @s run give @p[team=!Spectator,distance=..2,tag=fullOffhand] minecraft:arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}']

#Schedule arrow for despawn
scoreboard players set @e[x=0,type=arrow,tag=pickup] arrowtime 1199
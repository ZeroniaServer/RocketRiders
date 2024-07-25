##Support function for arrow pickup
tag @a[x=0] remove fullOffhand
execute as @a[x=0] if items entity @s weapon.offhand * run tag @s add fullOffhand
execute if entity @s[tag=!given] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameStarted] run item replace entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand with minecraft:arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}',custom_data={Droppable:1b}] 1
execute if entity @s[tag=!given] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameStarted] run item replace entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand with minecraft:arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}',custom_data={Lobby:1b,Droppable:1b}] 1
execute if entity @s[tag=!given] as @p[team=!Spectator,distance=..2,tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
tag @s add given
#Support function for arrow pickup
execute as @s[tag=!given] if entity @e[tag=Selection,type=armor_stand,tag=GameStarted] run replaceitem entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'}} 1
execute as @s[tag=!given] if entity @e[tag=Selection,type=armor_stand,tag=!GameStarted] run replaceitem entity @p[team=!Spectator,distance=..2,tag=!fullOffhand] weapon.offhand arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":"true","bold":"true"}'},Lobby:1b} 1
execute as @s[tag=!given] as @p[team=!Spectator,distance=..2,tag=!fullOffhand] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2
tag @s add given
tag @a[nbt={Inventory:[{Slot:-106b}]}] add fullOffhand
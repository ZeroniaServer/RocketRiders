##Overhauls default arrow pickup system to give custom named arrows
#Pickup conditions
execute as @e[type=arrow] run data merge entity @s {pickup:0}
scoreboard players add @e[type=arrow,nbt={inGround:1b},tag=!pickup] arrowtime 1
scoreboard players add @e[type=arrow,tag=pickup] arrowtime 1
execute as @e[type=arrow,scores={arrowtime=10..},nbt={inGround:1b}] unless data entity @s CustomPotionEffects at @s if entity @p[team=!Spectator,distance=..2] run tag @s add pickup

#Move towards player
execute as @e[type=arrow,tag=pickup] at @s at @p[team=!Spectator,distance=..2] run tp @s ~ ~ ~
scoreboard players add $arrowanim arrowtime 1
execute if score $arrowanim arrowtime matches 1 as @e[type=arrow,tag=pickup,nbt={inGround:1b}] run data merge entity @s {Air:1}
execute if score $arrowanim arrowtime matches 2 as @e[type=arrow,tag=pickup,nbt={inGround:1b}] run data merge entity @s {Air:0}
execute if score $arrowanim arrowtime matches 2 run scoreboard players set $arrowanim arrowtime 0

#Despawn after 1 minute on ground or upon pickup
kill @e[type=arrow,scores={arrowtime=1200..}]

#Cancel pickup conditions
scoreboard players set @e[type=arrow,nbt={inGround:0b}] arrowtime 0
execute as @e[type=arrow,scores={arrowtime=..9}] run tag @s remove pickup

#Give arrow
execute as @s[tag=!GameStarted] as @e[type=arrow,tag=pickup,nbt={inGround:1b}] unless data entity @s CustomPotionEffects at @s run give @p[team=!Spectator,distance=..2] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b}
execute as @s[tag=GameStarted] as @e[type=arrow,tag=pickup,nbt={inGround:1b}] unless data entity @s CustomPotionEffects at @s run give @p[team=!Spectator,distance=..2] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}}

#Schedule arrow for despawn
scoreboard players set @e[type=arrow,tag=pickup] arrowtime 1199
##Overhauls default arrow pickup system to give custom named arrows
#Pickup conditions
execute as @e[type=arrow] run data merge entity @s {pickup:0}
scoreboard players add @e[type=arrow,nbt={inGround:1b}] arrowtime 1
execute as @e[type=arrow,scores={arrowtime=10..}] unless data entity @s CustomPotionEffects at @s if entity @p[team=!Spectator,distance=..2] run tag @s add pickup

#Give arrow
execute as @e[type=arrow,tag=pickup] at @s run tp @s @p[team=!Spectator,distance=..2]
execute as @s[tag=!GameStarted] as @e[type=arrow,tag=pickup] unless data entity @s CustomPotionEffects at @s run give @p[team=!Spectator,distance=..2] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"},Lobby:1b}
execute as @s[tag=GameStarted] as @e[type=arrow,tag=pickup] unless data entity @s CustomPotionEffects at @s run give @p[team=!Spectator,distance=..2] arrow{display:{Name:"{\"text\":\"Arrow\",\"color\":\"light_purple\",\"italic\":\"true\",\"bold\":\"true\"}"}}
kill @e[type=arrow,tag=pickup]

#Despawn after 1 minute
kill @e[type=arrow,scores={arrowtime=1200..}]
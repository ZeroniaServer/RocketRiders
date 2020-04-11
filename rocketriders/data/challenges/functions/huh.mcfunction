#Huh?
execute as @a[tag=!CompletedHuh] at @s if entity @e[type=chicken,distance=..4,limit=1] run advancement grant @s only challenges:rrachievements/huh
execute as @a[tag=!CompletedHuh,scores={respawn=1..}] at @s if entity @e[type=chicken,distance=..4,limit=1] run tag @s add CompletedHuh
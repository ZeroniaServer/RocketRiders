#fire within me
execute as @a[tag=!CompletedFireWithin] at @s unless entity @s[nbt={Fire:-20s}] run execute if entity @s[scores={PlayerKills=1..}] run advancement grant @s only challenges:rrachievements/fire_within_me
execute as @a[tag=!CompletedFireWithin] at @s unless entity @s[nbt={Fire:-20s}] run execute if entity @s[scores={PlayerKills=1..}] run scoreboard players add @s XP 20
execute as @a[tag=!CompletedFireWithin] at @s unless entity @s[nbt={Fire:-20s}] run execute if entity @s[scores={PlayerKills=1..}] run tag @s add CompletedFireWithin
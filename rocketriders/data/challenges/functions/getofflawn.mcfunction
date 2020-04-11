#get off my lawn
execute as @a[team=Yellow,tag=!CompletedLawn,scores={PlayerKills=1..}] at @s if entity @a[team=Blue,distance=..4,limit=1] if entity @e[tag=YellowPlatform,distance=..4,limit=1] run advancement grant @s only challenges:rrachievements/get_off_lawn
execute as @a[team=Yellow,tag=!CompletedLawn,scores={PlayerKills=1..}] at @s if entity @a[team=Blue,distance=..4,limit=1] if entity @e[tag=YellowPlatform,distance=..4,limit=1] run scoreboard players add @s XP 30
execute as @a[team=Yellow,tag=!CompleteLawn,scores={PlayerKills=1..}] at @s if entity @a[team=Blue,distance=..4,limit=1] if entity @e[tag=YellowPlatform,distance=..4,limit=1] run tag @s add CompletedLawn

execute as @a[team=Blue,tag=!CompletedLawn,scores={PlayerKills=1..}] at @s if entity @a[team=Yellow,distance=..4,limit=1] if entity @e[tag=BluePlatform,distance=..4,limit=1] run advancement grant @s only challenges:bronzeachievements/get_off_lawn
execute as @a[team=Blue,tag=!CompletedLawn,scores={PlayerKills=1..}] at @s if entity @a[team=Yellow,distance=..4,limit=1] if entity @e[tag=BluePlatform,distance=..4,limit=1] run scoreboard players add @s XP 30
execute as @a[team=Blue,tag=!CompletedLawn,scores={PlayerKills=1..}] at @s if entity @a[team=Yellow,distance=..4,limit=1] if entity @e[tag=BluePlatform,distance=..4,limit=1] run tag @s add CompletedLawn
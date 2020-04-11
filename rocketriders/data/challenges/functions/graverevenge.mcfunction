#revenge from the grave
execute as @a[tag=!CompletedRevenge,scores={respawn=1..}] at @s if entity @s[scores={PlayerKills=1..}] run advancement grant @s only challenges:rrachievements/revenge_from_grave
execute as @a[tag=!CompletedRevenge,scores={respawn=1..}] at @s if entity @s[scores={PlayerKills=1..}] run scoreboard players add @s XP 15
execute as @a[tag=!CompletedRevenge,scores={respawn=1..}] at @s if entity @s[scores={PlayerKills=1..}] run tag @s add CompletedRevenge
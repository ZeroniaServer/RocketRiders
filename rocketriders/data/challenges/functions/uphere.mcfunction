execute as @a[team=Blue,tag=!CompletedUphere] at @s if entity @e[type=tnt,distance=..7] run tag @s add TNTNear
execute as @a[team=Yellow,tag=!CompletedUphere] at @s if entity @e[type=tnt,distance=..7] run tag @s add TNTNear
scoreboard players add @a[tag=TNTNear] SeeUphere 1
execute as @a[tag=!CompletedUphere,tag=TNTNear,scores={SeeUphere=3..200}] at @s if entity @s[y=110,dy=200] run advancement grant @s only challenges:rrachievements/uphere
execute as @a[tag=!CompletedUphere,tag=TNTNear,scores={SeeUphere=3..200}] at @s if entity @s[y=110,dy=200] run scoreboard players add @s XP 30
execute as @a[tag=!CompletedUphere,tag=TNTNear,scores={SeeUphere=3..200}] at @s if entity @s[y=110,dy=200] run tag @s add CompletedUphere
execute as @a[tag=TNTNear,scores={SeeUphere=201..}] at @s unless entity @s[y=110,dy=200] run tag @s remove TNTNear
scoreboard players reset @a[tag=!TNTNear] SeeUphere
tag @a[tag=CompletedUphere] remove TNTNear
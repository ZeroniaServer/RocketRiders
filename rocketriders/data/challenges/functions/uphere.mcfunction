execute as @a[team=Blue,tag=!CompletedUphere,tag=YellowNovaAttach] at @s run tag @s add TNTNear
execute as @a[team=Yellow,tag=!CompletedUphere,tag=BlueNovaAttach] at @s run tag @s add TNTNear
execute as @a[tag=!CompletedUphere,tag=TNTNear] run advancement grant @s only challenges:rrachievements/uphere
execute as @a[tag=!CompletedUphere,tag=TNTNear] at @s run scoreboard players add @s XP 30
execute as @a[tag=!CompletedUphere,tag=TNTNear] at @s run tag @s add CompletedUphere
execute as @a[tag=TNTNear] at @s run tag @s remove TNTNear
tag @a[tag=CompletedUphere] remove TNTNear
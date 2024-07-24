advancement revoke @s only items:placemissile
tag @s add placer
execute as @e[x=0,type=marker,tag=missile,limit=1] at @s unless block ~ ~ ~ #custom:nonsolid run tp @s ~ ~1 ~
execute as @e[x=0,type=marker,tag=missile,limit=1] at @s run function items:spawnmissiles
tag @s remove placer
advancement revoke @s only items:placeobshield
tag @s add placer
execute if entity @s[team=Yellow] as @e[x=0,type=marker,tag=YellowObshield,limit=1] run function items:spawnobshield
execute if entity @s[team=Blue] as @e[x=0,type=marker,tag=BlueObshield,limit=1] run function items:spawnobshield
tag @s remove placer
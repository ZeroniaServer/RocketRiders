advancement revoke @s only items:placeobshield
tag @s add placer
execute if entity @s[predicate=custom:team/yellow] as @e[x=0,type=marker,tag=YellowObshield,limit=1] run function items:spawnobshield
execute if entity @s[predicate=custom:team/blue] as @e[x=0,type=marker,tag=BlueObshield,limit=1] run function items:spawnobshield
tag @s remove placer
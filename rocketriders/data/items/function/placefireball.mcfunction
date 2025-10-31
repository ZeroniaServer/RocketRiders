advancement revoke @s only items:placefireball
tag @s add placer
execute if entity @s[predicate=custom:team/yellow] as @e[x=0,type=marker,tag=YellowFireball,limit=1] run function items:spawnfireball
execute if entity @s[predicate=custom:team/blue] as @e[x=0,type=marker,tag=BlueFireball,limit=1] run function items:spawnfireball
tag @s remove placer
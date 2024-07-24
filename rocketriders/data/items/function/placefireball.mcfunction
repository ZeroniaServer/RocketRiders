advancement revoke @s only items:placefireball
tag @s add placer
execute if entity @s[team=Yellow] as @e[x=0,type=marker,tag=YellowFireball,limit=1] run function items:spawnfireball
execute if entity @s[team=Blue] as @e[x=0,type=marker,tag=BlueFireball,limit=1] run function items:spawnfireball
tag @s remove placer
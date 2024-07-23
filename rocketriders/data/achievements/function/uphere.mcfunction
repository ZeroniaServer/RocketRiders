##I Can See My House Up Here achievement
##Detects if player is affected by a Nova Rocket
tag @s[team=Blue,tag=YellowNovaAttach] add TNTNear
tag @s[team=Yellow,tag=BlueNovaAttach] add TNTNear
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=onlyBlue] run tag @s[team=Blue,tag=BlueNovaAttach] add TNTNear
execute if entity @s[tag=TNTNear] run advancement grant @s only achievements:rr_challenges/uphere
tag @s[tag=TNTNear] remove TNTNear
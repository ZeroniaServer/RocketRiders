##I Can See My House Up Here achievement
##Detects if player is affected by a Nova Rocket
tag @s[team=Blue,tag=YellowNovaAttach] add TNTNear
tag @s[team=Yellow,tag=BlueNovaAttach] add TNTNear
execute if entity @e[tag=Selection,tag=onlyBlue,type=armor_stand] run tag @s[team=Blue,tag=BlueNovaAttach] add TNTNear
execute as @s[tag=TNTNear] run advancement grant @s only achievements:rr_challenges/uphere
tag @s[tag=TNTNear] remove TNTNear
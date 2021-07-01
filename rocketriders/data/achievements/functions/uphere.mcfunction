##I Can See My House Up Here achievement
##Detects if player is affected by a Nova Rocket

tag @a[team=Blue,tag=YellowNovaAttach] add TNTNear
tag @a[team=Yellow,tag=BlueNovaAttach] add TNTNear
execute if entity @e[tag=Selection,tag=onlyBlue,type=armor_stand] run tag @a[team=Blue,tag=BlueNovaAttach] add TNTNear
execute as @a[tag=TNTNear] run advancement grant @s only achievements:rr_challenges/uphere
tag @a[tag=TNTNear] remove TNTNear
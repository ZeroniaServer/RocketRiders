scoreboard players reset @a[x=0,team=Blue] HolyLand
advancement revoke @a[x=0,team=Blue,tag=!HolyLand] only achievements:rr_challenges/holyland
scoreboard players add @a[x=0,team=Yellow] HolyLand 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},tag=!realms] as @a[x=0,team=Yellow,scores={HolyLand=1..}] run advancement grant @s only achievements:rr_challenges/holyland 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},tag=!realms] as @a[x=0,team=Yellow,scores={HolyLand=2..}] run advancement grant @s only achievements:rr_challenges/holyland 2
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},tag=!realms] as @a[x=0,team=Yellow,scores={HolyLand=3..}] run advancement grant @s only achievements:rr_challenges/holyland 3
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},tag=!realms] as @a[x=0,team=Yellow,scores={HolyLand=4..}] run advancement grant @s only achievements:rr_challenges/holyland 4
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=-1..0},tag=!realms] as @a[x=0,team=Yellow,scores={HolyLand=5..}] run advancement grant @s only achievements:rr_challenges/holyland 5
execute as @a[x=0,team=Yellow,scores={HolyLand=5..}] run scoreboard players reset @s HolyLand
function game:winblue
scoreboard players reset @a[x=0,team=Blue] HolyLand
scoreboard players add @a[x=0,team=Yellow] HolyLand 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={servermode=0},tag=!SMCustom] as @a[x=0,team=Yellow,scores={HolyLand=5..}] run advancement grant @s only achievements:rr_challenges/holyland
execute as @a[x=0,team=Yellow,scores={HolyLand=5..}] run scoreboard players reset @s HolyLand
function game:winblue
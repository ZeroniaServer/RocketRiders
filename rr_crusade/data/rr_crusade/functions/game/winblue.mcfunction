scoreboard players reset @a[predicate=custom:indimension,team=Blue] HolyLand
scoreboard players add @a[predicate=custom:indimension,team=Yellow] HolyLand 1
execute if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,team=Yellow,scores={HolyLand=5..}] run advancement grant @s only achievements:rr_challenges/holyland
execute as @a[predicate=custom:indimension,team=Yellow,scores={HolyLand=5..}] run scoreboard players reset @s HolyLand
function game:winblue
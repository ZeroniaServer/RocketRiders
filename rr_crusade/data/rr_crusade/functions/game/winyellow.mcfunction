scoreboard players reset @a[team=Yellow] HolyLand
scoreboard players add @a[team=Blue] HolyLand 1
execute if entity @e[tag=Selection,scores={servermode=0},tag=!SMCustom] as @a[team=Blue,scores={HolyLand=5..}] run advancement grant @s only achievements:rr_challenges/holyland
execute as @a[team=Blue,scores={HolyLand=5..}] run scoreboard players reset @s HolyLand
function game:winyellow
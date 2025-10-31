scoreboard players reset @a[x=0,predicate=custom:team/blue] HolyLand
advancement revoke @a[x=0,predicate=custom:team/blue,tag=!HolyLand] only achievements:rr_challenges/holyland
scoreboard players add @a[x=0,predicate=custom:team/yellow] HolyLand 1
execute if predicate rr:has_achievements as @a[x=0,predicate=custom:team/yellow,scores={HolyLand=1..}] run advancement grant @s only achievements:rr_challenges/holyland 1
execute if predicate rr:has_achievements as @a[x=0,predicate=custom:team/yellow,scores={HolyLand=2..}] run advancement grant @s only achievements:rr_challenges/holyland 2
execute if predicate rr:has_achievements as @a[x=0,predicate=custom:team/yellow,scores={HolyLand=3..}] run advancement grant @s only achievements:rr_challenges/holyland 3
execute if predicate rr:has_achievements as @a[x=0,predicate=custom:team/yellow,scores={HolyLand=4..}] run advancement grant @s only achievements:rr_challenges/holyland 4
execute if predicate rr:has_achievements as @a[x=0,predicate=custom:team/yellow,scores={HolyLand=5..}] run advancement grant @s only achievements:rr_challenges/holyland 5
execute as @a[x=0,predicate=custom:team/yellow,scores={HolyLand=5..}] run scoreboard players reset @s HolyLand
function game:winblue
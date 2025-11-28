scoreboard players reset @a[x=0,predicate=custom:team/yellow] HolyLand
advancement revoke @a[x=0,predicate=custom:team/yellow,tag=!HolyLand] only achievements:rr_challenges/holyland
scoreboard players add @a[x=0,predicate=custom:team/blue] HolyLand 1
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/blue,scores={HolyLand=1..}] run advancement grant @s only achievements:rr_challenges/holyland 1
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/blue,scores={HolyLand=2..}] run advancement grant @s only achievements:rr_challenges/holyland 2
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/blue,scores={HolyLand=3..}] run advancement grant @s only achievements:rr_challenges/holyland 3
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/blue,scores={HolyLand=4..}] run advancement grant @s only achievements:rr_challenges/holyland 4
execute if predicate game:achievements_can_be_awarded as @a[x=0,predicate=custom:team/blue,scores={HolyLand=5..}] run advancement grant @s only achievements:rr_challenges/holyland 5
execute as @a[x=0,predicate=custom:team/blue,scores={HolyLand=5..}] run scoreboard players reset @s HolyLand
function game:winyellow
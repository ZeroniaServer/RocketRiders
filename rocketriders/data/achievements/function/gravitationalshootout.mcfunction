##Gravitational Shootout achievement
##Utilizes an advancement for detecting when a player shoots another player in midair
execute if score @s gravShot matches 1.. run advancement grant @s only achievements:rr_challenges/gravitational_shootout 1
execute if score @s gravShot matches 2.. run advancement grant @s only achievements:rr_challenges/gravitational_shootout 2
execute if score @s gravShot matches 3.. run advancement grant @s only achievements:rr_challenges/gravitational_shootout 3
execute if score @s gravShot matches 4.. run advancement grant @s only achievements:rr_challenges/gravitational_shootout 4
execute if score @s gravShot matches 5.. run advancement grant @s only achievements:rr_challenges/gravitational_shootout 5
execute if score @s gravShot matches 5.. run tag @s add GravShootout
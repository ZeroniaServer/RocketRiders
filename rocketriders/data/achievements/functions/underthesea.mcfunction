##Under the Sea achievement
##Detects player killing another player while swimming underwater

execute as @a[scores={PlayerKills=1..},predicate=custom:is_underwater] at @s run advancement grant @s only achievements:rr_challenges/under_the_sea
execute as @a[scores={PlayerKills=1..},predicate=custom:is_swimming] at @s run advancement grant @s only achievements:rr_challenges/under_the_sea
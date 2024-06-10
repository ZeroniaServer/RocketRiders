##Under the Sea achievement
##Detects player killing another player while swimming underwater
execute if entity @s[scores={PlayerKills=1..},predicate=custom:is_underwater] run advancement grant @s only achievements:rr_challenges/under_the_sea
execute if entity @s[scores={PlayerKills=1..},predicate=custom:is_swimming] run advancement grant @s only achievements:rr_challenges/under_the_sea
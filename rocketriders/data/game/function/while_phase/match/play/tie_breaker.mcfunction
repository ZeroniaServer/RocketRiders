#####################################
## SUDDENDEATH: What events occur  ##
## when the match results in a tie ##
#####################################

##Begins timer
scoreboard players add $tie_breaker_timer global 1

##Preparing for Tiebreaker
execute if score $tie_breaker_timer global matches 1..20 run function game:uncancelpads
execute if score $tie_breaker_timer global matches 1..2 run tp @a[x=0,predicate=custom:team/blue] 12 64 -66 0 0
execute if score $tie_breaker_timer global matches 1..2 run tp @a[x=0,predicate=custom:team/yellow] 12 64 66 180 0
execute if score $tie_breaker_timer global matches 1 run effect give @a[x=0,predicate=custom:team/any_arena_team] blindness 1 100 true
execute if score $tie_breaker_timer global matches 4 run effect clear @a[x=0,predicate=custom:team/any_arena_team] blindness

##Animated titles
execute if score $tie_breaker_timer global matches 10 as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 100 1.3
execute if score $tie_breaker_timer global matches 1 unless predicate game:game_rules/disable_titles/on run title @a[x=0] title ["",{"text":"It's a Tie!","color":"gray","bold":true}]
execute if score $tie_breaker_timer global matches 1..5 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"","bold":true,"color":"red"},{"text":"TIEBREAKER","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 6 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"T","bold":true,"color":"red"},{"text":"IEBREAKER","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 7 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TI","bold":true,"color":"red"},{"text":"EBREAKER","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 8 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIE","bold":true,"color":"red"},{"text":"BREAKER","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 9 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEB","bold":true,"color":"red"},{"text":"REAKER","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 10 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBR","bold":true,"color":"red"},{"text":"EAKER","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 11 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBRE","bold":true,"color":"red"},{"text":"AKER","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 12 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBREA","bold":true,"color":"red"},{"text":"KER","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 13 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBREAK","bold":true,"color":"red"},{"text":"ER","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 14 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBREAKE","bold":true,"color":"red"},{"text":"R","bold":true,"color":"white"}]
execute if score $tie_breaker_timer global matches 15..20 unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBREAKER","bold":true,"color":"red"}]

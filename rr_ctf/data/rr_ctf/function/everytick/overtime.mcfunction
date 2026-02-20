#################################
## OVERTIME: What events occur ##
## when a match takes too long ##
#################################

##Begins timer
execute if entity @s[scores={SDtime=20..}] run scoreboard players reset @s SDtime
scoreboard players add @s SDtime 1

##Preparing for tiebreaker
execute if entity @s[scores={SDtime=1}] run worldborder warning distance 1000000
#Halves the Item Delay (more intense gameplay)
scoreboard players operation @s[scores={SDtime=1,MaxItemTime=3..}] MaxItemTime /= $2 constant
scoreboard players set @s[scores={SDtime=1,MaxItemTime=..1}] MaxItemTime 2
execute if entity @s[scores={SDtime=1}] run scoreboard players set @s RandomItem -3
execute if entity @s[scores={SDtime=1}] run scoreboard players operation @s RandomItem += @s MaxItemTime
execute if entity @s[scores={SDtime=1}] if predicate game:modifiers/minute_mix/on run scoreboard players set @s RandomItem 1197
execute if entity @s[scores={SDtime=10}] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 100 1.3

##Animated titles
execute if entity @s[scores={SDtime=1}] run title @a[x=0] title ["",{"text":"Overtime!","color":"gray","bold":true}]
execute if entity @s[scores={SDtime=1..5}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"","bold":true,"color":"red"},{"text":"TIEBREAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=6}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"T","bold":true,"color":"red"},{"text":"IEBREAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=7}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TI","bold":true,"color":"red"},{"text":"EBREAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=8}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIE","bold":true,"color":"red"},{"text":"BREAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=9}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEB","bold":true,"color":"red"},{"text":"REAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=10}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBR","bold":true,"color":"red"},{"text":"EAKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=11}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBRE","bold":true,"color":"red"},{"text":"AKER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=12}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBREA","bold":true,"color":"red"},{"text":"KER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=13}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBREAK","bold":true,"color":"red"},{"text":"ER","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=14}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBREAKE","bold":true,"color":"red"},{"text":"R","bold":true,"color":"white"}]
execute if entity @s[scores={SDtime=15..}] unless predicate game:game_rules/disable_titles/on run title @a[x=0] subtitle ["",{"text":"TIEBREAKER","bold":true,"color":"red"}]

##Resets timer
execute if entity @s[scores={SDtime=20..}] run tag @s remove CTFOvertime
execute if entity @s[scores={SDtime=20..}] run tag @s add CTF3stack
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] #custom:clear
clear @a[x=0,predicate=custom:on_blue_or_yellow_team] *[custom_data~{id:"nova_rocket"}]

#Replacing Shooting Sabers
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=item] if items entity @s contents bow run kill
execute if entity @s[scores={endtimer=1}] run clear @a[x=0,scores={crusadekit=2},predicate=custom:on_blue_or_yellow_team] bow
execute if entity @s[tag=BothWon,scores={endtimer=1}] as @a[x=0,team=Blue,scores={crusadekit=2}] run loot give @s loot items:misc/shooting_saber
execute if entity @s[tag=YellowWon,scores={endtimer=1}] as @a[x=0,team=Yellow,scores={crusadekit=2}] run loot give @s loot items:misc/shooting_saber
execute if entity @s[tag=YellowWon,scores={endtimer=1}] as @a[x=0,team=Blue,scores={crusadekit=2}] run loot give @s loot items:misc/shooting_saber
execute if entity @s[tag=BlueWon,scores={endtimer=1}] as @a[x=0,team=Blue,scores={crusadekit=2}] run loot give @s loot items:misc/shooting_saber
execute if entity @s[tag=BlueWon,scores={endtimer=1}] as @a[x=0,team=Yellow,scores={crusadekit=2}] run loot give @s loot items:misc/shooting_saber

#Replacing Spell Wands
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=item] if items entity @s contents writable_book run function items:killendweapon
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run clear @a[x=0,team=Blue,scores={crusadekit=3}] writable_book
execute if entity @s[tag=YellowWon,scores={endtimer=1}] as @a[x=0,team=Blue,scores={crusadekit=3}] run loot give @s loot items:misc/spell_wand_end
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run clear @a[x=0,team=Yellow,scores={crusadekit=3}] writable_book
execute if entity @s[tag=BlueWon,scores={endtimer=1}] as @a[x=0,team=Yellow,scores={crusadekit=3}] run loot give @s loot items:misc/spell_wand_end

execute if entity @s[tag=!doTying,scores={endtimer=1}] run function game:endstats
execute if predicate rr_crusade:yellow_portal_revealed if predicate rr_crusade:blue_portal_revealed run tag @s add couldTie
execute if entity @s[tag=couldTie,tag=doTying,scores={endtimer=101}] run function game:endstats
execute if entity @s[tag=!couldTie,tag=doTying,scores={endtimer=1}] run function game:endstats
bossbar set rr_crusade:blue players none
bossbar set rr_crusade:yellow players none

##Tie actionbar notifications
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=1..20}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"5","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=21..40}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"4","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=41..60}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"3","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=61..80}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"2","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=81..100}] run title @a[x=0,team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"1","color":"dark_red","bold":true},{"text":" second","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=101}] run title @a[x=0,team=!Lobby] actionbar {"text":""}

##System for ties
execute if entity @s[tag=couldTie,tag=doTying,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,scores={endtimer=1..100}] at @s unless block 4 45 -67 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=couldTie,tag=doTying,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,scores={endtimer=1..100}] at @s unless block 4 45 67 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=couldTie,tag=doTying,tag=YellowWon,tag=BlueWon,tag=!SuddenDeath,scores={endtimer=1..100}] run tag @s add SuddenDeath
tag @s remove couldTie

execute if entity @s[scores={endtimer=101..}] run kill @e[x=0,type=marker,tag=airDetectBlue,limit=1]
execute if entity @s[scores={endtimer=101..}] run kill @e[x=0,type=marker,tag=airDetectYellow,limit=1]

#Preclear
execute if entity @s[scores={endtimer=569..}] run function rr_crusade:arenaclear/preclear
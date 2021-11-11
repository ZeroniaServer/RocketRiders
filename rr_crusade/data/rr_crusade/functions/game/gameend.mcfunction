function everytick:icbm
clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run clear @a[team=Blue,scores={crusadekit=2}] bow
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run clear @a[team=Blue,scores={crusadekit=3}] blaze_rod
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run give @a[team=Blue,scores={crusadekit=2}] bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run give @a[team=Blue,scores={crusadekit=3}] blaze_rod{Unbreakable:1b,display:{Name:'[{"text":"Fire Wand","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]']},Enchantments:[{id:"fire_aspect",lvl:2}]}
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run clear @a[team=Yellow,scores={crusadekit=2}] bow
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run clear @a[team=Yellow,scores={crusadekit=3}] blaze_rod
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run give @a[team=Yellow,scores={crusadekit=2}] bow{display:{Name:'{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run give @a[team=Yellow,scores={crusadekit=3}] blaze_rod{Unbreakable:1b,display:{Name:'[{"text":"Fire Wand","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]']},Enchantments:[{id:"fire_aspect",lvl:2}]}
execute if entity @s[tag=!doTying,scores={endtimer=1}] run function game:endstats
execute if score $YellowShield crusadehp matches -1000..0 if score $BlueShield crusadehp matches -1000..0 run tag @s add couldTie
execute if entity @s[tag=couldTie,tag=doTying,scores={endtimer=101}] run function game:endstats
execute if entity @s[tag=!couldTie,tag=doTying,scores={endtimer=1}] run function game:endstats
bossbar set rr_crusade:blue players none
bossbar set rr_crusade:yellow players none

##Tie actionbar notifications
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=1..20}] run title @a[team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"5","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=21..40}] run title @a[team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"4","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=41..60}] run title @a[team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"3","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=61..80}] run title @a[team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"2","color":"dark_red","bold":true},{"text":" seconds","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=81..100}] run title @a[team=!Lobby] actionbar ["",{"text":"Waiting for potential tie... ","color":"red"},{"text":"1","color":"dark_red","bold":true},{"text":" second","color":"red"}]
execute if entity @s[tag=couldTie,tag=doTying,tag=!BothWon,scores={endtimer=101}] run title @a[team=!Lobby] actionbar {"text":""}

##System for ties
execute if entity @s[tag=couldTie,tag=doTying,tag=BlueWon,tag=!YellowWon,tag=!SuddenDeath,scores={endtimer=1..100}] at @s unless block 4 45 -67 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=couldTie,tag=doTying,tag=YellowWon,tag=!BlueWon,tag=!SuddenDeath,scores={endtimer=1..100}] at @s unless block 4 45 67 nether_portal run tag @s add SuddenDeath
execute if entity @s[tag=couldTie,tag=doTying,tag=YellowWon,tag=BlueWon,tag=!SuddenDeath,scores={endtimer=1..100}] run tag @s add SuddenDeath
tag @s remove couldTie
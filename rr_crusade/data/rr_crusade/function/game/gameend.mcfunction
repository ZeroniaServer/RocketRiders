clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data={nova:1b}]
clear @a[x=0,team=Yellow] #custom:clear
clear @a[x=0,team=Yellow] crossbow[custom_data={nova:1b}]

#Replacing Shooting Sabers
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=item] if items entity @s contents bow run kill
execute if entity @s[scores={endtimer=1}] as @a[x=0,scores={crusadekit=2}] unless entity @s[team=!Blue,team=!Yellow] run clear @s bow
execute if entity @s[tag=BothWon,scores={endtimer=1}] run give @a[x=0,team=Yellow,scores={crusadekit=2}] minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1,sharpness:4}]
execute if entity @s[tag=BothWon,scores={endtimer=1}] run give @a[x=0,team=Blue,scores={crusadekit=2}] minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1,sharpness:4}]
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run give @a[x=0,team=Yellow,scores={crusadekit=2}] minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1,sharpness:4}]
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run give @a[x=0,team=Blue,scores={crusadekit=2}] minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1}]
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run give @a[x=0,team=Blue,scores={crusadekit=2}] minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1,sharpness:4}]
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run give @a[x=0,team=Yellow,scores={crusadekit=2}] minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1}]

#Replacing Fire Wands
execute if entity @s[scores={endtimer=1}] as @e[x=0,type=item] if items entity @s contents blaze_rod run function items:killendweapon
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run clear @a[x=0,team=Blue,scores={crusadekit=3}] blaze_rod
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run give @a[x=0,team=Blue,scores={crusadekit=3}] minecraft:blaze_rod[custom_model_data=1,unbreakable={},custom_name='[{"text":"Fire Wand","italic":false,"bold":true,"color":"blue"}]',lore=['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]'],enchantments={fire_aspect:2}]
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run clear @a[x=0,team=Yellow,scores={crusadekit=3}] blaze_rod
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run give @a[x=0,team=Yellow,scores={crusadekit=3}] minecraft:blaze_rod[custom_model_data=1,unbreakable={},custom_name='[{"text":"Fire Wand","italic":false,"bold":true,"color":"gold"}]',lore=['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]'],enchantments={fire_aspect:2}]

execute if entity @s[tag=!doTying,scores={endtimer=1}] run function game:endstats
execute if score $YellowShield crusadehp matches -1000..0 if score $BlueShield crusadehp matches -1000..0 run tag @s add couldTie
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
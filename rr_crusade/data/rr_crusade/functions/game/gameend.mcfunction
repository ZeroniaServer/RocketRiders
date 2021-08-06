function rr_crusade:items/icbm
clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run clear @a[team=Blue,scores={crusadekit=2}] bow
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run clear @a[team=Blue,scores={crusadekit=3}] blaze_rod
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run give @a[team=Blue,scores={crusadekit=2}] bow{display:{Name:'{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
execute if entity @s[tag=YellowWon,scores={endtimer=1}] run give @a[team=Blue,scores={crusadekit=3}] blaze_rod{Unbreakable:1b,display:{Name:'[{"text":"Fire Wand","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]']},Enchantments:[{id:"fire_aspect",lvl:2}]}
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run clear @a[team=Blue,scores={crusadekit=2}] bow
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run clear @a[team=Blue,scores={crusadekit=3}] blaze_rod
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run give @a[team=Blue,scores={crusadekit=2}] bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
execute if entity @s[tag=BlueWon,scores={endtimer=1}] run give @a[team=Yellow,scores={crusadekit=2}] blaze_rod{Unbreakable:1b,display:{Name:'[{"text":"Fire Wand","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]']},Enchantments:[{id:"fire_aspect",lvl:2}]}
bossbar set rr_crusade:blue players none
bossbar set rr_crusade:yellow players none

scoreboard players reset @a crusadekit
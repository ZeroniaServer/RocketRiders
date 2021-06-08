##Utility function to make sure all players have Shooting Sabers

execute as @a store result score @s HasSaber run clear @s bow 0

tag @a[team=Blue,scores={HasSaber=0}] add saberlessBlue
execute as @s[tag=!YellowWon] run give @a[tag=saberlessBlue] minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1},{id:"sharpness",lvl:5}]}
execute as @s[tag=YellowWon] run give @a[tag=saberlessBlue] minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
tag @a[tag=saberlessBlue] remove saberlessBlue

tag @a[team=Yellow,scores={HasSaber=0}] add saberlessYellow
execute as @s[tag=!BlueWon] run give @a[tag=saberlessYellow] minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1},{id:"sharpness",lvl:5}]}
execute as @s[tag=BlueWon] run give @a[tag=saberlessYellow] minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
tag @a[tag=saberlessYellow] remove saberlessYellow
clear @a[scores={HasSaber=2..}] bow
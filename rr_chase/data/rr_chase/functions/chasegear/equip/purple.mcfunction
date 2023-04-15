execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=0}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Purple Chestplate","color":"dark_purple","bold":true,"italic":false}]',color:11796735},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=0}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'[{"text":"Purple Leggings","color":"dark_purple","bold":true,"italic":false}]',color:11796735},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=0}] run item replace entity @s armor.feet with leather_boots{display:{Name:'[{"text":"Purple Boots","color":"dark_purple","bold":true,"italic":false}]',color:11796735},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Purple Chestplate","color":"dark_purple","bold":true,"italic":false}]',color:11796735},HideFlags:127,Unbreakable:1}
execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'[{"text":"Purple Leggings","color":"dark_purple","bold":true,"italic":false}]',color:11796735},HideFlags:127,Unbreakable:1}
execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.feet with leather_boots{display:{Name:'[{"text":"Purple Boots","color":"dark_purple","bold":true,"italic":false}]',color:11796735},HideFlags:127,Unbreakable:1}

item replace entity @s hotbar.0 with minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"dark_purple","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1},{id:"sharpness",lvl:5}]}
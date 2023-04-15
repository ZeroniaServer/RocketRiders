execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=0}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"White Chestplate","color":"white","bold":true,"italic":false}]',color:16777215},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=0}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'[{"text":"White Leggings","color":"white","bold":true,"italic":false}]',color:16777215},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=0}] run item replace entity @s armor.feet with leather_boots{display:{Name:'[{"text":"White Boots","color":"white","bold":true,"italic":false}]',color:16777215},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"White Chestplate","color":"white","bold":true,"italic":false}]',color:16777215},HideFlags:127,Unbreakable:1}
execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'[{"text":"White Leggings","color":"white","bold":true,"italic":false}]',color:16777215},HideFlags:127,Unbreakable:1}
execute if entity @e[predicate=custom:indimension,type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.feet with leather_boots{display:{Name:'[{"text":"White Boots","color":"white","bold":true,"italic":false}]',color:16777215},HideFlags:127,Unbreakable:1}

item replace entity @s hotbar.0 with minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"white","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1},{id:"sharpness",lvl:5}]}
execute if entity @e[type=armor_stand,scores={servermode=0}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @e[type=armor_stand,scores={servermode=0}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @e[type=armor_stand,scores={servermode=0}] run item replace entity @s armor.feet with leather_boots{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute if entity @e[type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @e[type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.legs with leather_leggings{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @e[type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.feet with leather_boots{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

item replace entity @s hotbar.0 with minecraft:bow{display:{Name:'{"translate":"Shooting Saber","color":"yellow","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1},{id:"sharpness",lvl:5}]}
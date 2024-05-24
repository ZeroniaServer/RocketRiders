execute if entity @e[x=0,type=armor_stand,scores={servermode=0}] run item replace entity @s armor.chest with minecraft:leather_chestplate[custom_name='[{"text":"Mint Chestplate","color":"#65ffd4","bold":true,"italic":false}]',dyed_color={rgb:6684628,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},hide_additional_tooltip={}]
execute if entity @e[x=0,type=armor_stand,scores={servermode=0}] run item replace entity @s armor.legs with minecraft:leather_leggings[custom_name='[{"text":"Mint Leggings","color":"#65ffd4","bold":true,"italic":false}]',dyed_color={rgb:6684628,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},hide_additional_tooltip={}]
execute if entity @e[x=0,type=armor_stand,scores={servermode=0}] run item replace entity @s armor.feet with minecraft:leather_boots[custom_name='[{"text":"Mint Boots","color":"#65ffd4","bold":true,"italic":false}]',dyed_color={rgb:6684628,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},hide_additional_tooltip={}]

execute if entity @e[x=0,type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.chest with minecraft:leather_chestplate[custom_name='[{"text":"Mint Chestplate","color":"#65ffd4","bold":true,"italic":false}]',dyed_color={rgb:6684628,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]
execute if entity @e[x=0,type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.legs with minecraft:leather_leggings[custom_name='[{"text":"Mint Leggings","color":"#65ffd4","bold":true,"italic":false}]',dyed_color={rgb:6684628,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]
execute if entity @e[x=0,type=armor_stand,scores={servermode=1..}] run item replace entity @s armor.feet with minecraft:leather_boots[custom_name='[{"text":"Mint Boots","color":"#65ffd4","bold":true,"italic":false}]',dyed_color={rgb:6684628,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]

item replace entity @s hotbar.0 with minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"#65ffd4","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1,sharpness:5}]
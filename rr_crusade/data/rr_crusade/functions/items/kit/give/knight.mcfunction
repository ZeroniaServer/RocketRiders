clear @s
item replace entity @s[team=Blue] hotbar.0 with stone_sword{Unbreakable: 1b, display: {Name: '[{"text":"Knight Sword","italic":false,"bold":true,"color":"blue"}]', Lore: ['[{"text":"A sharp sword, made to","italic":false,"color":"gray"}]', '[{"text":"kill the strongest enemies.","italic":false,"color":"gray"}]']}}
item replace entity @s[team=Blue] weapon.offhand with shield{Damage: 333, display: {Name: '[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]', Lore: ['[{"text":"A not that sturdy shield.","italic":false,"color":"gray"}]']}}
# replaceitem entity @s[team=Blue] hotbar.1
# replaceitem entity @s[team=Blue] hotbar.2
# replaceitem entity @s[team=Blue] hotbar.3

item replace entity @s[team=Blue] armor.head with netherite_helmet{display: {Name: '[{"text":"Blue Knight Helmet","color":"blue","bold":true,"italic":false}]', color: 3949738}, HideFlags: 39, Unbreakable: 1, Enchantments: [{id: "binding_curse", lvl: 1}]}
item replace entity @s[team=Blue] armor.legs with iron_leggings{display: {Name: '[{"text":"Blue Knight Leggings","color":"blue","bold":true,"italic":false}]'}, HideFlags: 39, Unbreakable: 1, Enchantments: [{id: "binding_curse", lvl: 1}]}
item replace entity @s[team=Blue] armor.feet with iron_boots{display: {Name: '[{"text":"Blue Knight Boots","color":"blue","bold":true,"italic":false}]'}, HideFlags: 39, Unbreakable: 1, Enchantments: [{id: "binding_curse", lvl: 1}]}

item replace entity @s[team=Yellow] armor.head with netherite_helmet{display: {Name: '[{"text":"Yellow Knight Helmet","color":"blue","bold":true,"italic":false}]', color: 3949738}, HideFlags: 39, Unbreakable: 1, Enchantments: [{id: "binding_curse", lvl: 1}]}
item replace entity @s[team=Yellow] armor.legs with iron_leggings{display: {Name: '[{"text":"Yellow Knight Leggings","color":"blue","bold":true,"italic":false}]'}, HideFlags: 39, Unbreakable: 1, Enchantments: [{id: "binding_curse", lvl: 1}]}
item replace entity @s[team=Yellow] armor.feet with iron_boots{display: {Name: '[{"text":"Yellow Knight Boots","color":"blue","bold":true,"italic":false}]'}, HideFlags: 39, Unbreakable: 1, Enchantments: [{id: "binding_curse", lvl: 1}]}

item replace entity @s[team=Blue] armor.chest with leather_chestplate{display: {Name: '[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]', color: 3949738}, HideFlags: 39, Unbreakable: 1, Enchantments: [{id: "binding_curse", lvl: 1}]}
item replace entity @s[team=Yellow] armor.chest with leather_chestplate{display: {Name: '[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]', color: 16768000}, HideFlags: 7, Unbreakable: 1, Enchantments: [{id: "binding_curse", lvl: 1}]}

title @s title {"text":"Respawned as:","color":"gray"}
title @s subtitle {"text":"Knight","color":"red","bold":true}
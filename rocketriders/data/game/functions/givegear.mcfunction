##Utility function for giving Blue/Yellow players appropriate armor
#Blue
replaceitem entity @s[team=Blue] armor.chest leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @s[team=Blue] armor.legs leather_leggings{display:{Name:'[{"text":"Blue Leggings","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
execute if entity @e[tag=Selection,type=armor_stand,tag=noYZELO] run replaceitem entity @s[team=Blue] armor.feet leather_boots{display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
execute unless entity @e[tag=rr_duel,type=armor_stand] run replaceitem entity @s[team=Blue] armor.feet leather_boots{display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}

#Yellow
replaceitem entity @s[team=Yellow] armor.chest leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:7,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @s[team=Yellow] armor.legs leather_leggings{display:{Name:'[{"text":"Yellow Leggings","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:7,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
execute if entity @e[tag=Selection,type=armor_stand,tag=noYZELO] run replaceitem entity @s[team=Yellow] armor.feet leather_boots{display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
execute unless entity @e[tag=rr_duel,type=armor_stand] run replaceitem entity @s[team=Yellow] armor.feet leather_boots{display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
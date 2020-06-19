#blue
replaceitem entity @s[team=Blue] armor.chest leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @s[team=Blue] armor.legs leather_leggings{display:{Name:'[{"text":"Blue Leggings","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}

#yellow
replaceitem entity @s[team=Yellow] armor.chest leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:7,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @s[team=Yellow] armor.legs leather_leggings{display:{Name:'[{"text":"Yellow Leggings","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:7,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}

#rank boots
replaceitem entity @s[scores={XP=..100}] armor.feet leather_boots{display:{Name:'[{"text":"Unranked Boots","color":"dark_gray","bold":true,"italic":false}]',color:4210752},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @s[scores={XP=101..400}] armor.feet leather_boots{display:{Name:'[{"text":"Bronze Boots","color":"#CD7F32","bold":true,"italic":false}]',color:13467442},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @s[scores={XP=401..700}] armor.feet iron_boots{display:{Name:'[{"text":"Silver Boots","color":"gray","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @s[scores={XP=701..1000}] armor.feet golden_boots{display:{Name:'[{"text":"Gold Boots","color":"gold","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @s[scores={XP=1001..1300}] armor.feet diamond_boots{display:{Name:'[{"text":"Diamond Boots","color":"aqua","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;2132830942,1096503180,-1500192856,1476275408],Slot:"feet"}]}
replaceitem entity @s[scores={XP=1301..}] armor.feet netherite_boots{display:{Name:'[{"text":"Champion Boots","color":"red","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:binding_curse,lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;2132830942,1096503180,-1500192856,1476275408],Slot:"feet"}]}
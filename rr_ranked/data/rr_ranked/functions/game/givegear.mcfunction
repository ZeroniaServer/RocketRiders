#blue
replaceitem entity @s[team=Blue] armor.chest leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @s[team=Blue] armor.legs leather_leggings{display:{Name:'[{"text":"Blue Leggings","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}



#yellow
replaceitem entity @s[team=Yellow] armor.chest leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:7,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @a[team=Yellow] armor.legs leather_leggings{display:{Name:'[{"text":"Yellow Leggings","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:7,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}








#Boots stuff.
#This now actually only works when the rankedmode is installed.
replaceitem entity @s[scores={XP=..300}] armor.feet leather_boots{display:{Name:'[{"text":"Unranked Boots","color":"dark_gray","bold":true,"italic":false}]',color:4210752},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @s[scores={XP=301..600}] armor.feet leather_boots{display:{Name:'[{"text":"Bronze Boots","color":"dark_red","bold":true,"italic":false}]',color:8468232},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @s[scores={XP=601..900}] armor.feet chainmail_boots{display:{Name:'[{"text":"Silver Boots","color":"gray","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @s[scores={XP=901..1200}] armor.feet golden_boots{display:{Name:'[{"text":"Gold Boots","color":"gold","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @s[scores={XP=1201..1500}] armor.feet diamond_boots{display:{Name:'[{"text":"Diamond Boots","color":"aqua","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:361736,UUIDMost:646052,Slot:"feet"}]}
replaceitem entity @s[scores={XP=1501..}] armor.feet leather_boots{display:{Name:'[{"text":"Champion Boots","color":"red","bold":true,"italic":false}]',color:16727614},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
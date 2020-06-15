replaceitem entity @a[tag=JoinYellow] armor.chest leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:7,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @a[tag=JoinYellow] armor.legs leather_leggings{display:{Name:'[{"text":"Yellow Leggings","color":"yellow","bold":true,"italic":false}]',color:16768000},HideFlags:7,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}



#Boots stuff.
#This now actually only works when the rankedmode is installed.
replaceitem entity @a[tag=JoinYellow,scores={XP=..100}] armor.feet leather_boots{display:{Name:'[{"text":"Unranked Boots","color":"dark_gray","bold":true,"italic":false}]',color:4210752},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @a[tag=JoinYellow,scores={XP=101..400}] armor.feet leather_boots{display:{Name:'[{"text":"Bronze Boots","color":"dark_red","bold":true,"italic":false}]',color:8468232},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
replaceitem entity @a[tag=JoinYellow,scores={XP=401..700}] armor.feet iron_boots{display:{Name:'[{"text":"Silver Boots","color":"gray","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[tag=JoinYellow,scores={XP=701..1000}] armor.feet golden_boots{display:{Name:'[{"text":"Gold Boots","color":"gold","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
replaceitem entity @a[tag=JoinYellow,scores={XP=1001..1300}] armor.feet diamond_boots{display:{Name:'[{"text":"Diamond Boots","color":"aqua","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUIDLeast:361736,UUIDMost:646052,Slot:"feet"}]}
replaceitem entity @a[tag=JoinYellow,scores={XP=1301..}] armor.feet leather_boots{display:{Name:'[{"text":"Champion Boots","color":"red","bold":true,"italic":false}]',color:16727614},HideFlags:39,Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}]}
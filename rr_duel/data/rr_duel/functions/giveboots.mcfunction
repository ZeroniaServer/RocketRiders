#rank boots
execute unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{color:4210752}}}]}] run item replace entity @s[scores={XP=..99}] armor.feet with leather_boots{display:{Name:'[{"text":"Unranked Boots","color":"dark_gray","bold":true,"italic":false}]',color:4210752},HideFlags:103,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;2132830942,1096503180,-1500192856,1476275408],Slot:"feet"}]}
execute unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{color:13467442}}}]}] run item replace entity @s[scores={XP=100..399}] armor.feet with leather_boots{display:{Name:'[{"text":"Bronze Boots","color":"#CD7F32","bold":true,"italic":false}]',color:13467442},HideFlags:103,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;2132830942,1096503180,-1500192856,1476275408],Slot:"feet"}]}
execute unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run item replace entity @s[scores={XP=400..699}] armor.feet with iron_boots{display:{Name:'[{"text":"Silver Boots","color":"gray","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;2132830942,1096503180,-1500192856,1476275408],Slot:"feet"}]}
execute unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:golden_boots"}]}] run item replace entity @s[scores={XP=700..999}] armor.feet with golden_boots{display:{Name:'[{"text":"Gold Boots","color":"gold","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;2132830942,1096503180,-1500192856,1476275408],Slot:"feet"}]}
execute unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] run item replace entity @s[scores={XP=1000..1299}] armor.feet with diamond_boots{display:{Name:'[{"text":"Diamond Boots","color":"aqua","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;2132830942,1096503180,-1500192856,1476275408],Slot:"feet"}]}
execute unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:netherite_boots"}]}] run item replace entity @s[scores={XP=1300..}] armor.feet with netherite_boots{display:{Name:'[{"text":"Champion Boots","color":"red","bold":true,"italic":false}]'},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:1,Operation:0,UUID:[I;2132830942,1096503180,-1500192856,1476275408],Slot:"feet"}]}
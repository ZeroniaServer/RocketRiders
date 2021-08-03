execute unless entity @s[scores={crusadekit=2}] run clear @s
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Blue] hotbar.0 with bow{display:{Name:'{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Blue] armor.head with chainmail_helmet{display:{Name:'[{"text":"Blue Archer Helmet","color":"blue","bold":true,"italic":false}]'},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Blue] armor.chest with chainmail_chestplate{display:{Name:'[{"text":"Blue Archer Chestplate","color":"blue","bold":true,"italic":false}]'},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Blue] armor.legs with leather_leggings{display:{Name:'[{"text":"Blue Archer Leggings","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Yellow] hotbar.0 with bow{display:{Name:'{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks"}']},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"flame",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Yellow] armor.head with chainmail_helmet{display:{Name:'[{"text":"Yellow Archer Helmet","color":"gold","bold":true,"italic":false}]'},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Yellow] armor.chest with chainmail_chestplate{display:{Name:'[{"text":"Yellow Archer Chestplate","color":"gold","bold":true,"italic":false}]'},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Yellow] armor.legs with leather_leggings{display:{Name:'[{"text":"Yellow Archer Leggings","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute unless entity @s[scores={crusadekit=2}] run title @s title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[scores={crusadekit=2}] run title @s subtitle {"text":"Archer","color":"red","bold":true}
execute unless entity @s[scores={crusadekit=2}] as @s at @s run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 1

execute unless entity @s[scores={crusadekit=2}] run scoreboard players set @s crusadekit 2
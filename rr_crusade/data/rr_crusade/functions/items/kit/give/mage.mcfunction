execute unless entity @s[scores={crusadekit=3}] run clear @s
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Blue] hotbar.0 with blaze_rod{Unbreakable:1b,display:{Name:'[{"text":"Fire Wand","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]']},Enchantments:[{id:"fire_aspect",lvl:2},{id:"sharpness",lvl:2}]}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Blue] armor.head with warped_fence_gate{display:{Name:'[{"text":"Blue Mage Mask","color":"blue","bold":true,"italic":false}]'},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Blue] armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Mage Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Blue] armor.legs with leather_leggings{display:{Name:'[{"text":"Blue Mage Leggings","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] if entity @e[type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] unless entity @e[type=armor_stand,tag=rr_duel] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Yellow] hotbar.0 with blaze_rod{Unbreakable:1b,display:{Name:'[{"text":"Fire Wand","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]']},Enchantments:[{id:"fire_aspect",lvl:2},{id:"sharpness",lvl:2}]}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Yellow] armor.head with birch_fence_gate{display:{Name:'[{"text":"Yellow Mage Mask","color":"gold","bold":true,"italic":false}]'},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Yellow] armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Mage Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Yellow] armor.legs with leather_leggings{display:{Name:'[{"text":"Yellow Mage Leggings","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] if entity @e[type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={crusadekit=2}] unless entity @e[type=armor_stand,tag=rr_duel] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute unless entity @s[scores={crusadekit=3}] run title @s title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[scores={crusadekit=3}] run title @s subtitle {"text":"Mage","color":"dark_purple","bold":true}
execute unless entity @s[scores={crusadekit=3}] as @s at @s run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 2

execute unless entity @s[scores={crusadekit=3}] run scoreboard players set @s crusadekit 3
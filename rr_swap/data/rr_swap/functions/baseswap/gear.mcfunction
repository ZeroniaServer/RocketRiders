
execute if score SwapSide swapside matches 1 run item replace entity @s[team=Blue] armor.chest with leather_chestplate{display:{Name:'[{"text":"Dark Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:524382},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 1 run item replace entity @s[team=Blue] armor.legs with leather_leggings{display:{Name:'[{"text":"Dark Blue Leggings","color":"blue","bold":true,"italic":false}]',color:524382},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 1 if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Dark Blue Boots","color":"blue","bold":true,"italic":false}]',color:524382},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 1 unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Dark Blue Boots","color":"blue","bold":true,"italic":false}]',color:524382},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute if score SwapSide swapside matches 1 run item replace entity @s[team=Yellow] armor.chest with leather_chestplate{display:{Name:'[{"text":"Light Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16776369},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 1 run item replace entity @s[team=Yellow] armor.legs with leather_leggings{display:{Name:'[{"text":"Light Yellow Leggings","color":"gold","bold":true,"italic":false}]',color:16776369},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 1 if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Light Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16776369},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 1 unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Light Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16776369},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute if score SwapSide swapside matches 0 run item replace entity @s[team=Blue] armor.chest with leather_chestplate{display:{Name:'[{"text":"Light Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:10137855},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 0 run item replace entity @s[team=Blue] armor.legs with leather_leggings{display:{Name:'[{"text":"Light Blue Leggings","color":"blue","bold":true,"italic":false}]',color:10137855},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 0 if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Light Blue Boots","color":"blue","bold":true,"italic":false}]',color:10137855},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 0 unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Light Blue Boots","color":"blue","bold":true,"italic":false}]',color:10137855},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}

execute if score SwapSide swapside matches 0 run item replace entity @s[team=Yellow] armor.chest with leather_chestplate{display:{Name:'[{"text":"Dark Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:9538560},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 0 run item replace entity @s[team=Yellow] armor.legs with leather_leggings{display:{Name:'[{"text":"Dark Yellow Leggings","color":"gold","bold":true,"italic":false}]',color:9538560},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 0 if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Dark Yellow Boots","color":"gold","bold":true,"italic":false}]',color:9538560},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if score SwapSide swapside matches 0 unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Dark Yellow Boots","color":"gold","bold":true,"italic":false}]',color:9538560},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
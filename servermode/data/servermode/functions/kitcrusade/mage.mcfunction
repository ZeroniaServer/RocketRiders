execute if entity @s[tag=JoinBlue,scores={crusadekit=3}] run scoreboard players reset @s crusadekit
execute if entity @s[tag=JoinYellow,scores={crusadekit=3}] run scoreboard players reset @s crusadekit

execute unless entity @s[scores={crusadekit=3}] run clear @s
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Blue] hotbar.0 with blaze_rod{CustomModelData:1,Unbreakable:1b,display:{Name:'[{"text":"Fire Wand","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]']},Enchantments:[{id:"fire_aspect",lvl:2},{id:"sharpness",lvl:2}]}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Blue] armor.head with warped_fence_gate{display:{Name:'[{"text":"Blue Mage Mask","color":"blue","bold":true,"italic":false}]'},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Blue] armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Mage Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Blue] armor.legs with leather_leggings{display:{Name:'[{"text":"Blue Mage Leggings","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={crusadekit=3}] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={crusadekit=3}] unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Blue] armor.feet with leather_boots{display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}

execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Yellow] hotbar.0 with blaze_rod{CustomModelData:1,Unbreakable:1b,display:{Name:'[{"text":"Fire Wand","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A special wand, made to"}]','[{"translate":"set enemies on fire!"}]']},Enchantments:[{id:"fire_aspect",lvl:2},{id:"sharpness",lvl:2}]}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Yellow] armor.head with birch_fence_gate{display:{Name:'[{"text":"Yellow Mage Mask","color":"gold","bold":true,"italic":false}]'},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Yellow] armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Mage Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={crusadekit=3}] run item replace entity @s[team=Yellow] armor.legs with leather_leggings{display:{Name:'[{"text":"Yellow Mage Leggings","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={crusadekit=3}] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={crusadekit=3}] unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Yellow] armor.feet with leather_boots{display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}

execute unless entity @s[scores={crusadekit=3}] run tellraw @s[team=Blue,tag=!kitmage] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Mage","bold":true,"color":"dark_purple"},{"text":"!","color":"green"},"\n",{"text":"List of items you can obtain: ","color":"gray"},{"text":"A.N.T","color":"green"},{"text":", ","color":"gray"},{"text":"TomaTwo","color":"green"},{"text":", ","color":"gray"},{"text":"Catapult","color":"green"},{"text":", ","color":"gray"},{"text":"Lifter","color":"green"},{"text":", ","color":"gray"},{"text":"Chronullifier","color":"green"},{"text":", ","color":"gray"},{"text":"Fireball","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Nova Rocket","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"},"\n","\n",{"text":"Your equipment: ","color":"gray"},{"text":"Fire Wand","color":"blue"},{"text":", ","color":"gray"},{"text":"Mage Mask","color":"blue"},{"text":", ","color":"gray"},{"text":"Mage Chestplate","color":"blue"},{"text":", ","color":"gray"},{"text":"Mage Leggings","color":"blue"},"\n"]
execute unless entity @s[scores={crusadekit=3}] run tellraw @s[team=Yellow,tag=!kitmage] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Mage","bold":true,"color":"dark_purple"},{"text":"!","color":"green"},"\n",{"text":"List of items you can obtain: ","color":"gray"},{"text":"A.N.T","color":"green"},{"text":", ","color":"gray"},{"text":"TomaTwo","color":"green"},{"text":", ","color":"gray"},{"text":"Catapult","color":"green"},{"text":", ","color":"gray"},{"text":"Lifter","color":"green"},{"text":", ","color":"gray"},{"text":"Chronullifier","color":"green"},{"text":", ","color":"gray"},{"text":"Fireball","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Nova Rocket","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Vortex","color":"light_purple"},"\n","\n",{"text":"Your equipment: ","color":"gray"},{"text":"Fire Wand","color":"gold"},{"text":", ","color":"gray"},{"text":"Mage Mask","color":"gold"},{"text":", ","color":"gray"},{"text":"Mage Chestplate","color":"gold"},{"text":", ","color":"gray"},{"text":"Mage Leggings","color":"gold"},"\n"]

execute unless entity @s[scores={crusadekit=3}] run title @s[tag=!kitmage] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[scores={crusadekit=3}] run title @s[tag=!kitmage] subtitle {"text":"Mage","color":"dark_purple","bold":true}
execute unless entity @s[scores={crusadekit=3}] if entity @s[tag=!kitmage] at @s run playsound minecraft:entity.illusioner.prepare_mirror master @s ~ ~ ~ 1 2

execute unless entity @s[scores={crusadekit=3}] run scoreboard players set @s crusadekit 3
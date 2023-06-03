execute if entity @s[tag=JoinBlue,scores={crusadekit=1}] run scoreboard players reset @s crusadekit
execute if entity @s[tag=JoinYellow,scores={crusadekit=1}] run scoreboard players reset @s crusadekit

execute unless entity @s[scores={crusadekit=1}] run clear @s
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] hotbar.0 with stone_sword{CustomModelData:1,Unbreakable:1b,display:{Name:'[{"text":"Knight Sword","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A sharp sword, made to"}]','[{"translate":"kill the strongest enemies."}]']}}
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] weapon.offhand with shield{Damage:326,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:11,Patterns:[{Pattern:"flo",Color:3},{Pattern:"bo",Color:3}]}}
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] armor.head with netherite_helmet{Trim:{material:"minecraft:lapis",pattern:"minecraft:tide"},display:{Name:'[{"text":"Blue Knight Helmet","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:255,Unbreakable:1}
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] armor.chest with leather_chestplate{Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"},display:{Name:'[{"text":"Blue Knight Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:255,Unbreakable:1}
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] armor.legs with iron_leggings{Trim:{material:"minecraft:lapis",pattern:"minecraft:vex"},display:{Name:'[{"text":"Blue Knight Leggings","color":"blue","bold":true,"italic":false}]'},HideFlags:255,Unbreakable:1}
execute unless entity @s[scores={crusadekit=1}] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Blue] armor.feet with leather_boots{Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"},display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:255,Unbreakable:1}
execute unless entity @s[scores={crusadekit=1}] unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Blue] armor.feet with leather_boots{Trim:{material:"minecraft:quartz",pattern:"minecraft:vex"},display:{Name:'[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:255,Unbreakable:1}

execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] hotbar.0 with stone_sword{CustomModelData:2,Unbreakable:1b,display:{Name:'[{"text":"Knight Sword","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A sharp sword, made to"}]','[{"translate":"kill the strongest enemies."}]']}}
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] weapon.offhand with shield{Damage:326,display:{Name:'[{"text":"Knight Shield","italic":false,"bold":true,"color":"gold"}]',Lore:['[{"translate":"A not-so-sturdy shield."}]']},BlockEntityTag:{Base:4,Patterns:[{Pattern:"flo",Color:1},{Pattern:"bo",Color:1}]}}
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] armor.head with netherite_helmet{Trim:{material:"minecraft:gold",pattern:"minecraft:raiser"},display:{Name:'[{"text":"Yellow Knight Helmet","color":"gold","bold":true,"italic":false}]',color:3949738},HideFlags:255,Unbreakable:1}
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] armor.chest with leather_chestplate{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:255,Unbreakable:1}
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] armor.legs with iron_leggings{Trim:{material:"minecraft:gold",pattern:"minecraft:spire"},display:{Name:'[{"text":"Yellow Knight Leggings","color":"gold","bold":true,"italic":false}]'},HideFlags:255,Unbreakable:1}
execute unless entity @s[scores={crusadekit=1}] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=noYZELO] run item replace entity @s[team=Yellow] armor.feet with leather_boots{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:255,Unbreakable:1}
execute unless entity @s[scores={crusadekit=1}] unless entity @e[predicate=custom:indimension,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Yellow] armor.feet with leather_boots{Trim:{material:"minecraft:netherite",pattern:"minecraft:spire"},display:{Name:'[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:255,Unbreakable:1}

execute unless entity @s[scores={crusadekit=1}] run tellraw @s[team=Blue,tag=!kitknight] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Knight","bold":true,"color":"dark_green"},{"text":"!","color":"green"},"\n",{"text":"List of items you can obtain: ","color":"gray"},{"text":"Blade","color":"green"},{"text":", ","color":"gray"},{"text":"Citadel","color":"green"},{"text":", ","color":"gray"},{"text":"Auxiliary","color":"red"},{"text":", ","color":"gray"},{"text":"Warhead","color":"red"},{"text":", ","color":"gray"},{"text":"Juggerbuster","color":"red"},{"text":", ","color":"gray"},{"text":"Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Obsidian Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"ICBM","color":"light_purple"},"\n","\n",{"text":"Your equipment: ","color":"gray"},{"text":"Knight Sword","color":"blue"},{"text":", ","color":"gray"},{"text":"Knight Shield","color":"blue"},{"text":", ","color":"gray"},{"text":"Knight Helmet","color":"blue"},{"text":", ","color":"gray"},{"text":"Knight Chestplate","color":"blue"},{"text":", ","color":"gray"},{"text":"Knight Leggings","color":"blue"},"\n"]
execute unless entity @s[scores={crusadekit=1}] run tellraw @s[team=Yellow,tag=!kitknight] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Knight","bold":true,"color":"dark_green"},{"text":"!","color":"green"},"\n",{"text":"List of items you can obtain: ","color":"gray"},{"text":"Blade","color":"green"},{"text":", ","color":"gray"},{"text":"Citadel","color":"green"},{"text":", ","color":"gray"},{"text":"Auxiliary","color":"red"},{"text":", ","color":"gray"},{"text":"Warhead","color":"red"},{"text":", ","color":"gray"},{"text":"Juggerbuster","color":"red"},{"text":", ","color":"gray"},{"text":"Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Obsidian Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"ICBM","color":"light_purple"},"\n","\n",{"text":"Your equipment: ","color":"gray"},{"text":"Knight Sword","color":"gold"},{"text":", ","color":"gray"},{"text":"Knight Shield","color":"gold"},{"text":", ","color":"gray"},{"text":"Knight Helmet","color":"gold"},{"text":", ","color":"gray"},{"text":"Knight Chestplate","color":"gold"},{"text":", ","color":"gray"},{"text":"Knight Leggings","color":"gold"},"\n"]

execute unless entity @s[scores={crusadekit=1}] run title @s[tag=!kitknight] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[scores={crusadekit=1}] run title @s[tag=!kitknight] subtitle {"text":"Knight","color":"dark_green","bold":true}
execute unless entity @s[scores={crusadekit=1}] at @s[tag=!kitknight] run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 1.3

execute unless entity @s[scores={crusadekit=1}] run scoreboard players add $knight CmdData 1

execute unless entity @s[scores={crusadekit=1}] run scoreboard players set @s crusadekit 1
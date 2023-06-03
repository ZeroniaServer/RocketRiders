#broken elytra replacing
execute as @a[predicate=custom:indimension,team=Blue,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b}]}] at @s if predicate custom:canopy_nearyellow run tag @s add BreakEly
execute as @a[predicate=custom:indimension,team=Yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b}]}] at @s if predicate custom:canopy_nearblue run tag @s add BreakEly

execute as @a[predicate=custom:indimension,team=Blue,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{Damage:431}}]}] run tag @s add BreakEly
execute as @a[predicate=custom:indimension,team=Yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{Damage:431}}]}] run tag @s add BreakEly

execute as @a[predicate=custom:indimension,tag=BreakEly] run title @s title ["",{"text":" "}]
execute as @a[predicate=custom:indimension,tag=BreakEly] run title @s subtitle ["",{"text":"Elytra ","color":"dark_red","italic":true,"bold":true},{"text":"expired!","color":"red"}]
execute as @a[predicate=custom:indimension,tag=BreakEly] at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.6 1
execute as @a[predicate=custom:indimension,tag=BreakEly] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 1.2
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,team=Blue,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,team=Blue,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:3949738},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[predicate=custom:indimension,team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
tag @a[predicate=custom:indimension,tag=BreakEly] remove BreakEly

#broken trident clearing
clear @a[predicate=custom:indimension,team=Blue,nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{Damage:250}}]}] trident 1
clear @a[predicate=custom:indimension,team=Yellow,nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{Damage:250}}]}] trident 1

#trident auto riptide
execute as @a[predicate=custom:indimension,nbt={Inventory:[{id:"minecraft:trident"}]}] unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/auto_riptide

#trident antidupe
tag @e[predicate=custom:indimension,type=trident,nbt={inGround:1b}] add return
execute as @e[predicate=custom:indimension,type=trident,tag=return] store result score @s playerUUID run data get entity @s Owner[0]
execute if entity @s[tag=!doStacking] as @e[predicate=custom:indimension,type=trident,tag=return] at @s run function rr_powerups:everytick/trident_antidupe
tag @a[predicate=custom:indimension,tag=tridentChecked] remove tridentChecked

#slap fish
execute as @a[predicate=custom:indimension] unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/slap_fish

#infinity saber
execute as @a[predicate=custom:indimension,tag=Infinity] if entity @s[team=!Yellow,team=!Blue] run tag @s remove Infinity
execute if score $infinity PowerupDisplay matches 1.. run scoreboard players add $infinity powerupcount 1
execute if score $infinity powerupcount matches 20.. if score $infinity PowerupDisplay matches 1.. run scoreboard players remove $infinity PowerupDisplay 1
execute if score $infinity powerupcount matches 20.. run scoreboard players set $infinity powerupcount 0
execute if score $infinity PowerupDisplay matches 0 as @a[predicate=custom:indimension,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1.5
execute if score $infinity PowerupDisplay matches 0 as @a[predicate=custom:indimension,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run clear @s bow
execute if score $infinity PowerupDisplay matches 0 as @e[predicate=custom:indimension,type=item,nbt={Item:{id:"minecraft:bow"}}] run function rr_powerups:items/killinfinitysaber
execute if score $infinity PowerupDisplay matches 0 as @a[predicate=custom:indimension,team=Yellow,tag=Infinity] run function game:saberyellow
execute if score $infinity PowerupDisplay matches 0 as @a[predicate=custom:indimension,team=Blue,tag=Infinity] run function game:saberblue
execute if score $infinity PowerupDisplay matches 0 as @a[predicate=custom:indimension,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar [{"text":"Infinity Saber expired.","color":"red"}]
execute if score $infinity PowerupDisplay matches 0 as @a[predicate=custom:indimension,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute if score $infinity PowerupDisplay matches 0 as @a[predicate=custom:indimension,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run tag @s remove Infinity
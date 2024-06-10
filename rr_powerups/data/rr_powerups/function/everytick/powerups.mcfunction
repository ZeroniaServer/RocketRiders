#broken elytra replacing
execute as @a[x=0,team=Blue,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",count:1}]}] at @s if predicate custom:canopy_nearyellow run tag @s add BreakEly
execute as @a[x=0,team=Yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",count:1}]}] at @s if predicate custom:canopy_nearblue run tag @s add BreakEly

execute as @a[x=0,team=Blue,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",count:1,components:{"minecraft:damage":431}}]}] run tag @s add BreakEly
execute as @a[x=0,team=Yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",count:1,components:{"minecraft:damage":431}}]}] run tag @s add BreakEly

execute as @a[x=0,tag=BreakEly] run title @s title ["",{"text":" "}]
execute as @a[x=0,tag=BreakEly] run title @s subtitle ["",{"text":"Elytra ","color":"dark_red","italic":true,"bold":true},{"text":"expired!","color":"red"}]
execute as @a[x=0,tag=BreakEly] at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.6 1
execute as @a[x=0,tag=BreakEly] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 1.2
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,team=Blue,tag=BreakEly] run item replace entity @s armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:3949738,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},hide_additional_tooltip={}]
execute if entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,team=Blue,tag=BreakEly] run item replace entity @s armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:3949738,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={servermode=0},tag=!SMCustom] as @a[x=0,team=Yellow,tag=BreakEly] run item replace entity @s armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]
tag @a[x=0,tag=BreakEly] remove BreakEly

#broken trident clearing
clear @a[x=0,team=Blue,nbt={Inventory:[{id:"minecraft:trident",count:1,components:{"minecraft:damage":250}}]}] trident 1
clear @a[x=0,team=Yellow,nbt={Inventory:[{id:"minecraft:trident",count:1,components:{"minecraft:damage":250}}]}] trident 1

#trident auto riptide
execute as @a[x=0,nbt={Inventory:[{id:"minecraft:trident"}]}] unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/auto_riptide

#trident antidupe
tag @e[x=0,type=trident,nbt={inGround:1b}] add return
execute as @e[x=0,type=trident,tag=return] store result score @s playerUUID run data get entity @s Owner[0]
execute if entity @s[tag=!doStacking] as @e[x=0,type=trident,tag=return] at @s run function rr_powerups:everytick/trident_antidupe
tag @a[x=0,tag=tridentChecked] remove tridentChecked

#slap fish
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/slap_fish

#infinity saber
execute as @a[x=0,tag=Infinity] if entity @s[team=!Yellow,team=!Blue] run tag @s remove Infinity
execute if score $infinity PowerupDisplay matches 1.. run scoreboard players add $infinity powerupcount 1
execute if score $infinity powerupcount matches 20.. if score $infinity PowerupDisplay matches 1.. run scoreboard players remove $infinity PowerupDisplay 1
execute if score $infinity powerupcount matches 20.. run scoreboard players set $infinity powerupcount 0
execute if score $infinity PowerupDisplay matches 0 as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1.5
execute if score $infinity PowerupDisplay matches 0 as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run clear @s bow
execute if score $infinity PowerupDisplay matches 0 as @e[x=0,type=item,nbt={Item:{id:"minecraft:bow"}}] run function rr_powerups:items/killinfinitysaber
execute if score $infinity PowerupDisplay matches 0 as @a[x=0,team=Yellow,tag=Infinity] run function game:saberyellow
execute if score $infinity PowerupDisplay matches 0 as @a[x=0,team=Blue,tag=Infinity] run function game:saberblue
execute if score $infinity PowerupDisplay matches 0 as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar [{"text":"Infinity Saber expired.","color":"red"}]
execute if score $infinity PowerupDisplay matches 0 as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute if score $infinity PowerupDisplay matches 0 as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run tag @s remove Infinity
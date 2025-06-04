#broken elytra replacing
execute as @a[x=0,team=Blue] at @s if items entity @s armor.chest elytra if predicate custom:canopy_nearyellow run tag @s add BreakEly
execute as @a[x=0,team=Yellow] at @s if items entity @s armor.chest elytra if predicate custom:canopy_nearblue run tag @s add BreakEly

execute as @a[x=0,team=Blue] if items entity @s armor.chest elytra[damage=6] run tag @s add BreakEly
execute as @a[x=0,team=Yellow] if items entity @s armor.chest elytra[damage=6] run tag @s add BreakEly

execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] run title @s title ["",{"text":" "}]
execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] run title @s subtitle ["",{"text":"Elytra ","color":"dark_red","italic":true,"bold":true},{"text":"expired!","color":"red"}]
execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.6 1
execute as @a[x=0,tag=BreakEly,tag=!BreakElyMsg] at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 1.2
tag @a[x=0,tag=BreakEly] add BreakElyMsg
execute as @a[x=0,team=Blue,tag=BreakEly,predicate=custom:not_falling] run item replace entity @s armor.chest with minecraft:leather_chestplate[equippable={slot:"chest",equip_sound:"minecraft:intentionally_empty",asset_id:"leather"},trim={material:"minecraft:quartz",pattern:"minecraft:vex"},custom_name=[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}],dyed_color=3949738,unbreakable={},enchantments={binding_curse:1},enchantment_glint_override=false,attribute_modifiers=[{id:"rocketriders:chestplate",slot:"chest",amount:3,operation:"add_value",type:"armor"}],tooltip_display={"hidden_components":["minecraft:unbreakable","minecraft:enchantments","minecraft:attribute_modifiers","minecraft:dyed_color","minecraft:can_place_on","minecraft:can_break","minecraft:fireworks","minecraft:trim","minecraft:banner_patterns"]}]
execute as @a[x=0,team=Yellow,tag=BreakEly,predicate=custom:not_falling] run item replace entity @s armor.chest with minecraft:leather_chestplate[equippable={slot:"chest",equip_sound:"minecraft:intentionally_empty",asset_id:"leather"},trim={material:"minecraft:netherite",pattern:"minecraft:spire"},custom_name=[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}],dyed_color=16768000,unbreakable={},enchantments={binding_curse:1},enchantment_glint_override=false,attribute_modifiers=[{id:"rocketriders:chestplate",slot:"chest",amount:3,operation:"add_value",type:"armor"}],tooltip_display={"hidden_components":["minecraft:unbreakable","minecraft:enchantments","minecraft:attribute_modifiers","minecraft:dyed_color","minecraft:can_place_on","minecraft:can_break","minecraft:fireworks","minecraft:trim","minecraft:banner_patterns"]}]
tag @a[x=0,tag=BreakElyMsg,predicate=custom:not_falling] remove BreakEly
tag @a[x=0,tag=BreakElyMsg,predicate=custom:not_falling] remove BreakElyMsg

#broken trident clearing
clear @a[x=0,team=Blue] trident[damage=8]
clear @a[x=0,team=Yellow] trident[damage=8]

#trident auto riptide
execute as @a[x=0,predicate=custom:has_trident_in_inventory] unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/auto_riptide

#trident antidupe
tag @e[x=0,type=trident,nbt={inGround:1b}] add return
execute as @e[x=0,type=trident,tag=return] store result score @s playerUUID run data get entity @s Owner[0]
execute if entity @s[tag=!doStacking] as @e[x=0,type=trident,tag=return] at @s run function rr_powerups:everytick/trident_antidupe
tag @a[x=0,tag=tridentChecked] remove tridentChecked

#slap fish
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run function rr_powerups:everytick/slap_fish

#infinity saber
execute as @a[x=0,tag=Infinity] if entity @s[team=!Yellow,team=!Blue] run scoreboard players reset @s infinity
execute as @a[x=0,tag=Infinity] if entity @s[team=!Yellow,team=!Blue] run tag @s remove Infinity
execute as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] run scoreboard players add @s infinity 1
execute as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] if score @s infinity matches 600.. at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1.5
execute as @a[x=0,tag=Infinity,team=Blue] if score @s infinity matches 600.. run function rr_powerups:items/saber/normal/blue
execute as @a[x=0,tag=Infinity,team=Yellow] if score @s infinity matches 600.. run function rr_powerups:items/saber/normal/yellow
# execute as @a[x=0,team=Yellow,tag=Infinity,scores={infinity=600..}] run loot give @s loot items:misc/shooting_saber
# execute as @a[x=0,team=Blue,tag=Infinity,scores={infinity=600..}] run loot give @s loot items:misc/shooting_saber
execute as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] if score @s infinity matches 600.. run title @s actionbar [{"text":"Infinity Saber expired.","color":"red"}]
execute as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] if score @s infinity matches 600.. run tag @s add DelayActionbar
execute as @a[x=0,tag=Infinity] unless entity @s[team=!Yellow,team=!Blue] if score @s infinity matches 600.. run tag @s remove Infinity
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] if score @s infinity matches 600.. run scoreboard players reset @s infinity
#Antidupe check
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue store result score @s HasElytra run clear @s elytra 0
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow store result score @s HasElytra run clear @s elytra 0

#Title/giving
#Yellow
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run title @s actionbar {"text":"Elytra repaired.","color":"aqua"}
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run tag @s add DelayActionbar
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run scoreboard players set @s actionbardelay 0
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue if entity @s[scores={HasElytra=1..}] run clear @s elytra
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue run title @s[scores={HasElytra=0}] title ["",{"text":" "}]
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue run title @s[scores={HasElytra=0}] subtitle ["",{"text":"Elytra ","color":"dark_purple","italic":true,"bold":true},{"text":"obtained. ","color":"light_purple"},{"text":"Jump to activate!","color":"light_purple","italic":true}]
execute if entity @s[team=Yellow] unless predicate custom:canopy_nearblue run item replace entity @s armor.chest with minecraft:elytra[enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,max_damage=7,custom_name='[{"text":"Elytra","color":"dark_purple","bold":true}]',lore=['[{"text":"Useful for short flights!","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Breaks when you get near","italic":false,"color":"red"}]','[{"text":"the enemy base.","italic":false,"color":"red"}]'],attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:3,slot:"chest",type:"generic.armor",id:"rr_powerups:elytra_armor"}],show_in_tooltip:0b}] 1

#BLUE
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.2 1
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run title @s actionbar {"text":"Elytra repaired.","color":"aqua"}
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run tag @s add DelayActionbar
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run scoreboard players set @s actionbardelay 0
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow if entity @s[scores={HasElytra=1..}] run clear @s elytra
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow run title @s[scores={HasElytra=0}] title ["",{"text":" "}]
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow run title @s[scores={HasElytra=0}] subtitle ["",{"text":"Elytra ","color":"dark_purple","italic":true,"bold":true},{"text":"obtained. ","color":"light_purple"},{"text":"Jump to activate!","color":"light_purple","italic":true}]
execute if entity @s[team=Blue] unless predicate custom:canopy_nearyellow run item replace entity @s armor.chest with minecraft:elytra[enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,max_damage=7,custom_name='[{"text":"Elytra","color":"dark_purple","bold":true}]',lore=['[{"text":"Useful for short flights!","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Breaks when you get near","italic":false,"color":"red"}]','[{"text":"the enemy base.","italic":false,"color":"red"}]'],attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:3,slot:"chest",type:"generic.armor",id:"rr_powerups:elytra_armor"}],show_in_tooltip:0b}] 1

tag @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=tetrisTime] add givenElytra
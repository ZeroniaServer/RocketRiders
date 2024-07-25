execute if entity @s[tag=JoinBlue,scores={crusadekit=2}] run scoreboard players reset @s crusadekit
execute if entity @s[tag=JoinYellow,scores={crusadekit=2}] run scoreboard players reset @s crusadekit

execute unless entity @s[scores={crusadekit=2}] run clear @s
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Blue] hotbar.0 with minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"blue","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1,sharpness:4}]
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Blue] armor.head with minecraft:chainmail_helmet[trim={material:"minecraft:lapis",pattern:"minecraft:tide",show_in_tooltip:0b},custom_name='[{"text":"Blue Archer Helmet","color":"blue","bold":true,"italic":false}]',unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Blue] armor.chest with minecraft:chainmail_chestplate[trim={material:"minecraft:lapis",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Archer Chestplate","color":"blue","bold":true,"italic":false}]',unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Blue] armor.legs with minecraft:leather_leggings[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Archer Leggings","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:3949738,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:leggings",slot:"legs",amount:2,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=2}] if function game:norankboots run item replace entity @s[team=Blue] armor.feet with minecraft:leather_boots[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:3949738,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:boots",slot:"feet",amount:1,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]

execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Yellow] hotbar.0 with minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"gold","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1,sharpness:4}]
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Yellow] armor.head with minecraft:chainmail_helmet[trim={material:"minecraft:gold",pattern:"minecraft:raiser",show_in_tooltip:0b},custom_name='[{"text":"Yellow Archer Helmet","color":"gold","bold":true,"italic":false}]',unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Yellow] armor.chest with minecraft:chainmail_chestplate[trim={material:"minecraft:gold",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Archer Chestplate","color":"gold","bold":true,"italic":false}]',unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=2}] run item replace entity @s[team=Yellow] armor.legs with minecraft:leather_leggings[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Archer Leggings","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:leggings",slot:"legs",amount:2,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=2}] if function game:norankboots run item replace entity @s[team=Yellow] armor.feet with minecraft:leather_boots[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:boots",slot:"feet",amount:1,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]

execute unless entity @s[scores={crusadekit=2}] run tag @s remove fullOffhand
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!GameStarted,tag=!GameEnd,scores={count=..599}] unless entity @s[scores={crusadekit=2}] run item replace entity @s weapon.offhand with minecraft:arrow[custom_name='{"text":"Arrow","color":"light_purple","italic":true,"bold":true}',custom_data={Lobby:1b,Droppable:1b}] 20
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=GameStarted,tag=!GameEnd] run function rr_crusade:items/util/givearrows

execute unless entity @s[scores={crusadekit=2}] run tellraw @s[team=Blue,tag=!kitarcher] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Archer","bold":true,"color":"red"},{"text":"!","color":"green"},"\n",{"text":"List of items you can obtain: ","color":"gray"},{"text":"Gemini","color":"green"},{"text":", ","color":"gray"},{"text":"Slasher","color":"green"},{"text":", ","color":"gray"},{"text":"Thunderbolt","color":"yellow"},{"text":", ","color":"gray"},{"text":"Hurricane","color":"yellow"},{"text":", ","color":"gray"},{"text":"Broadsword","color":"dark_purple"},{"text":", ","color":"gray"},{"text":"Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},"\n","\n",{"text":"Your equipment: ","color":"gray"},{"text":"Shooting Saber","color":"blue"},{"text":", ","color":"gray"},{"text":"Archer Helmet","color":"blue"},{"text":", ","color":"gray"},{"text":"Archer Chestplate","color":"blue"},{"text":", ","color":"gray"},{"text":"Archer Leggings","color":"blue"},"\n"]
execute unless entity @s[scores={crusadekit=2}] run tellraw @s[team=Yellow,tag=!kitarcher] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Archer","bold":true,"color":"red"},{"text":"!","color":"green"},"\n",{"text":"List of items you can obtain: ","color":"gray"},{"text":"Gemini","color":"green"},{"text":", ","color":"gray"},{"text":"Slasher","color":"green"},{"text":", ","color":"gray"},{"text":"Thunderbolt","color":"yellow"},{"text":", ","color":"gray"},{"text":"Hurricane","color":"yellow"},{"text":", ","color":"gray"},{"text":"Broadsword","color":"dark_purple"},{"text":", ","color":"gray"},{"text":"Arrows","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Canopy","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Splash","color":"light_purple"},"\n","\n",{"text":"Your equipment: ","color":"gray"},{"text":"Shooting Saber","color":"gold"},{"text":", ","color":"gray"},{"text":"Archer Helmet","color":"gold"},{"text":", ","color":"gray"},{"text":"Archer Chestplate","color":"gold"},{"text":", ","color":"gray"},{"text":"Archer Leggings","color":"gold"},"\n"]

execute unless entity @s[scores={crusadekit=2}] run title @s[tag=!kitarcher] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[scores={crusadekit=2}] run title @s[tag=!kitarcher] subtitle {"text":"Archer","color":"red","bold":true}
execute unless entity @s[scores={crusadekit=2}] at @s[tag=!kitarcher] run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1 1

execute unless entity @s[scores={crusadekit=2}] run scoreboard players add $archer CmdData 1

execute unless entity @s[scores={crusadekit=2}] run scoreboard players set @s crusadekit 2
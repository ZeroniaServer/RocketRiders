execute if entity @s[tag=JoinBlue,scores={crusadekit=1}] run scoreboard players reset @s crusadekit
execute if entity @s[tag=JoinYellow,scores={crusadekit=1}] run scoreboard players reset @s crusadekit

execute unless entity @s[scores={crusadekit=1}] run clear @s
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] hotbar.0 with minecraft:stone_sword[custom_model_data=1,unbreakable={},custom_name='[{"text":"Knight Sword","italic":false,"bold":true,"color":"blue"}]',lore=['[{"translate":"A sharp sword, made to"}]','[{"translate":"kill the strongest enemies."}]']]
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] weapon.offhand with minecraft:shield[max_damage=10,custom_name='[{"text":"Knight Shield","italic":false,"bold":true,"color":"blue"}]',lore=['[{"translate":"A not-so-sturdy shield."}]'],base_color="blue",banner_patterns=[{pattern:"flower",color:"light_blue"},{pattern:"border",color:"light_blue"}]]
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] armor.head with minecraft:netherite_helmet[trim={material:"minecraft:lapis",pattern:"minecraft:tide",show_in_tooltip:0b},custom_name='[{"text":"Blue Knight Helmet","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:3949738,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Knight Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:3949738,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:chestplate",slot:"chest",amount:3,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Blue] armor.legs with minecraft:iron_leggings[trim={material:"minecraft:lapis",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Knight Leggings","color":"blue","bold":true,"italic":false}]',unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:leggings",slot:"legs",amount:2,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=1}] if function game:norankboots run item replace entity @s[team=Blue] armor.feet with minecraft:leather_boots[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Boots","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:3949738,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:boots",slot:"feet",amount:1,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]

execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] hotbar.0 with minecraft:stone_sword[custom_model_data=2,unbreakable={},custom_name='[{"text":"Knight Sword","italic":false,"bold":true,"color":"gold"}]',lore=['[{"translate":"A sharp sword, made to"}]','[{"translate":"kill the strongest enemies."}]']]
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] weapon.offhand with minecraft:shield[max_damage=10,custom_name='[{"text":"Knight Shield","italic":false,"bold":true,"color":"gold"}]',lore=['[{"translate":"A not-so-sturdy shield."}]'],base_color="yellow",banner_patterns=[{pattern:"flower",color:"orange"},{pattern:"border",color:"orange"}]]
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] armor.head with minecraft:netherite_helmet[trim={material:"minecraft:gold",pattern:"minecraft:raiser",show_in_tooltip:0b},custom_name='[{"text":"Yellow Knight Helmet","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:3949738,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:chestplate",slot:"chest",amount:3,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=1}] run item replace entity @s[team=Yellow] armor.legs with minecraft:iron_leggings[trim={material:"minecraft:gold",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Knight Leggings","color":"gold","bold":true,"italic":false}]',unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:leggings",slot:"legs",amount:2,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={crusadekit=1}] if function game:norankboots run item replace entity @s[team=Yellow] armor.feet with minecraft:leather_boots[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Boots","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:boots",slot:"feet",amount:1,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]

execute unless entity @s[scores={crusadekit=1}] run tellraw @s[team=Blue,tag=!kitknight] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Knight","bold":true,"color":"dark_green"},{"text":"!","color":"green"},"\n",{"text":"List of items you can obtain: ","color":"gray"},{"text":"Blade","color":"green"},{"text":", ","color":"gray"},{"text":"Citadel","color":"green"},{"text":", ","color":"gray"},{"text":"Auxiliary","color":"red"},{"text":", ","color":"gray"},{"text":"Warhead","color":"red"},{"text":", ","color":"gray"},{"text":"Juggerbuster","color":"red"},{"text":", ","color":"gray"},{"text":"Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Obsidian Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"ICBM","color":"light_purple"},"\n","\n",{"text":"Your equipment: ","color":"gray"},{"text":"Knight Sword","color":"blue"},{"text":", ","color":"gray"},{"text":"Knight Shield","color":"blue"},{"text":", ","color":"gray"},{"text":"Knight Helmet","color":"blue"},{"text":", ","color":"gray"},{"text":"Knight Chestplate","color":"blue"},{"text":", ","color":"gray"},{"text":"Knight Leggings","color":"blue"},"\n"]
execute unless entity @s[scores={crusadekit=1}] run tellraw @s[team=Yellow,tag=!kitknight] ["",{"text":"Selected Kit: ","color":"green"},{"text":"Knight","bold":true,"color":"dark_green"},{"text":"!","color":"green"},"\n",{"text":"List of items you can obtain: ","color":"gray"},{"text":"Blade","color":"green"},{"text":", ","color":"gray"},{"text":"Citadel","color":"green"},{"text":", ","color":"gray"},{"text":"Auxiliary","color":"red"},{"text":", ","color":"gray"},{"text":"Warhead","color":"red"},{"text":", ","color":"gray"},{"text":"Juggerbuster","color":"red"},{"text":", ","color":"gray"},{"text":"Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"Obsidian Shield","color":"light_purple"},{"text":", ","color":"gray"},{"text":"ICBM","color":"light_purple"},"\n","\n",{"text":"Your equipment: ","color":"gray"},{"text":"Knight Sword","color":"gold"},{"text":", ","color":"gray"},{"text":"Knight Shield","color":"gold"},{"text":", ","color":"gray"},{"text":"Knight Helmet","color":"gold"},{"text":", ","color":"gray"},{"text":"Knight Chestplate","color":"gold"},{"text":", ","color":"gray"},{"text":"Knight Leggings","color":"gold"},"\n"]

execute unless entity @s[scores={crusadekit=1}] run title @s[tag=!kitknight] title {"text":"Selected Kit:","color":"green"}
execute unless entity @s[scores={crusadekit=1}] run title @s[tag=!kitknight] subtitle {"text":"Knight","color":"dark_green","bold":true}
execute unless entity @s[scores={crusadekit=1}] at @s[tag=!kitknight] run playsound minecraft:entity.zombie.attack_iron_door master @s ~ ~ ~ 1 1.3

execute unless entity @s[scores={crusadekit=1}] run scoreboard players add $knight CmdData 1

execute unless entity @s[scores={crusadekit=1}] run scoreboard players set @s crusadekit 1
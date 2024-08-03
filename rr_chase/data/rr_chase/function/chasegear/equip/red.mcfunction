item replace entity @s armor.chest with minecraft:leather_chestplate[custom_name='[{"text":"Red Chestplate","color":"red","bold":true,"italic":false}]',dyed_color={rgb:16711680,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:chestplate",slot:"chest",amount:3,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]
item replace entity @s armor.legs with minecraft:leather_leggings[custom_name='[{"text":"Red Leggings","color":"red","bold":true,"italic":false}]',dyed_color={rgb:16711680,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:leggings",slot:"legs",amount:2,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]
execute if function game:norankboots run item replace entity @s armor.feet with minecraft:leather_boots[custom_name='[{"text":"Red Boots","color":"red","bold":true,"italic":false}]',dyed_color={rgb:16711680,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,attribute_modifiers={modifiers:[{id:"rocketriders:boots",slot:"feet",amount:1,operation:"add_value",type:"generic.armor"}],show_in_tooltip:0b},hide_additional_tooltip={}]

item replace entity @s hotbar.0 with minecraft:bow[custom_name='{"translate":"Shooting Saber","color":"red","bold":true,"italic":false}',lore=['{"translate":"A weapon used for both"}','{"translate":"ranged and melee attacks."}'],unbreakable={show_in_tooltip:0b},enchantments={flame:1},attribute_modifiers=[{id:"rocketriders:saber",type:"generic.attack_damage",amount:3,operation:"add_value",slot:"mainhand"}]]
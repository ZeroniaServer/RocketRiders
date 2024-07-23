
execute if score SwapSide swapside matches 1 run item replace entity @s[team=Blue] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Dark Blue Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:524382,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 1 run item replace entity @s[team=Blue] armor.legs with minecraft:leather_leggings[trim={material:"minecraft:netherite",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Dark Blue Leggings","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:524382,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 1 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noYZELO] run item replace entity @s[team=Blue] armor.feet with minecraft:leather_boots[trim={material:"minecraft:netherite",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Dark Blue Boots","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:524382,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 1 unless entity @e[x=0,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Blue] armor.feet with minecraft:leather_boots[trim={material:"minecraft:netherite",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Dark Blue Boots","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:524382,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]

execute if score SwapSide swapside matches 1 run item replace entity @s[team=Yellow] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Light Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16776369,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 1 run item replace entity @s[team=Yellow] armor.legs with minecraft:leather_leggings[trim={material:"minecraft:quartz",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Light Yellow Leggings","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16776369,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 1 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noYZELO] run item replace entity @s[team=Yellow] armor.feet with minecraft:leather_boots[trim={material:"minecraft:quartz",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Light Yellow Boots","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16776369,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 1 unless entity @e[x=0,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Yellow] armor.feet with minecraft:leather_boots[trim={material:"minecraft:quartz",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Light Yellow Boots","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16776369,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]

execute if score SwapSide swapside matches 0 run item replace entity @s[team=Blue] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Light Blue Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:10137855,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 0 run item replace entity @s[team=Blue] armor.legs with minecraft:leather_leggings[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Light Blue Leggings","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:10137855,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 0 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noYZELO] run item replace entity @s[team=Blue] armor.feet with minecraft:leather_boots[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Light Blue Boots","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:10137855,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 0 unless entity @e[x=0,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Blue] armor.feet with minecraft:leather_boots[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Light Blue Boots","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:10137855,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]

execute if score SwapSide swapside matches 0 run item replace entity @s[team=Yellow] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Dark Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:9538560,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 0 run item replace entity @s[team=Yellow] armor.legs with minecraft:leather_leggings[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Dark Yellow Leggings","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:9538560,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 0 if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=noYZELO] run item replace entity @s[team=Yellow] armor.feet with minecraft:leather_boots[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Dark Yellow Boots","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:9538560,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
execute if score SwapSide swapside matches 0 unless entity @e[x=0,type=armor_stand,tag=rr_duel] run item replace entity @s[team=Yellow] armor.feet with minecraft:leather_boots[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Dark Yellow Boots","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:9538560,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=true,hide_additional_tooltip={}]
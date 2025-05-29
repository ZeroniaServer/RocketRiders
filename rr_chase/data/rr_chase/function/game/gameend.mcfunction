clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data~{nova:1b}]
function rr_chase:game/overwrite
execute if entity @s[scores={endtimer=1}] as @a[x=0,team=Blue,tag=Winner,limit=1] if entity @e[x=0,type=armor_stand,tag=chaseEnabled] run function rr_chase:chasegear/givegear
execute if entity @s[scores={endtimer=1}] as @a[x=0,team=Blue,tag=Winner,limit=1] if entity @e[x=0,type=armor_stand,tag=chaseEnabled] run item replace entity @s armor.chest with minecraft:elytra[equippable={slot:"chest",damage_on_hurt:false,equip_sound:"minecraft:intentionally_empty",asset_id:"elytra"},enchantments={binding_curse:1},enchantment_glint_override=false,unbreakable={},custom_name=[{"text":"Elytra","color":"blue","bold":true,"italic":false}],tooltip_display={"hidden_components":["minecraft:unbreakable","minecraft:enchantments","minecraft:attribute_modifiers","minecraft:dyed_color","minecraft:can_place_on","minecraft:can_break","minecraft:fireworks","minecraft:trim","minecraft:banner_patterns"]}] 1
execute if entity @s[scores={endtimer=1}] as @a[x=0,team=Blue,tag=Loser] run function rr_chase:chasegear/losesaber
execute if entity @s[scores={endtimer=1}] run effect give @a[x=0,team=Blue,tag=Loser] weakness infinite 100 true
execute if entity @s[scores={endtimer=1}] run function rr_chase:game/endstats
scoreboard players reset * FlagScore
execute if entity @s[scores={endtimer=1..}] run kill @e[x=0,type=marker,tag=airDetect,limit=1]
execute if entity @s[scores={endtimer=1..}] run fill 13 74 68 7 64 61 moving_piston replace air
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead players none
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead name ["",{"text":"No one is in the lead!","color":"red"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_chase:lead value 0
execute if entity @s[scores={endtimer=1..10}] run function rr_chase:chaseblocks/killall
tag @a[x=0,team=Blue] remove InLead
execute if entity @s[scores={endtimer=1..2}] run tp @a[x=0,team=Blue,tag=Loser] 12 64 -66 0 0
execute if entity @s[scores={endtimer=1..2}] run tp @a[x=0,team=Blue,tag=Winner,limit=1] 12 64 64 180 0
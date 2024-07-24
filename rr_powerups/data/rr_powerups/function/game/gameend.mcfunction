function rr_powerups:everytick/spawnables
clear @a[x=0,team=Blue] #custom:clear
clear @a[x=0,team=Blue] crossbow[custom_data={nova:1b}]
clear @a[x=0,team=Blue] #rr_powerups:clear
clear @a[x=0,team=Yellow] #custom:clear
clear @a[x=0,team=Yellow] crossbow[custom_data={nova:1b}]
clear @a[x=0,team=Yellow] #rr_powerups:clear
execute as @e[x=0,type=marker,tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=YellowWon] run item replace entity @a[x=0,team=Blue] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:1247871,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,hide_additional_tooltip={}]
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=BlueWon] run item replace entity @a[x=0,team=Yellow] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},enchantments={levels:{binding_curse:1},show_in_tooltip:0b},enchantment_glint_override=false,hide_additional_tooltip={}]
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=YellowWon] run item replace entity @a[x=0,team=Blue] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:quartz",pattern:"minecraft:vex",show_in_tooltip:0b},custom_name='[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',dyed_color={rgb:1247871,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=BlueWon] run item replace entity @a[x=0,team=Yellow] armor.chest with minecraft:leather_chestplate[trim={material:"minecraft:netherite",pattern:"minecraft:spire",show_in_tooltip:0b},custom_name='[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',dyed_color={rgb:16768000,show_in_tooltip:0b},unbreakable={show_in_tooltip:0b},hide_additional_tooltip={}]
execute if entity @s[scores={endtimer=101},tag=doTying,tag=!tyingOff,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=!doTying,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] bCapturedTime 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] yCapturedTime 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureBlue 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] captureYellow 0
scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
execute if entity @s[scores={endtimer=1}] as @a[x=0,tag=Infinity] run clear @s bow
tag @a[x=0] remove Infinity
scoreboard players reset $infinity powerupcount
scoreboard players reset $infinity PowerupDisplay
tag @a[x=0] remove HoldingSlapFish
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_powerups:capture_progress players none
execute if entity @s[scores={endtimer=1..}] run scoreboard players set @e[x=0,type=marker,tag=captureMiddle] capturePoint 0
execute if entity @s[scores={endtimer=1..}] run kill @e[x=0,type=bee]
execute if entity @s[scores={endtimer=569..}] run kill @e[x=0,type=armor_stand,tag=BeeShieldDisplay]
execute if entity @s[scores={endtimer=569..}] run kill @e[x=0,type=marker,tag=animBshield]
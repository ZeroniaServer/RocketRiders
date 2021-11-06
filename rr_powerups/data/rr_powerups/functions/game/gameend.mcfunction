function rr_powerups:everytick/spawnables
clear @a[team=Blue] #custom:clear
clear @a[team=Blue] crossbow{nova:1b}
clear @a[team=Blue] #rr_powerups:clear
clear @a[team=Yellow] #custom:clear
clear @a[team=Yellow] crossbow{nova:1b}
clear @a[team=Yellow] #rr_powerups:clear
execute as @e[type=marker,tag=captureMiddle] at @s run function rr_powerups:everytick/powerup_platform
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=YellowWon] run item replace entity @a[team=Blue] armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute if entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=BlueWon] run item replace entity @a[team=Yellow] armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1,Enchantments:[{id:"binding_curse",lvl:1}]}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=YellowWon] run item replace entity @a[team=Blue] armor.chest with leather_chestplate{display:{Name:'[{"text":"Blue Chestplate","color":"blue","bold":true,"italic":false}]',color:1247871},HideFlags:127,Unbreakable:1}
execute unless entity @s[scores={servermode=0},tag=!SMCustom] if entity @s[scores={endtimer=1},tag=BlueWon] run item replace entity @a[team=Yellow] armor.chest with leather_chestplate{display:{Name:'[{"text":"Yellow Chestplate","color":"gold","bold":true,"italic":false}]',color:16768000},HideFlags:127,Unbreakable:1}
execute if entity @s[scores={endtimer=101},tag=doTying,tag=!tyingOff,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=!doTying,tag=!BothWon] run function game:endstats
execute if entity @s[scores={endtimer=1},tag=BothWon] run function game:endstats
scoreboard players set @e[type=marker,tag=captureMiddle] bCapturedTime 0
scoreboard players set @e[type=marker,tag=captureMiddle] yCapturedTime 0
scoreboard players set @e[type=marker,tag=captureMiddle] captureBlue 0
scoreboard players set @e[type=marker,tag=captureMiddle] captureYellow 0
scoreboard players set @e[type=marker,tag=captureMiddle] capturePoint 0
execute if entity @s[scores={endtimer=1}] as @a[tag=Infinity] run clear @s bow
tag @a remove Infinity
scoreboard players reset $infinity powerupcount
scoreboard players reset $infinity PowerupDisplay
tag @a remove HoldingSlapFish
execute if entity @s[scores={endtimer=1..}] run bossbar set rr_powerups:capture_progress players none
execute if entity @s[scores={endtimer=1..}] run scoreboard players set @e[type=marker,tag=captureMiddle] capturePoint 0
execute if entity @s[scores={endtimer=1..}] run kill @e[type=bee]
execute if entity @s[scores={endtimer=569..}] run kill @e[type=armor_stand,tag=BeeShieldDisplay]
execute if entity @s[scores={endtimer=569..}] run kill @e[type=marker,tag=animBshield]
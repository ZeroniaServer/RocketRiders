clear @a[team=Blue] #custom:clear
clear @a[team=Yellow] #custom:clear
clear @a[team=Blue] #rr_powerups:clear
clear @a[team=Yellow] #rr_powerups:clear
execute as @e[tag=captureMiddle,type=area_effect_cloud] at @s run function rr_powerups:everytick/powerup_platform
execute as @s[scores={endtimer=1},tag=YellowWon] run replaceitem entity @a[team=Blue] armor.chest leather_chestplate{HideFlags:7,Unbreakable:1,display:{color:1247871},Enchantments:[{id:binding_curse,lvl:1}]} 1
execute as @s[scores={endtimer=1},tag=BlueWon] run replaceitem entity @a[team=Yellow] armor.chest leather_chestplate{HideFlags:7,Unbreakable:1,display:{color:16768000},Enchantments:[{id:binding_curse,lvl:1}]} 1
execute as @s[scores={endtimer=81},tag=doTying,tag=!tyingOff] run function game:endstats
execute as @s[scores={endtimer=1},tag=!doTying] run function game:endstats
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] bCapturedTime 0
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] yCapturedTime 0
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] captureBlue 0
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] captureYellow 0
scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] capturePoint 0
execute as @s[scores={endtimer=1}] as @a[tag=Infinity] run clear @s bow
tag @a remove Infinity
scoreboard players reset $infinity powerupcount
scoreboard players reset $infinity PowerupDisplay
tag @a remove HoldingSlapFish
execute as @s[scores={endtimer=1..}] run bossbar set rr_powerups:capture_progress players none
execute as @s[scores={endtimer=1..}] run scoreboard players set @e[tag=captureMiddle,type=area_effect_cloud] capturePoint 0
tag @s add powerupsLast
execute unless entity @e[type=armor_stand,tag=rr_chase,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_chase","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Chase Mode"}'}
bossbar add rr_chase:lead ["",{"text":"No one is in the lead!","color":"red"}]
bossbar set rr_chase:lead color red
bossbar set rr_chase:lead style notched_10
bossbar set rr_chase:lead max 10
scoreboard objectives add BreakCBRed minecraft.mined:minecraft.red_stained_glass
scoreboard objectives add BreakCBCyan minecraft.mined:minecraft.cyan_stained_glass
scoreboard objectives add BreakCBPurple minecraft.mined:minecraft.purple_stained_glass
scoreboard objectives add BreakCBTint minecraft.mined:minecraft.tinted_glass
scoreboard objectives add ChaseAlarm dummy
scoreboard objectives add ArmorColor dummy
execute if entity @e[type=armor_stand,tag=rr_chase,limit=1] run tellraw @s {"text":"Chase Mode installed.","color":"green","bold":true}
scoreboard players add @e[type=armor_stand,tag=rr_chase,limit=1] CmdData 1
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop
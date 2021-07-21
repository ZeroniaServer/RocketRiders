execute unless entity @e[type=armor_stand,tag=rr_chase,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_chase","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Chase Mode"}'}
bossbar add rr_chase:lead ["",{"text":"No one is in the lead!","color":"dark_aqua"}]
bossbar set rr_chase:lead color blue
bossbar set rr_chase:lead style notched_10
bossbar set rr_chase:lead max 10
execute if entity @e[type=armor_stand,tag=rr_chase,limit=1] run tellraw @s {"text":"Chase Mode installed.","color":"green","bold":true}
scoreboard players add @e[type=armor_stand,tag=rr_chase,limit=1] CmdData 1
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop
execute unless entity @e[tag=rr_chase,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_chase","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Chase Mode"}'}
bossbar add rr_chase:lead ["",{"text":"No one is in the lead!","color":"dark_aqua"}]
bossbar set rr_chase:lead color blue
bossbar set rr_chase:lead style notched_10
bossbar set rr_chase:lead max 10
execute if entity @e[tag=rr_chase,limit=1,type=armor_stand] run tellraw @s {"text":"Chase Mode installed.","color":"green","bold":true}
scoreboard players add @e[tag=rr_chase,limit=1,type=armor_stand] CmdData 1
execute unless entity @e[tag=PlacerClear,type=marker] run function game:forcestop
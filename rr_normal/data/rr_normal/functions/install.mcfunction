execute unless entity @e[x=0,type=armor_stand,tag=rr_normal,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_normal","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Normal Mode"}'}
execute if entity @e[x=0,type=armor_stand,tag=rr_normal,limit=1] run tellraw @s {"text":"Normal Mode installed.","color":"green","bold":true}
scoreboard players add @e[x=0,type=armor_stand,tag=rr_normal,limit=1] CmdData 1
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
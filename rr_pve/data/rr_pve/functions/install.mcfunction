execute unless entity @e[type=armor_stand,tag=rr_pve,limit=1] run summon armor_stand 23 216 -18 {Tags:["rr_pve","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"PVE Mode"}'}
execute if entity @e[type=armor_stand,tag=rr_pve,limit=1] run tellraw @s {"text":"PVE Mode installed.","color":"green","bold":true}
scoreboard players add @e[type=armor_stand,tag=rr_pve,limit=1] CmdData 1
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop
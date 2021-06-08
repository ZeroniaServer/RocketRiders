execute unless entity @e[tag=rr_crusade,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_crusade","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Crusade Mode"}'}
execute if entity @e[tag=rr_crusade,limit=1,type=armor_stand] run tellraw @s {"text":"Crusade Mode installed.","color":"green","bold":true}
scoreboard players add @e[tag=rr_crusade,limit=1,type=armor_stand] CmdData 1
execute unless entity @e[tag=PlacerClear,type=marker] run function game:forcestop
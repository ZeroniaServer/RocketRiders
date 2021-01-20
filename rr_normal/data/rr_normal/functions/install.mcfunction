execute unless entity @e[tag=rr_normal,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_normal","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Normal Mode"}'}
execute if entity @e[tag=rr_normal,limit=1,type=armor_stand] run tellraw @s {"text":"Normal Mode installed.","color":"green","bold":"true"}
scoreboard players add @e[tag=rr_normal,limit=1,type=armor_stand] CmdData 1
execute unless entity @e[tag=PlacerClear,type=area_effect_cloud] run function game:forcestop
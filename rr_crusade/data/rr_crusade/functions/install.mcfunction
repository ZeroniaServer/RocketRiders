execute unless entity @e[tag=rr_crusade,limit=1,type=armor_stand] run summon armor_stand 23 216 -18 {Tags:["rr_crusade","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Crusade Mode"}'}
scoreboard objectives add nexushealth dummy
scoreboard objectives add givecanopy dummy
execute unless entity @e[type=area_effect_cloud,tag=BlueNexusA,limit=1] run summon area_effect_cloud -10 84 -32 {Tags:["BlueNexusA"],Duration:2000000000}
execute unless entity @e[type=area_effect_cloud,tag=BlueNexusB,limit=1] run summon area_effect_cloud 34 84 -32 {Tags:["BlueNexusB"],Duration:2000000000}
execute unless entity @e[type=area_effect_cloud,tag=BlueNexusC,limit=1] run summon area_effect_cloud 12 94 -63 {Tags:["BlueNexusC"],Duration:2000000000}
execute unless entity @e[type=area_effect_cloud,tag=YellowNexusA,limit=1] run summon area_effect_cloud 34 84 32 {Tags:["YellowNexusA"],Duration:2000000000}
execute unless entity @e[type=area_effect_cloud,tag=YellowNexusB,limit=1] run summon area_effect_cloud -10 84 32 {Tags:["YellowNexusB"],Duration:2000000000}
execute unless entity @e[type=area_effect_cloud,tag=YellowNexusC,limit=1] run summon area_effect_cloud 12 94 63 {Tags:["YellowNexusC"],Duration:2000000000}
execute if entity @e[tag=rr_crusade,limit=1,type=armor_stand] run tellraw @s {"text":"Crusade Mode installed.","color":"green","bold":"true"}
scoreboard players add @e[tag=rr_crusade,limit=1,type=armor_stand] CmdData 1
execute unless entity @e[tag=PlacerClear,type=area_effect_cloud] run function game:forcestop
execute unless entity @e[type=armor_stand,tag=rr_crusade,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_crusade","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Crusade Mode"}'}
execute if entity @e[type=armor_stand,tag=rr_crusade,limit=1] run tellraw @s {"text":"Crusade Mode installed.","color":"green","bold":true}
scoreboard players add @e[type=armor_stand,tag=rr_crusade,limit=1] CmdData 1
execute unless entity @e[type=marker,tag=PlacerClear] run function game:forcestop

#> Crusade scoreboards
scoreboard objectives add crusadekit dummy
scoreboard objectives add crusadehp dummy

bossbar add rr_crusade:blue {"text":"Total Crystal Health","color":"white"}
bossbar add rr_crusade:yellow ""

bossbar set rr_crusade:blue color blue
bossbar set rr_crusade:yellow color yellow

bossbar set rr_crusade:blue max 200
bossbar set rr_crusade:yellow max 200
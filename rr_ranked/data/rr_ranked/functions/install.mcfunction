execute unless entity @e[tag=rr_ranked,limit=1] run summon armor_stand 23 216 -18 {Tags:["rr_ranked"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
scoreboard objectives add RoundsWon dummy
scoreboard objectives remove XP
scoreboard objectives add XP dummy
scoreboard objectives add RankScore dummy
scoreboard players set 0 XP 0
execute if entity @e[tag=rr_ranked,limit=1] run tellraw @s {"text":"Ranked 1v1 mode installed.","color":"green","bold":"true"}
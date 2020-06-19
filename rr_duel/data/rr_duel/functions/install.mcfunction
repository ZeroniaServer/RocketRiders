execute unless entity @e[tag=rr_duel,limit=1] run summon armor_stand 23 216 -18 {Tags:["rr_duel"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b}
scoreboard objectives add RoundsWon dummy {"text":"Rounds Won","color":"green","bold":"true"}
scoreboard objectives remove XP
scoreboard objectives add XP dummy
scoreboard objectives add RankScore dummy
scoreboard players set 0 XP 0
scoreboard objectives add Forfeit dummy
scoreboard objectives add ForfeitWin dummy
scoreboard objectives add ForfeitLoss dummy
scoreboard objectives add ForfeitTimeout dummy
scoreboard objectives add fakeendtimer dummy
execute if entity @e[tag=rr_duel,limit=1] run tellraw @s {"text":"1v1 Duel Mode installed.","color":"green","bold":"true"}
kill @e[tag=rr_ranked,limit=1]
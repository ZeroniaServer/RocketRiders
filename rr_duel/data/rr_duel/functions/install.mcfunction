execute unless entity @e[x=0,type=armor_stand,tag=rr_duel,limit=1] run summon armor_stand 25 184 -6 {Tags:["rr_duel","gamemodeAS"],Marker:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:'{"text":"Duel Mode"}'}
scoreboard objectives add RoundsWon dummy {"text":"Rounds Won","color":"green","bold":true}
scoreboard objectives remove XP
scoreboard objectives add XP dummy
scoreboard objectives add RankScore dummy
scoreboard players set $0 XP 0
scoreboard players set $100 XP 100
scoreboard objectives add Forfeit dummy
scoreboard objectives add ForfeitWin dummy
scoreboard objectives add ForfeitLoss dummy
scoreboard objectives add ForfeitTimeout dummy
scoreboard objectives add fakeendtimer dummy
scoreboard objectives add Rounds dummy
execute if entity @e[x=0,type=armor_stand,tag=rr_duel,limit=1] run tellraw @s {"text":"1v1 Duel Mode installed.","color":"green","bold":true}
scoreboard players add @e[x=0,type=armor_stand,tag=rr_duel,limit=1] CmdData 1
execute unless entity @e[x=0,type=marker,tag=PlacerClear] run function game:forcestop
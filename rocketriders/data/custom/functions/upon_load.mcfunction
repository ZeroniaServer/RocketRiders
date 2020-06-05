scoreboard objectives add SDtime dummy
scoreboard objectives remove InfoTimer
scoreboard objectives remove InfoDisplay
bossbar remove minecraft:infobar
bossbar add rr:startgame "Awaiting players."
bossbar set rr:startgame max 30
execute unless block -70 191 78 birch_wall_sign[facing=east] run setblock -70 191 78 birch_wall_sign[facing=east]
scoreboard objectives add RNGscore dummy
scoreboard objectives add RNGmax dummy
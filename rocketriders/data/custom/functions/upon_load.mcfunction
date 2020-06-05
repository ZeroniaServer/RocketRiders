bossbar remove minecraft:swap
scoreboard players reset 1100 swapside
scoreboard players reset 800 swapside
scoreboard players reset 10 swapside
scoreboard players reset 20 swapside
scoreboard objectives add SDtime dummy
scoreboard objectives remove InfoTimer
scoreboard objectives remove InfoDisplay
bossbar remove minecraft:infobar


bossbar add rr:startgame "Awaiting players."
bossbar set rr:startgame max 30
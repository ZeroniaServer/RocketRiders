scoreboard objectives add ShowTip dummy
scoreboard objectives add GamesPlayed dummy


execute if entity @e[tag=rr_ranked] run scoreboard players reset * gamemodeID
execute if entity @e[tag=rr_ranked] run function rr_duel:install
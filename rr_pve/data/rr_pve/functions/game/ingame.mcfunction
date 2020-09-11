#leave midgame
function game:leavemidgame

#general
function rr_pve:items/antidupe
function rr_pve:items/spawnitems
execute unless entity @e[tag=Bot,type=armor_stand] run function rr_pve:game/prepbots

#Item RNG and spawnpoints
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
spawnpoint @a[team=Blue] 12 64 -66 0
spawnpoint @a[team=Yellow] 12 64 66 -180
execute if entity @s[tag=Minute] run function items:minutemix

#win
execute if entity @s[tag=!BlueWon,tag=!DoublePortal] unless block 13 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BlueWon,tag=!DoublePortal] unless block 11 38 74 nether_portal run function game:winblue
execute if entity @s[tag=!BlueWon,tag=DoublePortal] unless block 11 38 74 nether_portal unless block 13 38 74 nether_portal run function game:winblue

execute if entity @s[tag=!YellowWon,tag=!DoublePortal] unless block 11 38 -74 nether_portal run function rr_pve:game/winyellow
execute if entity @s[tag=!YellowWon,tag=!DoublePortal] unless block 13 38 -74 nether_portal run function rr_pve:game/winyellow
execute if entity @s[tag=!YellowWon,tag=DoublePortal] unless block 11 38 -74 nether_portal unless block 13 38 -74 nether_portal run function rr_pve:game/winyellow
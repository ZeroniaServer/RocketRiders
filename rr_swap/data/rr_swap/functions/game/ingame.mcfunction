#leave midgame
function game:leavemidgame

#general
function rr_swap:items/antidupe
function rr_swap:items/spawnitems

#custom util items
execute if entity @e[tag=Selection,tag=swapEnabled] run function rr_swap:items/icbm
execute if entity @e[tag=Selection,tag=swapEnabled] run function rr_swap:items/cluster

#Item RNG and spawnpoints
function items:tetris
scoreboard players add @e[tag=Selection] RandomItem 1
execute as @e[scores={RandomItem=300..}] run function rr_swap:items/rng
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar
execute as @e[scores={RandomItem=300..}] as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @e[scores={RandomItem=300..}] as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
scoreboard players reset @e[scores={RandomItem=300..}] RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66

#player armor
function rr_swap:baseswap/gear

#platform
function rr_swap:baseswap/platform

#win
execute if block 13 38 74 air run function game:winblue
execute if block 11 38 74 air run function game:winblue

execute if block 11 38 -74 air run function game:winyellow
execute if block 13 38 -74 air run function game:winyellow




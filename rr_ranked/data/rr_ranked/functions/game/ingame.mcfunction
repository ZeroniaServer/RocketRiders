#leave midgame
function game:leavemidgame

#Item RNG and spawnpoints
function items:tetris
scoreboard players add @s RandomItem 1
execute if score @s[tag=!Minute] RandomItem = @s[tag=!Minute] MaxItemTime run function items:giverandom
execute if score @s[tag=!Minute] RandomItem > @s[tag=!Minute] MaxItemTime run scoreboard players reset @s RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66
execute if entity @s[tag=Minute] run function items:minutemix

#win
execute unless entity @s[tag=CriteriaTrue] if block 13 38 -74 air run execute if block 11 38 -74 air run setblock 11 38 -74 obsidian
execute unless entity @s[tag=CriteriaTrue] if block 11 38 -74 air unless block 13 38 -74 air run function rr_ranked:game/winyellow
execute unless entity @s[tag=CriteriaTrue] if block 13 38 -74 air unless block 11 38 -74 air run function rr_ranked:game/winyellow

execute unless entity @s[tag=CriteriaTrue] if block 13 38 74 air run execute if block 11 38 74 air run setblock 11 38 74 obsidian
execute unless entity @s[tag=CriteriaTrue] if block 13 38 74 air unless block 11 38 74 air run function rr_ranked:game/winblue
execute unless entity @s[tag=CriteriaTrue] if block 11 38 74 air unless block 13 38 74 air run function rr_ranked:game/winblue


execute as @e[tag=PlacerClear] run tag @e[tag=Selection] remove CriteriaTrue
tag @e[tag=PlacerClear] add BasePlaced
tag @e[tag=PlacerClear] add Cleared
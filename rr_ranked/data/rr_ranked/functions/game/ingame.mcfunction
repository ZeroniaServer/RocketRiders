#leave midgame
function game:leavemidgame

#Item RNG and spawnpoints
scoreboard players add @e[tag=Selection] RandomItem 1
execute if entity @e[scores={RandomItem=300..}] run function items:rng
tag @a[tag=!fullHotbar,scores={invCount=9..}] add fullHotbar
tag @a[tag=fullHotbar,scores={invCount=..8}] remove fullHotbar
execute as @e[scores={RandomItem=400..}] as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @e[scores={RandomItem=400..}] as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
scoreboard players reset @e[scores={RandomItem=300..}] RandomItem
spawnpoint @a[team=Blue] 12 64 -66
spawnpoint @a[team=Yellow] 12 64 66

#win
execute if block 11 38 74 air if block 13 38 74 air run function rr_ranked:game/winblue
execute if block 13 38 74 air unless block 11 38 74 air run function rr_ranked:game/winblue
execute if block 11 38 74 air unless block 13 38 74 air run function rr_ranked:game/winblue

execute if block 13 38 -74 air if block 11 38 -74 air run function rr_ranked:game/winyellow
execute if block 11 38 -74 air unless block 13 38 -74 air run function rr_ranked:game/winyellow
execute if block 13 38 -74 air unless block 11 38 -74 air run function rr_ranked:game/winyellow
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run tag @s add getItem
tag @s add tetrisTime
function rr_swap:items/tetris
function rr_swap:items/rng
function rr_swap:items/tetris
tag @a[x=0] remove getItem
tag @s remove tetrisTime
execute if entity @s[tag=givenAllHeavy,tag=givenAllDUtil] run function rr_swap:items/tetrisreset
execute if entity @s[tag=givenAllLightning,tag=givenAllLUtil] run function rr_swap:items/tetrisreset
execute if entity @s[tag=givenAllLightning,tag=givenAllDUtil] run function rr_swap:items/tetrisreset
execute if entity @s[tag=givenAllHeavy,tag=givenAllLUtil] run function rr_swap:items/tetrisreset
tag @s add gaveFirstItem
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @a[x=0] unless entity @s[team=!Yellow,team=!Blue] run scoreboard players set @s actionbardelay 0
execute as @a[x=0,tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[x=0,tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @a[x=0,tag=wasFullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[x=0,tag=wasFullHotbar] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

#wind down
scoreboard players remove @s[tag=WindDown,scores={MaxItemTime=62..}] MaxItemTime 2

#schedule antidupe
execute unless entity @s[tag=doStacking] run schedule function rr_swap:items/scheduleantidupe_indimension 1t append
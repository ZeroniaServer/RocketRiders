function rr_swap:items/rng
function rr_swap:items/tetris
tag @s add gaveFirstItem
execute as @a unless entity @s[team=!Yellow,team=!Blue] run tag @s add DelayActionbar
execute as @a unless entity @s[team=!Yellow,team=!Blue] run scoreboard players set @s actionbardelay 0
execute as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] run title @s actionbar {"text":"You have too many items, so you can't get any more.","color":"red"}
execute if entity @s[tag=!noFullHotbarSound] as @a[tag=fullHotbar] unless entity @s[team=!Yellow,team=!Blue] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1

#wind down
scoreboard players remove @s[tag=WindDown,scores={MaxItemTime=62..}] MaxItemTime 2

#schedule antidupe
schedule function items:scheduleantidupe 1t append
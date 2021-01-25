execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Yellow] title {"text":"SWAPPED","underlined":true,"color":"dark_gray"}
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Blue] title {"text":"SWAPPED","underlined":true,"color":"white"}
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Blue] subtitle ["",{"text":"(You will now receive ","color":"gray"},{"text":"fast","color":"white"},{"text":" items)","color":"gray"}]
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Yellow] subtitle ["",{"text":"(You will now receive ","color":"gray"},{"text":"explosive","color":"dark_gray"},{"text":" items)","color":"gray"}]

execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Blue] title {"text":"SWAPPED","underlined":true,"color":"dark_gray"}
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Yellow] title {"text":"SWAPPED","underlined":true,"color":"white"}
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Yellow] subtitle ["",{"text":"(You will now receive ","color":"gray"},{"text":"fast","color":"white"},{"text":" items)","color":"gray"}]
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Blue] subtitle ["",{"text":"(You will now receive ","color":"gray"},{"text":"explosive","color":"dark_gray"},{"text":" items)","color":"gray"}]

execute as @a[team=!Lobby,team=!Spectator] at @s run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0

schedule function rr_swap:baseswap/visuals/9 2t
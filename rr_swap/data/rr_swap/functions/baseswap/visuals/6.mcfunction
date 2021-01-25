execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Yellow] title ["",{"text":"SWAPP","underlined":true,"color":"dark_gray"},{"text":"ED","underlined":true,"color":"white"}]
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Blue] title ["",{"text":"SWAPP","underlined":true,"color":"white"},{"text":"ED","underlined":true,"color":"dark_gray"}]

execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Blue] title ["",{"text":"SWAPP","underlined":true,"color":"dark_gray"},{"text":"ED","underlined":true,"color":"white"}]
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Yellow] title ["",{"text":"SWAPP","underlined":true,"color":"white"},{"text":"ED","underlined":true,"color":"dark_gray"}]

schedule function rr_swap:baseswap/visuals/7 1t
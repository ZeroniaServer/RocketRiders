execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Yellow] title ["",{"text":"SWA","underlined":true,"color":"dark_gray"},{"text":"PPED","underlined":true,"color":"white"}]
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Blue] title ["",{"text":"SWA","underlined":true,"color":"white"},{"text":"PPED","underlined":true,"color":"dark_gray"}]

execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Blue] title ["",{"text":"SWA","underlined":true,"color":"dark_gray"},{"text":"PPED","underlined":true,"color":"white"}]
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Yellow] title ["",{"text":"SWA","underlined":true,"color":"white"},{"text":"PPED","underlined":true,"color":"dark_gray"}]

schedule function rr_swap:baseswap/visuals/5 1t
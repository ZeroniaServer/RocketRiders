execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Yellow] title ["",{"text":"S","underlined":true,"color":"dark_gray"},{"text":"WAPPED","underlined":true,"color":"white"}]
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 0 run title @a[team=Blue] title ["",{"text":"S","underlined":true,"color":"white"},{"text":"WAPPED","underlined":true,"color":"dark_gray"}]

execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Blue] title ["",{"text":"S","underlined":true,"color":"dark_gray"},{"text":"WAPPED","underlined":true,"color":"white"}]
execute unless entity @e[tag=Selection,scores={endtimer=1..}] if score SwapSide swapside matches 1 run title @a[team=Yellow] title ["",{"text":"S","underlined":true,"color":"white"},{"text":"WAPPED","underlined":true,"color":"dark_gray"}]

schedule function rr_swap:baseswap/visuals/3 1t
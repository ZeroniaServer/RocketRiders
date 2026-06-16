execute unless entity @e[x=0,type=armor_stand,tag=Selection,tag=swapEnabled] run return fail

execute unless entity @e[limit=1,x=0,type=marker,tag=swapplatform] run summon marker 12 55 0 {Tags:["swapplatform"]}

#Bossbar prep
bossbar set rr_swap:swap_progress players
bossbar set rr_swap:swap_progress value 0
scoreboard players set SwapPlatform swapside 0
scoreboard players set BossbarA swapside 0
scoreboard players set BossbarB swapside 0
scoreboard players set QuickSwap swapside 0

execute as @e[tag=SelectedSwapRNG,tag=swapRNG1] run execute as @a[team=Blue] run function rr_swap:items/givebull
execute as @e[tag=SelectedSwapRNG,tag=swapRNG1] run execute as @a[team=Yellow] run function rr_swap:items/givehyper

execute as @e[tag=SelectedSwapRNG,tag=swapRNG2] run execute as @a[team=Blue] run function items:missile/heavy/giveaux
execute as @e[tag=SelectedSwapRNG,tag=swapRNG2] run execute as @a[team=Yellow] run function items:missile/lightning/givethun

execute as @e[tag=SelectedSwapRNG,tag=swapRNG3] run execute as @a[team=Blue] run function items:missile/heavy/givewar
execute as @e[tag=SelectedSwapRNG,tag=swapRNG3] run execute as @a[team=Yellow] run function items:missile/lightning/givehur
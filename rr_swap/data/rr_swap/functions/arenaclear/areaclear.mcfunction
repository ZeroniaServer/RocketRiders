#remove join cancel from joinpads
tag @e[tag=CancelJoin] remove CancelJoin

execute as @e[tag=Selection] run function rr_swap:items/darktetrisreset
execute as @e[tag=Selection] run function rr_swap:items/lighttetrisreset
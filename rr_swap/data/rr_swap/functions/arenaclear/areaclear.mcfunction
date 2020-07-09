#remove join cancel from joinpads
tag @e[tag=CancelJoin,type=area_effect_cloud] remove CancelJoin

execute as @e[tag=Selection,type=armor_stand] run function rr_swap:items/darktetrisreset
execute as @e[tag=Selection,type=armor_stand] run function rr_swap:items/lighttetrisreset
tag @e[type=armor_stand,tag=Selection] remove noYZELO
tag @e[type=armor_stand,tag=Selection] remove stopIfEmpty
tag @e[type=armor_stand,tag=Selection] remove duelLast
execute as @e[type=armor_stand,tag=Selection] run function game:tipreset
tag @e[type=armor_stand,tag=Selection] add EditedSettings
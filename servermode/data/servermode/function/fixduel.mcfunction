tag @e[x=0,type=armor_stand,tag=Selection] remove noYZELO
tag @e[x=0,type=armor_stand,tag=Selection] remove stopIfEmpty
tag @e[x=0,type=armor_stand,tag=Selection] remove duelLast
execute as @e[x=0,type=armor_stand,tag=Selection] run function game:tipreset
execute as @e[x=0,type=armor_stand,tag=Selection] run function arenaclear:globaldefaults
execute as @e[x=0,type=armor_stand,tag=Selection] run function modifiers:disablemodifiers
execute as @e[x=0,type=armor_stand,tag=Selection] run function arenaclear:refreshsigns
tag @e[x=0,type=armor_stand,tag=Selection] add EditedSettings
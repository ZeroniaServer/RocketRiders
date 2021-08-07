tag @e[type=armor_stand,tag=Selection] remove noYZELO
tag @e[type=armor_stand,tag=Selection] remove stopIfEmpty
tag @e[type=armor_stand,tag=Selection] remove duelLast
execute as @e[type=armor_stand,tag=Selection] run function game:tipreset
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:globaldefaults
execute as @e[type=armor_stand,tag=Selection] run function modifiers:disablemodifiers
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshcustomizer
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshsigns
tag @e[type=armor_stand,tag=Selection] add EditedSettings
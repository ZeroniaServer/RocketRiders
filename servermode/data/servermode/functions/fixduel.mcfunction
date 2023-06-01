tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove noYZELO
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove stopIfEmpty
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] remove duelLast
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function game:tipreset
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:globaldefaults
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function modifiers:disablemodifiers
execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection] run function arenaclear:refreshsigns
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection] add EditedSettings
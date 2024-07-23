tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove noYZELO
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove stopIfEmpty
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove duelLast
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function game:tipreset
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:globaldefaults
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function modifiers:disablemodifiers
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1] run function arenaclear:refreshsigns
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add EditedSettings
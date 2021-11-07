tag @e[type=armor_stand,tag=Selection] remove noYZELO
tag @e[type=armor_stand,tag=Selection] remove stopIfEmpty
tag @e[type=armor_stand,tag=Selection] remove duelLast
execute as @a run attribute @s minecraft:generic.max_health base set 20.0
execute as @e[type=armor_stand,tag=Selection] if entity @s[tag=Hardcore] run gamerule showDeathMessages false
execute as @e[type=armor_stand,tag=Selection] if entity @s[tag=Hardcore] as @a[tag=!hardcoreKilled] unless entity @s[tag=!WasInBlue,tag=!WasInYellow] run kill @s
execute as @e[type=armor_stand,tag=Selection] if entity @s[tag=Hardcore] as @a unless entity @s[tag=!WasInBlue,tag=!WasInYellow] run tag @s add hardcoreKilled
execute as @e[type=armor_stand,tag=Selection] if entity @s[tag=Hardcore] run gamerule showDeathMessages true
execute as @e[type=armor_stand,tag=Selection] run function game:tipreset
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:globaldefaults
execute as @e[type=armor_stand,tag=Selection] run function modifiers:disablemodifiers
execute as @e[type=armor_stand,tag=Selection] run function arenaclear:refreshsigns
tag @e[type=armor_stand,tag=Selection] add EditedSettings
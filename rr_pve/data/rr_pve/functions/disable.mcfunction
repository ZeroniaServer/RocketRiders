tag @e[type=armor_stand,tag=Selection] remove pveEnabled
tag @e[type=armor_stand,tag=Selection] remove HardcoreOff
tag @e[type=armor_stand,tag=Selection,tag=HardcoreWasOn] add Hardcore
execute as @e[type=armor_stand,tag=Selection,tag=HardcoreWasOn] run function arenaclear:lockdecos
tag @e[type=armor_stand,tag=Selection] remove HardcoreWasOn
tag @e[type=armor_stand,tag=Selection] remove tyingOff
tag @e[type=armor_stand,tag=Selection] remove customBossbar
tag @e[type=armor_stand,tag=Selection] remove noTeamBalance
tag @e[type=armor_stand,tag=Selection] remove onlyBlue
tag @e[type=armor_stand,tag=Selection] add switchGamemodes
tag @e[tag=Selection,type=armor_stand] remove pveEnabled
tag @e[tag=Selection,type=armor_stand] remove HardcoreOff
tag @e[tag=Selection,type=armor_stand,tag=HardcoreWasOn] add Hardcore
execute as @e[tag=Selection,type=armor_stand,tag=HardcoreWasOn] run function arenaclear:lockdecos
tag @e[tag=Selection,type=armor_stand] remove HardcoreWasOn
tag @e[tag=Selection,type=armor_stand] remove tyingOff
tag @e[tag=Selection,type=armor_stand] remove customBossbar
tag @e[tag=Selection,type=armor_stand] remove noTeamBalance
tag @e[tag=Selection,type=armor_stand] add switchGamemodes
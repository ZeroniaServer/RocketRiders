execute as @e[type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=!needsForceClear,limit=1] run function arenaclear:areaclear
tag @e[type=armor_stand,tag=Selection,limit=1] remove forcenormal
tag @e[type=armor_stand,tag=Selection,limit=1] remove GlobalDefaults
tag @e[type=armor_stand,tag=Selection,limit=1] remove switchServermode
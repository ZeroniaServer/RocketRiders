execute as @e[x=0,type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=!needsForceClear,limit=1] run function arenaclear:areaclear
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove forcenormal
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove GlobalDefaults
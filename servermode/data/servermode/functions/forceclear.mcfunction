execute as @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=!NoModesInstalled,tag=!NoModesEnabled,tag=!needsForceClear,limit=1] run function arenaclear:areaclear
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] remove forcenormal
tag @e[predicate=custom:indimension,type=armor_stand,tag=Selection,limit=1] remove GlobalDefaults
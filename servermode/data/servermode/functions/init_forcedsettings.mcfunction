execute as @e[type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] run function servermode:forced_settings
#swap mode items
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s remove rngNormal
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngLightning
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngHeavy
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngHur
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngThun
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngWar
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngAux
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngShield
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngVortex
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngObshield
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngFireball
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run tag @s add rngArrows
execute as @e[type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] as @a run function servermode:swap_forcedsettings
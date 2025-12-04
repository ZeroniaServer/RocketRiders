execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!swapEnabled] run function servermode:forced_settings
#swap mode items
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run scoreboard players set $item_pool.missile/hurricane gamemode_components 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run scoreboard players set $item_pool.missile/thunderbolt gamemode_components 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run scoreboard players set $item_pool.missile/warhead gamemode_components 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run scoreboard players set $item_pool.missile/auxiliary gamemode_components 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run scoreboard players set $item_pool.shield gamemode_components 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run scoreboard players set $item_pool.vortex gamemode_components 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run scoreboard players set $item_pool.obsidian_shield gamemode_components 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run scoreboard players set $item_pool.fireball gamemode_components 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] run scoreboard players set $item_pool.arrow gamemode_components 1
execute as @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=swapEnabled] as @a[x=0] run function servermode:swap_forcedsettings
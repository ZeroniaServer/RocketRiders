##Enables all Utility items
scoreboard players reset $disable_item/shield config
scoreboard players reset $disable_item/arrow config
scoreboard players reset $disable_item/vortex config
scoreboard players reset $disable_item/obsidian_shield config
scoreboard players reset $disable_item/splash config
scoreboard players reset $disable_item/canopy config
scoreboard players reset $disable_item/fireball config
scoreboard players reset $disable_item/nova_rocket config
scoreboard players reset $disable_item_category/utilities config

scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1

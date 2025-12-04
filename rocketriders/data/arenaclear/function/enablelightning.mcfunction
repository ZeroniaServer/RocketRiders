##Enables all Lightning missiles
scoreboard players reset $disable_item/missile/hurricane config
scoreboard players reset $disable_item/missile/thunderbolt config
scoreboard players reset $disable_item_category/lightning_missiles config

scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1

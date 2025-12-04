##Enables all Heavy missiles
scoreboard players reset $disable_item/missile/warhead config
scoreboard players reset $disable_item/missile/auxiliary config
scoreboard players reset $disable_item/missile/rifter config
scoreboard players reset $disable_item/missile/juggerbuster config
scoreboard players reset $disable_item_category/heavy_missiles config

scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1

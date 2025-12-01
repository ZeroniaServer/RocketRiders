##Enables all Normal missiles
scoreboard players reset $disable_item/missile/tomatwo config
scoreboard players reset $disable_item/missile/blade config
scoreboard players reset $disable_item/missile/ant config
scoreboard players reset $disable_item/missile/catapult config
scoreboard players reset $disable_item/missile/lifter config
scoreboard players reset $disable_item/missile/slasher config
scoreboard players reset $disable_item/missile/chronullifier config
scoreboard players reset $disable_item/missile/elder_guardian config
scoreboard players reset $disable_item/missile/citadel config
scoreboard players reset $disable_item/missile/gemini config
scoreboard players reset $disable_item_category/normal_missiles config

scoreboard players set @e[x=0,type=armor_stand,tag=Selection,limit=1] refreshsigns 1

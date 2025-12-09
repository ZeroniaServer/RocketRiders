scoreboard players reset * gamemode_components

tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove powerupsEnabled
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] remove customSpawnpointBlockProtection
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add switchGamemodes
execute if entity @e[x=0,type=marker,tag=captureMiddle,limit=1] run kill @e[x=0,type=marker,tag=captureMiddle,limit=1]
scoreboard players reset * config

# Realms defaults
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=realms] run scoreboard players set $impact_projectiles config 1
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=realms] run scoreboard players set $disable_cannoning config 1
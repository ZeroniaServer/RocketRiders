##Sub-RNG for Missiles
#Choose between each category
execute if entity @e[type=armor_stand,tag=Selection,tag=rngHeavy,tag=!heavyOff,tag=!givenAllHeavy] run summon marker 0 0 0 {Tags:["rngHeavy","rng2"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngNormal,tag=!normalOff,tag=!givenAllNormal] run summon marker 0 0 0 {Tags:["rngNormal","rng2"]}
execute if entity @e[type=armor_stand,tag=Selection,tag=rngLightning,tag=!lightningOff,tag=!givenAllLightning] run summon marker 0 0 0 {Tags:["rngLightning","rng2"]}

#Select category and run appropriate sub-sub-RNG function
tag @e[type=marker,tag=rng2,sort=random,limit=1] add rngSelected
execute as @e[type=marker,tag=rngSelected,tag=rngHeavy] run function items:missile/heavy/rng
execute as @e[type=marker,tag=rngSelected,tag=rngNormal] run function items:missile/normal/rng
execute as @e[type=marker,tag=rngSelected,tag=rngLightning] run function items:missile/lightning/rng
kill @e[type=marker,tag=rng2]
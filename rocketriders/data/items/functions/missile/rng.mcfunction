##Sub-RNG for Missiles
#Choose between each category
execute if entity @e[tag=Selection,tag=rngHeavy,tag=!heavyOff,tag=!givenAllHeavy,type=armor_stand] run summon marker 0 0 0 {Tags:["rngHeavy","rng2"]}
execute if entity @e[tag=Selection,tag=rngNormal,tag=!normalOff,tag=!givenAllNormal,type=armor_stand] run summon marker 0 0 0 {Tags:["rngNormal","rng2"]}
execute if entity @e[tag=Selection,tag=rngLightning,tag=!lightningOff,tag=!givenAllLightning,type=armor_stand] run summon marker 0 0 0 {Tags:["rngLightning","rng2"]}

#Select category and run appropriate sub-sub-RNG function
tag @e[tag=rng2,sort=random,limit=1,type=marker] add rngSelected
execute as @e[tag=rngSelected,tag=rngHeavy,type=marker] run function items:missile/heavy/rng
execute as @e[tag=rngSelected,tag=rngNormal,type=marker] run function items:missile/normal/rng
execute as @e[tag=rngSelected,tag=rngLightning,type=marker] run function items:missile/lightning/rng
kill @e[tag=rng2,type=marker]
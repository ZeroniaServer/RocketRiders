##RNG starter for selecting a random Yellow missile from Surprise Eggs
#Choose between each category
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngHeavy,tag=!heavyOff] run summon marker ~ ~ ~ {Tags:["surpriseYellowHeavy","surpriseYellow1"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngNormal,tag=!normalOff] run summon marker ~ ~ ~ {Tags:["surpriseYellowNormal","surpriseYellow1"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=rngLightning,tag=!lightningOff] run summon marker ~ ~ ~ {Tags:["surpriseYellowLightning","surpriseYellow1"]}
execute if entity @e[x=0,type=armor_stand,tag=Selection,tag=Chaos] run summon marker ~ ~ ~ {Tags:["surpriseYellowSpecial","surpriseYellow1"]}

#Select category and run appropriate sub-RNG function
tag @e[type=marker,tag=surpriseYellow1,sort=random,limit=1,distance=..1] add rngSelected
execute if entity @e[x=0,type=marker,tag=surpriseYellowHeavy,tag=rngSelected] run function items:surprise_yellow/rngheavy
execute if entity @e[x=0,type=marker,tag=surpriseYellowNormal,tag=rngSelected] run function items:surprise_yellow/rngnormal
execute if entity @e[x=0,type=marker,tag=surpriseYellowLightning,tag=rngSelected] run function items:surprise_yellow/rnglightning
execute if entity @e[x=0,type=marker,tag=surpriseYellowSpecial,tag=rngSelected] run function items:surprise_yellow/rngspecial
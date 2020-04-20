#Hypersonic
execute as @e[tag=BlueHyper] at @s positioned ~-1 ~-9 ~5 run function items:prestructureblock
execute as @e[tag=BlueHyper] at @s run setblock ~-1 ~-9 ~5 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hypersonic_blue"}
execute as @e[tag=BlueHyper] at @s positioned ~-1 ~-9 ~5 run function items:poststructureblock
execute as @e[tag=YellowHyper] at @s positioned ~-1 ~-9 ~-13 run function items:prestructureblock
execute as @e[tag=YellowHyper] at @s run setblock ~-1 ~-9 ~-13 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:hypersonic_yellow"}
execute as @e[tag=YellowHyper] at @s positioned ~-1 ~-9 ~-13 run function items:poststructureblock

#Bullet
execute as @e[tag=BlueBull] at @s positioned ~-1 ~-8 ~4 run function items:prestructureblock
execute as @e[tag=BlueBull] at @s run setblock ~-1 ~-8 ~4 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:bullet_blue"}
execute as @e[tag=BlueBull] at @s positioned ~-1 ~-8 ~4 run function items:poststructureblock
execute as @e[tag=YellowBull] at @s positioned ~-1 ~-8 ~-18 run function items:prestructureblock
execute as @e[tag=YellowBull] at @s run setblock ~-1 ~-8 ~-18 structure_block[mode=load]{mode:"LOAD",posX:0,posY:2,posZ:0,name:"minecraft:bullet_yellow"}
execute as @e[tag=YellowBull] at @s positioned ~-1 ~-8 ~-18 run function items:poststructureblock
##Allows arrows to catch logs and leaves on fire
#Logs
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire,nbt={inGround:1b}] at @s if block ~ ~-1 ~ oak_wood run setblock ~ ~.5 ~ fire
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire,nbt={inGround:1b}] at @s if block ~ ~-1 ~ oak_wood run tag @s add FireArrow
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire,nbt={inGround:1b}] at @s if block ~ ~1 ~ oak_wood run setblock ~ ~-.5 ~ fire
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire,nbt={inGround:1b}] at @s if block ~ ~1 ~ oak_wood run tag @s add FireArrow
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^-0.1 oak_wood positioned ^ ^ ^-0.1 run setblock ~ ~-1 ~ fire
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^-0.1 oak_wood run tag @s add FireArrow
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^0.1 oak_wood positioned ^ ^ ^0.1 run setblock ~ ~1 ~ fire
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^0.1 oak_wood run tag @s add FireArrow

#Leaves
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^-0.1 #leaves run setblock ^ ^ ^-0.1 fire
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^-0.1 #leaves run tag @s add FireArrow
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^0.1 #leaves run setblock ^ ^ ^0.1 fire
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^0.1 #leaves run tag @s add FireArrow

#Banners (Canopy log surrounders)
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^-0.1 #banners run setblock ^ ^ ^-0.1 fire
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^-0.1 #banners run tag @s add FireArrow
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^0.1 #banners run setblock ^ ^ ^0.1 fire
execute as @e[x=0,type=#arrows,tag=!FireArrow,predicate=custom:entity/is_on_fire] rotated as @s positioned 0 0 0 positioned ^ ^ ^2 positioned 0 0 ~ positioned ^ ^ ^-1 facing 0 0 0 facing ^ ^ ^-1 positioned as @s if block ^ ^ ^0.1 #banners run tag @s add FireArrow
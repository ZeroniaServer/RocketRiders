##Allows arrows to catch logs and leaves on fire
#Logs
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~-1 ~ oak_wood run setblock ~ ~.5 ~ fire
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~-1 ~ oak_wood run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~1 ~ oak_wood run setblock ~ ~-.5 ~ fire
execute as @e[tag=!FireArrow,type=arrow,nbt={inGround:1b}] at @s if block ~ ~1 ~ oak_wood run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 oak_wood positioned ^ ^ ^-0.1 run setblock ~ ~-1 ~ fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 oak_wood run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 oak_wood positioned ^ ^ ^0.1 run setblock ~ ~1 ~ fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 oak_wood run tag @s add FireArrow

#Leaves
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 #leaves run setblock ^ ^ ^-0.1 fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^-0.1 #leaves run tag @s add FireArrow
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 #leaves run setblock ^ ^ ^0.1 fire
execute as @e[tag=!FireArrow,type=arrow] at @s if block ^ ^ ^0.1 #leaves run tag @s add FireArrow
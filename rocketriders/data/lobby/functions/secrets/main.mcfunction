#Lobby easter eggs
execute positioned -36 214 16 if block ~ ~ ~ stone_button[powered=true] as @a[predicate=custom:indimension,distance=..3,tag=!btn1] run function lobby:secrets/randommsg
execute positioned -36 214 16 if block ~ ~ ~ stone_button[powered=true] run tag @a[predicate=custom:indimension,distance=..3,tag=!btn1] add btn1
execute positioned -36 214 16 if block ~ ~ ~ stone_button[powered=false] run tag @a[predicate=custom:indimension] remove btn1

execute positioned -37 214 140 if block ~ ~ ~ stone_button[powered=true] as @a[predicate=custom:indimension,distance=..3,tag=!btn2] run function lobby:secrets/randommsg
execute positioned -37 214 140 if block ~ ~ ~ stone_button[powered=true] run tag @a[predicate=custom:indimension,distance=..3,tag=!btn2] add btn2
execute positioned -37 214 140 if block ~ ~ ~ stone_button[powered=false] run tag @a[predicate=custom:indimension] remove btn2

execute positioned -36 213 15 if block ~ ~ ~ warped_pressure_plate[powered=true] as @e[type=painting,limit=1,sort=nearest,tag=!changed,distance=..2] run function lobby:secrets/randompainting
execute positioned -36 213 15 if block ~ ~ ~ warped_pressure_plate[powered=false] run tag @e[type=painting,limit=1,sort=nearest,distance=..2] remove changed

execute positioned -37 213 141 if block ~ ~ ~ light_weighted_pressure_plate[power=1] as @e[type=painting,limit=1,sort=nearest,tag=!changed,distance=..2] run function lobby:secrets/randompainting
execute positioned -37 213 141 if block ~ ~ ~ light_weighted_pressure_plate[power=0] run tag @e[type=painting,limit=1,sort=nearest,distance=..2] remove changed

execute positioned -36 214 15 if block ~ ~ ~ lever[powered=true] run setblock -36 212 12 white_concrete
execute positioned -36 214 15 if block ~ ~ ~ lever[powered=false] run setblock -36 212 12 redstone_block

execute positioned -37 214 141 if block ~ ~ ~ lever[powered=true] run setblock -37 212 144 white_concrete
execute positioned -37 214 141 if block ~ ~ ~ lever[powered=false] run setblock -37 212 144 redstone_block

execute as @a[predicate=custom:indimension,team=Lobby,nbt={SelectedItem:{id:"minecraft:dandelion"}}] run tellraw @s [{"text":"don't steal the flowers :(","color":"red"}]
execute as @a[predicate=custom:indimension,team=Lobby,nbt={SelectedItem:{id:"minecraft:blue_orchid"}}] run tellraw @s [{"text":"don't steal the flowers :(","color":"red"}]
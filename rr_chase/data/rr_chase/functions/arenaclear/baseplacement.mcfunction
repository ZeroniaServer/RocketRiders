function arenaclear:baseplacement
function arenaclear:detailplacement

fill 38 34 52 -14 63 56 glass replace yellow_stained_glass
fill 38 34 -57 -14 63 -61 minecraft:pink_stained_glass replace cyan_stained_glass
fill -14 34 -52 38 63 -56 minecraft:red_stained_glass replace blue_stained_glass
fill 38 34 57 -14 63 61 minecraft:light_gray_stained_glass replace orange_stained_glass

fill 38 34 52 -14 63 56 glass replace yellow_stained_glass
fill 38 34 52 -14 63 56 glass replace orange_stained_glass

#Remove portals
fill -11 36 -75 35 59 -73 air
fill -11 36 73 35 59 75 air

#Waiting lobby stuff
setblock -89 203 71 minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-104960843,799031877,-1461346492,636471740],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}}}
setblock -92 204 74 minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;1360113007,-1973466880,-1569223220,914918317],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}}}
setblock -94 200 75 minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;1532111907,970802464,-1472056034,1445216331],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiYzFiNjRjYmEzZGM0Y2VmZTRlMTIxYzNjZGJiYjBmYTk5YWJhMGUxMTNiNWM5MTY4MTVmYzliMzA0ZTYzNiJ9fX0="}]}}}
setblock -96 201 71 minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;1360113007,-1973466880,-1569223220,914918317],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWYyMzY4NWM2OTdiYTU1ZWRkYTQyNWVjZjFmZWM3MmZlZWI3YmI5ODVjNjUwNmIyY2VmMDcwNTE1ZTRlNTQ5MiJ9fX0="}]}}}
setblock -95 203 74 minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-104960843,799031877,-1461346492,636471740],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}}}
setblock -98 199 74 minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;-104960843,799031877,-1461346492,636471740],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjk5NDJkZDEzMzhhYmVhZThiODI3NGE0MWFlMWRjZGYyYjdiZTQ0OWYyOGQ2YjY1MGVjMDZlNDkxZTcwZjU3MCJ9fX0="}]}}}
setblock -100 201 78 minecraft:player_head[rotation=0]{SkullOwner:{Id:[I;1532111907,970802464,-1472056034,1445216331],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTdiYzFiNjRjYmEzZGM0Y2VmZTRlMTIxYzNjZGJiYjBmYTk5YWJhMGUxMTNiNWM5MTY4MTVmYzliMzA0ZTYzNiJ9fX0="}]}}}


#Chase blocks
scoreboard players set $ChaseBlocks CmdData 150
function rr_chase:chaseblocks/spawn

#Flag placement
fill 12 64 65 12 71 65 oak_fence replace air
setblock 12 71 64 minecraft:structure_block{mode:"LOAD",posX:-4,posY:-1,sizeX:5,posZ:-1,integrity:1.0f,name:"minecraft:finish_flag1"}
setblock 12 70 64 minecraft:redstone_block

#Stair placement
kill @e[type=marker,tag=chaseStairs]
summon marker 10 63 66 {Tags:["chaseStairs"]}
execute positioned 10 63 66 run function rr_chase:arenaclear/stairleft
execute positioned 14 63 66 run function rr_chase:arenaclear/stairright
fill 11 63 64 13 63 62 obsidian replace white_stained_glass
execute if entity @s[tag=Hardcore,tag=!HardcoreOff] run fill 11 63 64 13 63 62 obsidian replace yellow_stained_glass

#No portals in pregame queue
fill -89 201 97 -101 195 97 barrier
fill -89 201 59 -101 195 59 barrier

#Banner in pregame queue
setblock -95 202 95 white_banner[rotation=8]{Patterns:[{Pattern:"vhr",Color:15},{Pattern:"tl",Color:15},{Pattern:"bl",Color:15},{Pattern:"tr",Color:0},{Pattern:"br",Color:0}]}

#Stairs in pregame queue
fill -94 201 95 -96 201 96 obsidian replace white_stained_glass
fill -93 201 95 -93 201 96 air replace white_stained_glass
fill -93 200 96 -93 200 95 obsidian replace white_stained_glass
fill -92 201 95 -92 200 96 air replace white_stained_glass
fill -92 199 96 -92 199 95 obsidian replace white_stained_glass
fill -91 201 95 -91 199 96 air replace white_stained_glass
fill -91 198 96 -91 198 95 obsidian replace white_stained_glass
fill -90 201 95 -90 198 96 air replace white_stained_glass
fill -90 197 96 -90 197 95 obsidian replace white_stained_glass
fill -89 200 95 -89 197 96 air replace white_stained_glass
fill -89 196 96 -89 196 95 obsidian replace white_stained_glass
fill -97 201 95 -97 201 96 air replace white_stained_glass
fill -97 200 96 -97 200 95 obsidian replace white_stained_glass
fill -98 201 95 -98 200 96 air replace white_stained_glass
fill -98 199 96 -98 199 95 obsidian replace white_stained_glass
fill -99 201 95 -99 199 96 air replace white_stained_glass
fill -99 198 96 -99 198 95 obsidian replace white_stained_glass
fill -100 201 95 -100 198 96 air replace white_stained_glass
fill -100 197 96 -100 197 95 obsidian replace white_stained_glass
fill -101 200 95 -101 197 96 air replace white_stained_glass
fill -101 196 96 -101 196 95 obsidian replace white_stained_glass

#Unique bases & Pregame
team modify Blue color red
fill -79 204 63 -81 204 61 minecraft:white_concrete replace minecraft:blue_concrete
fill -79 204 95 -81 204 93 white_concrete replace minecraft:yellow_concrete
fill -101 195 65 -89 201 64 minecraft:red_stained_glass
fill -89 201 63 -101 195 62 minecraft:pink_stained_glass
#pain
fill -89 200 91 -90 201 92 minecraft:black_stained_glass
fill -91 200 91 -92 201 92 minecraft:white_stained_glass
fill -93 200 91 -94 201 92 minecraft:black_stained_glass
fill -95 200 91 -96 201 92 minecraft:white_stained_glass
fill -97 200 91 -98 201 92 minecraft:black_stained_glass
fill -99 200 91 -100 201 92 minecraft:white_stained_glass
fill -101 200 91 -101 201 92 minecraft:black_stained_glass
fill -89 198 91 -90 199 92 minecraft:white_stained_glass
fill -91 198 91 -92 199 92 minecraft:black_stained_glass
fill -93 198 91 -94 199 92 minecraft:white_stained_glass
fill -95 198 91 -96 199 92 minecraft:black_stained_glass
fill -97 198 91 -98 199 92 minecraft:white_stained_glass
fill -99 198 91 -100 199 92 minecraft:black_stained_glass
fill -101 198 91 -101 199 92 minecraft:white_stained_glass
fill -89 196 91 -90 197 92 minecraft:black_stained_glass
fill -91 196 91 -92 197 92 minecraft:white_stained_glass
fill -93 196 91 -94 197 92 minecraft:black_stained_glass
fill -95 196 91 -96 197 92 minecraft:white_stained_glass
fill -97 196 91 -98 197 92 minecraft:black_stained_glass
fill -99 196 91 -100 197 92 minecraft:white_stained_glass
fill -101 196 91 -101 197 92 minecraft:black_stained_glass
fill -89 195 91 -90 195 92 minecraft:white_stained_glass
fill -91 195 91 -92 195 92 minecraft:black_stained_glass
fill -93 195 91 -94 195 92 minecraft:white_stained_glass
fill -95 195 91 -96 195 92 minecraft:black_stained_glass
fill -97 195 91 -98 195 92 minecraft:white_stained_glass
fill -99 195 91 -100 195 92 minecraft:black_stained_glass
fill -101 195 91 -101 195 92 minecraft:white_stained_glass
fill -89 195 93 -101 201 94 minecraft:light_gray_stained_glass


#Yellow Base
summon marker 36 63 52 {Tags:["ChaseChecker","ChaseChecker1"]}
summon marker 36 56 52 {Tags:["ChaseChecker","ChaseChecker2"]}
summon marker 36 49 52 {Tags:["ChaseChecker","ChaseChecker1"]}
summon marker 36 42 52 {Tags:["ChaseChecker","ChaseChecker2"]}
summon marker 36 35 52 {Tags:["ChaseChecker","ChaseChecker3"]}

execute as @e[type=marker,tag=ChaseChecker] at @s run function rr_chase:arenaclear/checkerboard
kill @e[type=marker,tag=ChaseChecker]

fill 37 63 56 38 57 52 minecraft:black_stained_glass
fill 38 50 56 37 56 52 minecraft:white_stained_glass
fill 38 49 56 37 43 52 minecraft:black_stained_glass
fill 38 42 56 37 36 52 minecraft:white_stained_glass
fill 38 35 56 37 34 52 minecraft:black_stained_glass

fill -13 63 56 -14 57 52 minecraft:black_stained_glass
fill -13 50 56 -14 56 52 minecraft:white_stained_glass
fill -13 49 56 -14 43 52 minecraft:black_stained_glass
fill -13 42 56 -14 36 52 minecraft:white_stained_glass
fill -13 35 56 -14 34 52 minecraft:black_stained_glass


fill -14 34 52 38 63 56 black_stained_glass replace yellow_stained_glass
fill 38 63 57 -14 34 61 light_gray_stained_glass replace orange_stained_glass
fill -14 34 66 38 63 62 white_stained_glass replace white_stained_glass

#Yellow Decorations
fill -14 84 66 38 63 48 gray_stained_glass replace yellow_stained_glass
fill -14 84 66 38 63 48 gray_stained_glass replace orange_stained_glass

fill -14 63 55 38 34 40 gray_stained_glass replace yellow_stained_glass
fill -14 63 55 38 34 40 gray_stained_glass replace orange_stained_glass

fill -14 63 39 38 34 29 gray_stained_glass replace yellow_stained_glass
fill -14 63 39 38 34 29 gray_stained_glass replace orange_stained_glass

fill -14 63 73 38 34 75 gray_stained_glass replace yellow_stained_glass
fill -14 63 73 38 34 75 gray_stained_glass replace orange_stained_glass

#Blue Decorations
fill -14 84 -66 38 63 -48 red_stained_glass replace blue_stained_glass
fill -14 84 -66 38 63 -48 pink_stained_glass replace cyan_stained_glass

fill 38 63 -55 -14 34 -40 red_stained_glass replace blue_stained_glass
fill 38 63 -55 -14 34 -40 pink_stained_glass replace cyan_stained_glass

fill 38 63 -39 -14 34 -29 red_stained_glass replace blue_stained_glass
fill 38 63 -39 -14 34 -29 pink_stained_glass replace cyan_stained_glass

fill -14 63 -73 38 34 -75 red_stained_glass replace blue_stained_glass
fill -14 63 -73 38 34 -75 pink_stained_glass replace cyan_stained_glass


#cancel yellow
function game:cancelyellow
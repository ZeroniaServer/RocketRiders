function arenaclear:baseplacement
function arenaclear:detailplacement

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

#cancel yellow
function game:cancelyellow
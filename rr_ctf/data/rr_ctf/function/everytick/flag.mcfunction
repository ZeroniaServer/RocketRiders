#Flagpoles
fill 34 66 64 34 71 64 oak_fence replace #custom:basereplace
fill -10 66 64 -10 71 64 oak_fence replace #custom:basereplace
fill -10 66 -64 -10 71 -64 oak_fence replace #custom:basereplace
fill 34 66 -64 34 71 -64 oak_fence replace #custom:basereplace

#Flag base
execute positioned 34 64 63 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 35 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 65 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 33 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -9 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -11 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 65 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 63 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 -63 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -9 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 -65 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -11 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned -10 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 -65 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 33 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 35 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 -63 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock
execute positioned 34 64 -64 unless block ~ ~ ~ bedrock run setblock ~ ~ ~ bedrock

#Clear behind/in front
fill -14 64 66 39 74 70 air replace yellow_wool
fill -14 64 65 39 74 70 air replace oak_fence
fill -14 64 65 39 74 70 air replace purple_stained_glass
fill -14 64 65 39 74 70 air replace white_stained_glass
fill -14 64 -66 39 74 -70 air replace #custom:wool
fill -14 64 -65 39 74 -70 air replace oak_fence
fill -14 64 -65 39 74 -70 air replace purple_stained_glass
fill -14 64 -65 39 74 -70 air replace white_stained_glass
fill -14 64 62 39 74 58 air replace yellow_wool
fill -14 64 63 39 74 58 air replace oak_fence
fill -14 64 63 39 74 58 air replace purple_stained_glass
fill -14 64 63 39 74 58 air replace white_stained_glass
fill -14 64 -63 39 74 -58 air replace #custom:wool
fill -14 64 -63 39 74 -58 air replace oak_fence
fill -14 64 -63 39 74 -58 air replace purple_stained_glass
fill -14 64 -63 39 74 -58 air replace white_stained_glass
execute positioned 35 65 -64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 33 65 -64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 34 65 -65 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 34 65 -63 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -11 65 -64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -9 65 -64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -10 65 -63 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -10 65 -65 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 35 65 64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 33 65 64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 34 65 65 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned 34 65 63 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -11 65 64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -9 65 64 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -10 65 63 unless block ~ ~ ~ air run setblock ~ ~ ~ air
execute positioned -10 65 65 unless block ~ ~ ~ air run setblock ~ ~ ~ air

#Actionbars for flag carrier
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFlag,tag=!DelayActionbar] run title @s actionbar [{"text":"You stole a flag! Return to your base to capture it!","color":"white","bold":true}]

#Make flags wave around
scoreboard players operation $flag_wave var = $gametime global
scoreboard players operation $flag_wave var %= $40 constant

execute if score $flag_wave var matches 0..19 if score FY1: FlagScore matches 30.. run place template game:yellow_flag2 30 71 63
execute if score $flag_wave var matches 20..39 if score FY1: FlagScore matches 30.. run place template game:yellow_flag1 30 71 63

execute if score $flag_wave var matches 0..19 if score FY2: FlagScore matches 30.. run place template game:yellow_flag2 -14 71 63
execute if score $flag_wave var matches 20..39 if score FY2: FlagScore matches 30.. run place template game:yellow_flag1 -14 71 63

execute if score $flag_wave var matches 0..19 if score FB1: FlagScore matches 30.. unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 -14 71 -65
execute if score $flag_wave var matches 0..19 if score FB1: FlagScore matches 30.. if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 -14 71 -65
execute if score $flag_wave var matches 20..39 if score FB1: FlagScore matches 30.. unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag1 -14 71 -65
execute if score $flag_wave var matches 20..39 if score FB1: FlagScore matches 30.. if predicate game:gamemode_components/red_for_blue run place template game:red_flag1 -14 71 -65

execute if score $flag_wave var matches 0..19 if score FB2: FlagScore matches 30.. unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 30 71 -65
execute if score $flag_wave var matches 0..19 if score FB2: FlagScore matches 30.. if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 30 71 -65
execute if score $flag_wave var matches 20..39 if score FB2: FlagScore matches 30.. unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag1 30 71 -65
execute if score $flag_wave var matches 20..39 if score FB2: FlagScore matches 30.. if predicate game:gamemode_components/red_for_blue run place template game:red_flag1 30 71 -65

#Capture Yellow Flag 1 (the flag on yellow's right)
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..}] positioned 34 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY1: FlagScore matches 30.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"selector":"@s"},{"text":" lowered a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..}] positioned 34 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY1: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s"},{"text":" lowered a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..}] positioned 34 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY1: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s"},{"text":" lowered your flag!","color":"yellow"},"\n"]
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..}] positioned 34 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY1: FlagScore matches 30.. run function rr_ctf:everytick/lowerflagtitle

execute if predicate game:phase/match/play if score FY1: FlagScore matches 0 positioned 34 65 64 if entity @e[type=player,predicate=custom:team/blue,distance=..3] unless entity @a[x=0,tag=CarryFY1] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,predicate=custom:team/blue,distance=..2,predicate=custom:alive] add CarryFY1
execute if predicate game:phase/match/play if score FY1: FlagScore matches 0 positioned 34 65 64 unless block ~ ~ ~ minecraft:white_stained_glass if entity @e[type=player,predicate=custom:team/blue,distance=..12,scores={MineWhiteGlass=1..}] unless entity @a[x=0,tag=CarryFY1] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,predicate=custom:team/blue,distance=..12,scores={MineWhiteGlass=1..},predicate=custom:alive] add CarryFY1
execute if predicate game:phase/match/play if entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1] run scoreboard players set FY1: FlagScore -1

execute if predicate game:phase/match/play positioned 34 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY1: FlagScore matches 30.. run scoreboard players set FY1: FlagScore 29
execute if predicate game:phase/match/play positioned 34 65 64 unless block ~ ~ ~ purple_stained_glass unless entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY1: FlagScore matches 30.. run setblock ~ ~ ~ purple_stained_glass
execute unless predicate game:phase/match/play positioned 34 65 64 unless block ~ ~ ~ purple_stained_glass if score FY1: FlagScore matches 30.. run setblock ~ ~ ~ purple_stained_glass
execute if score FY1: FlagScore matches ..29 run setblock 34 65 64 white_stained_glass

execute positioned 34 65 64 if score FY1: FlagScore matches 1..29 run playsound entity.chicken.egg master @a[x=0] ~ ~ ~ 1 0.8
execute if score FY1: FlagScore matches 1..29 run scoreboard players remove FY1: FlagScore 1

execute if score FY1: FlagScore matches 26 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 26 run place template game:yellow_flag2 30 70 63
execute if score FY1: FlagScore matches 22 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 22 run place template game:yellow_flag2 30 69 63
execute if score FY1: FlagScore matches 22 run setblock 34 71 64 oak_fence
execute if score FY1: FlagScore matches 18 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 18 run place template game:yellow_flag2 30 68 63
execute if score FY1: FlagScore matches 18 run setblock 34 70 64 oak_fence
execute if score FY1: FlagScore matches 14 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 14 run place template game:yellow_flag2 30 67 63
execute if score FY1: FlagScore matches 14 run setblock 34 69 64 oak_fence
execute if score FY1: FlagScore matches 10 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 10 run place template game:yellow_flag2 30 66 63
execute if score FY1: FlagScore matches 10 run setblock 34 68 64 oak_fence
execute if score FY1: FlagScore matches 6 run fill 34 65 63 30 72 64 air replace yellow_wool
execute if score FY1: FlagScore matches 6 run place template game:yellow_flag2 30 65 63
execute if score FY1: FlagScore matches 6 run setblock 34 65 64 white_stained_glass
execute if score FY1: FlagScore matches 6 run setblock 34 67 64 oak_fence
#END

#Keep placing FY1 once flag lowered
execute if score FY1: FlagScore matches 0 run setblock 34 66 64 yellow_wool
execute if score FY1: FlagScore matches 0 run fill 33 66 63 33 65 63 yellow_wool
execute if score FY1: FlagScore matches 0 run fill 32 66 64 31 65 64 yellow_wool
execute if score FY1: FlagScore matches 0 run setblock 30 65 64 yellow_wool

#No more funny flag
execute if score FY1: FlagScore matches 0 run fill 30 67 63 34 72 64 air replace yellow_wool

#Capture Yellow Flag 2 (the flag on yellow's left)
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..}] positioned -10 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY2: FlagScore matches 30.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"selector":"@s","color":"blue"},{"text":" lowered a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..}] positioned -10 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY2: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" lowered a ","color":"yellow"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"yellow"},"\n"]
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..}] positioned -10 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY2: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s","color":"blue"},{"text":" lowered your flag!","color":"yellow"},"\n"]
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..}] positioned -10 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY2: FlagScore matches 30.. run function rr_ctf:everytick/lowerflagtitle

execute if predicate game:phase/match/play if score FY2: FlagScore matches 0 positioned -10 65 64 if entity @e[type=player,predicate=custom:team/blue,distance=..3] unless entity @a[x=0,tag=CarryFY2] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,predicate=custom:team/blue,distance=..2,predicate=custom:alive] add CarryFY2
execute if predicate game:phase/match/play if score FY2: FlagScore matches 0 positioned -10 65 64 unless block ~ ~ ~ minecraft:white_stained_glass if entity @e[type=player,predicate=custom:team/blue,distance=..12,scores={MineWhiteGlass=1..}] unless entity @a[x=0,tag=CarryFY2] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,predicate=custom:team/blue,distance=..12,scores={MineWhiteGlass=1..},predicate=custom:alive] add CarryFY2
execute if predicate game:phase/match/play if entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2] run scoreboard players set FY2: FlagScore -1

execute if predicate game:phase/match/play positioned -10 65 64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY2: FlagScore matches 30.. run scoreboard players set FY2: FlagScore 29
execute if predicate game:phase/match/play positioned -10 65 64 unless block ~ ~ ~ purple_stained_glass unless entity @e[type=player,predicate=custom:team/blue,scores={MinePurpleGlass=1..},distance=..12] if score FY2: FlagScore matches 30.. run setblock ~ ~ ~ purple_stained_glass
execute unless predicate game:phase/match/play positioned -10 65 64 unless block ~ ~ ~ purple_stained_glass if score FY2: FlagScore matches 30.. run setblock ~ ~ ~ purple_stained_glass
execute if score FY2: FlagScore matches ..29 run setblock -10 65 64 white_stained_glass

execute positioned -10 65 64 if score FY2: FlagScore matches ..29 if score FY2: FlagScore matches 1.. run playsound entity.chicken.egg master @a[x=0] ~ ~ ~ 1 0.8
execute if score FY2: FlagScore matches ..29 if score FY2: FlagScore matches 1.. run scoreboard players remove FY2: FlagScore 1

execute if score FY2: FlagScore matches 26 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 26 run place template game:yellow_flag2 -14 70 63
execute if score FY2: FlagScore matches 22 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 22 run place template game:yellow_flag2 -14 69 63
execute if score FY2: FlagScore matches 22 run setblock -10 71 64 oak_fence
execute if score FY2: FlagScore matches 18 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 18 run place template game:yellow_flag2 -14 68 63
execute if score FY2: FlagScore matches 18 run setblock -10 70 64 oak_fence
execute if score FY2: FlagScore matches 14 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 14 run place template game:yellow_flag2 -14 67 63
execute if score FY2: FlagScore matches 14 run setblock -10 69 64 oak_fence
execute if score FY2: FlagScore matches 10 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 10 run place template game:yellow_flag2 -14 66 63
execute if score FY2: FlagScore matches 10 run setblock -10 68 64 oak_fence
execute if score FY2: FlagScore matches 6 run fill -10 64 63 -14 72 64 air replace yellow_wool
execute if score FY2: FlagScore matches 6 run place template game:yellow_flag2 -14 65 63
execute if score FY2: FlagScore matches 6 run setblock -10 65 64 minecraft:white_stained_glass
execute if score FY2: FlagScore matches 6 run setblock -10 67 64 oak_fence
#END

#Keep placing FY2 once flag lowered
execute if score FY2: FlagScore matches 0 run setblock -10 66 64 yellow_wool
execute if score FY2: FlagScore matches 0 run fill -11 66 63 -11 65 63 yellow_wool
execute if score FY2: FlagScore matches 0 run fill -12 66 64 -13 65 64 yellow_wool
execute if score FY2: FlagScore matches 0 run setblock -14 65 64 yellow_wool

#No more funny flag
execute if score FY2: FlagScore matches 0 run fill -10 67 63 -14 72 64 air replace yellow_wool

#Capture Blue Flag 1 (the flag on blue's right)
execute if predicate game:phase/match/play unless predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB1: FlagScore matches 30.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"selector":"@s"},{"text":" lowered a ","color":"dark_aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play if predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB1: FlagScore matches 30.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"selector":"@s"},{"text":" lowered a ","color":"red"},{"text":"Red","color":"dark_red"},{"text":" flag!","color":"red"},"\n"]
execute if predicate game:phase/match/play unless predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB1: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s"},{"text":" lowered a ","color":"dark_aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play if predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB1: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s"},{"text":" lowered a ","color":"red"},{"text":"Red","color":"dark_red"},{"text":" flag!","color":"red"},"\n"]
execute if predicate game:phase/match/play unless predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB1: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s"},{"text":" lowered your flag!","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play if predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB1: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s"},{"text":" lowered your flag!","color":"red"},"\n"]
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB1: FlagScore matches 30.. run function rr_ctf:everytick/lowerflagtitle

execute if predicate game:phase/match/play if score FB1: FlagScore matches 0 positioned -10 65 -64 if entity @e[type=player,predicate=custom:team/yellow,distance=..3] unless entity @a[x=0,tag=CarryFB1] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,predicate=custom:team/yellow,distance=..2,predicate=custom:alive] add CarryFB1
execute if predicate game:phase/match/play if score FB1: FlagScore matches 0 positioned -10 65 -64 unless block ~ ~ ~ minecraft:white_stained_glass if entity @e[type=player,predicate=custom:team/yellow,distance=..12,scores={MineWhiteGlass=1..}] unless entity @a[x=0,tag=CarryFB1] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,predicate=custom:team/yellow,distance=..12,scores={MineWhiteGlass=1..},predicate=custom:alive] add CarryFB1
execute if predicate game:phase/match/play if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1] run scoreboard players set FB1: FlagScore -1

execute if predicate game:phase/match/play positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB1: FlagScore matches 30.. run scoreboard players set FB1: FlagScore 29
execute if predicate game:phase/match/play positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass unless entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB1: FlagScore matches 30.. run setblock ~ ~ ~ purple_stained_glass
execute unless predicate game:phase/match/play positioned -10 65 -64 unless block ~ ~ ~ purple_stained_glass if score FB1: FlagScore matches 30.. run setblock ~ ~ ~ purple_stained_glass
execute if score FB1: FlagScore matches ..29 run setblock -10 65 -64 white_stained_glass

execute positioned -10 65 -64 if score FB1: FlagScore matches ..29 if score FB1: FlagScore matches 1.. run playsound entity.chicken.egg master @a[x=0] ~ ~ ~ 1 0.8
execute if score FB1: FlagScore matches ..29 if score FB1: FlagScore matches 1.. run scoreboard players remove FB1: FlagScore 1

execute if score FB1: FlagScore matches 26 run fill -10 64 -65 -14 72 -64 air replace #custom:wool
execute if score FB1: FlagScore matches 26 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 -14 70 -65
execute if score FB1: FlagScore matches 26 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 -14 70 -65
execute if score FB1: FlagScore matches 22 run fill -10 64 -65 -14 72 -64 air replace #custom:wool
execute if score FB1: FlagScore matches 22 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 -14 69 -65
execute if score FB1: FlagScore matches 22 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 -14 69 -65
execute if score FB1: FlagScore matches 22 run setblock -10 71 -64 oak_fence
execute if score FB1: FlagScore matches 18 run fill -10 64 -65 -14 72 -64 air replace #custom:wool
execute if score FB1: FlagScore matches 18 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 -14 68 -65
execute if score FB1: FlagScore matches 18 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 -14 68 -65
execute if score FB1: FlagScore matches 18 run setblock -10 70 -64 oak_fence
execute if score FB1: FlagScore matches 14 run fill -10 64 -65 -14 72 -64 air replace #custom:wool
execute if score FB1: FlagScore matches 14 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 -14 67 -65
execute if score FB1: FlagScore matches 14 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 -14 67 -65
execute if score FB1: FlagScore matches 14 run setblock -10 69 -64 oak_fence
execute if score FB1: FlagScore matches 10 run fill -10 64 -65 -14 72 -64 air replace #custom:wool
execute if score FB1: FlagScore matches 10 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 -14 66 -65
execute if score FB1: FlagScore matches 10 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 -14 66 -65
execute if score FB1: FlagScore matches 10 run setblock -10 68 -64 oak_fence
execute if score FB1: FlagScore matches 6 run fill -10 64 -65 -14 72 -64 air replace #custom:wool
execute if score FB1: FlagScore matches 6 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 -14 65 -65
execute if score FB1: FlagScore matches 6 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 -14 65 -65
execute if score FB1: FlagScore matches 6 run setblock -10 65 -64 white_stained_glass
execute if score FB1: FlagScore matches 6 run setblock -10 67 -64 oak_fence
#END

#Keep placing FB1 once flag lowered
execute if score FB1: FlagScore matches 0 unless predicate game:gamemode_components/red_for_blue run setblock -10 66 -64 blue_wool
execute if score FB1: FlagScore matches 0 unless predicate game:gamemode_components/red_for_blue run fill -11 66 -65 -11 65 -65 blue_wool
execute if score FB1: FlagScore matches 0 unless predicate game:gamemode_components/red_for_blue run fill -12 66 -64 -13 65 -64 blue_wool
execute if score FB1: FlagScore matches 0 unless predicate game:gamemode_components/red_for_blue run setblock -14 65 -64 blue_wool
execute if score FB1: FlagScore matches 0 if predicate game:gamemode_components/red_for_blue run setblock -10 66 -64 red_wool
execute if score FB1: FlagScore matches 0 if predicate game:gamemode_components/red_for_blue run fill -11 66 -65 -11 65 -65 red_wool
execute if score FB1: FlagScore matches 0 if predicate game:gamemode_components/red_for_blue run fill -12 66 -64 -13 65 -64 red_wool
execute if score FB1: FlagScore matches 0 if predicate game:gamemode_components/red_for_blue run setblock -14 65 -64 red_wool

#No more funny flag
execute if score FB1: FlagScore matches 0 run fill -10 67 -65 -14 72 -64 air replace #custom:wool

#Capture Blue Flag 2 (the flag on blue's left)
execute if predicate game:phase/match/play unless predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB2: FlagScore matches 30.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"selector":"@s"},{"text":" lowered a ","color":"dark_aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play if predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB2: FlagScore matches 30.. run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"selector":"@s"},{"text":" lowered a ","color":"red"},{"text":"Red","color":"dark_red"},{"text":" flag!","color":"red"},"\n"]
execute if predicate game:phase/match/play unless predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB2: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s"},{"text":" lowered a ","color":"dark_aqua"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play if predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB2: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s"},{"text":" lowered a ","color":"red"},{"text":"Red","color":"dark_red"},{"text":" flag!","color":"red"},"\n"]
execute if predicate game:phase/match/play unless predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB2: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s"},{"text":" lowered your flag!","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play if predicate game:gamemode_components/red_for_blue as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB2: FlagScore matches 30.. run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"⚠ ","color":"red"},{"selector":"@s"},{"text":" lowered your flag!","color":"red"},"\n"]
execute if predicate game:phase/match/play as @e[x=0,type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..}] positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB2: FlagScore matches 30.. run function rr_ctf:everytick/lowerflagtitle

execute if predicate game:phase/match/play if score FB2: FlagScore matches 0 positioned 34 65 -64 if entity @e[type=player,predicate=custom:team/yellow,distance=..3] unless entity @a[x=0,tag=CarryFB2] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,predicate=custom:team/yellow,distance=..2,predicate=custom:alive] add CarryFB2
execute if predicate game:phase/match/play if score FB2: FlagScore matches 0 positioned 34 65 -64 unless block ~ ~ ~ minecraft:white_stained_glass if entity @e[type=player,predicate=custom:team/yellow,distance=..12,scores={MineWhiteGlass=1..}] unless entity @a[x=0,tag=CarryFB2] run tag @e[type=player,limit=1,sort=nearest,tag=!CarryFlag,predicate=custom:team/yellow,distance=..12,scores={MineWhiteGlass=1..},predicate=custom:alive] add CarryFB2
execute if predicate game:phase/match/play if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2] run scoreboard players set FB2: FlagScore -1

execute if predicate game:phase/match/play positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB2: FlagScore matches 30.. run scoreboard players set FB2: FlagScore 29
execute if predicate game:phase/match/play positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass unless entity @e[type=player,predicate=custom:team/yellow,scores={MinePurpleGlass=1..},distance=..12] if score FB2: FlagScore matches 30.. run setblock ~ ~ ~ purple_stained_glass
execute unless predicate game:phase/match/play positioned 34 65 -64 unless block ~ ~ ~ purple_stained_glass if score FB2: FlagScore matches 30.. run setblock ~ ~ ~ purple_stained_glass
execute if score FB2: FlagScore matches ..29 run setblock 34 65 -64 white_stained_glass

execute positioned 34 65 -64 if score FB2: FlagScore matches 1..29 run playsound entity.chicken.egg master @a[x=0] ~ ~ ~ 1 0.8
execute if score FB2: FlagScore matches 1..29 run scoreboard players remove FB2: FlagScore 1

execute if score FB2: FlagScore matches 26 run fill 30 64 -64 34 72 -65 air replace #custom:wool
execute if score FB2: FlagScore matches 26 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 30 70 -65
execute if score FB2: FlagScore matches 26 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 30 70 -65
execute if score FB2: FlagScore matches 22 run fill 30 64 -64 34 72 -65 air replace #custom:wool
execute if score FB2: FlagScore matches 22 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 30 69 -65
execute if score FB2: FlagScore matches 22 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 30 69 -65
execute if score FB2: FlagScore matches 22 run setblock 34 71 -64 oak_fence
execute if score FB2: FlagScore matches 18 run fill 30 64 -64 34 72 -65 air replace #custom:wool
execute if score FB2: FlagScore matches 18 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 30 68 -65
execute if score FB2: FlagScore matches 18 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 30 68 -65
execute if score FB2: FlagScore matches 18 run setblock 34 70 -64 oak_fence
execute if score FB2: FlagScore matches 14 run fill 30 64 -64 34 72 -65 air replace #custom:wool
execute if score FB2: FlagScore matches 14 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 30 67 -65
execute if score FB2: FlagScore matches 14 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 30 67 -65
execute if score FB2: FlagScore matches 14 run setblock 34 69 -64 oak_fence
execute if score FB2: FlagScore matches 10 run fill 30 64 -64 34 72 -65 air replace #custom:wool
execute if score FB2: FlagScore matches 10 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 30 66 -65
execute if score FB2: FlagScore matches 10 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 30 66 -65
execute if score FB2: FlagScore matches 10 run setblock 34 68 -64 oak_fence
execute if score FB2: FlagScore matches 6 run fill 30 64 -64 34 72 -65 air replace #custom:wool
execute if score FB2: FlagScore matches 6 unless predicate game:gamemode_components/red_for_blue run place template game:blue_flag2 30 65 -65
execute if score FB2: FlagScore matches 6 if predicate game:gamemode_components/red_for_blue run place template game:red_flag2 30 65 -65
execute if score FB2: FlagScore matches 6 run setblock 34 65 -64 white_stained_glass
execute if score FB2: FlagScore matches 6 run setblock 34 67 -64 oak_fence
#END

#Keep placing FB2 once flag lowered
execute if score FB2: FlagScore matches 0 unless predicate game:gamemode_components/red_for_blue run setblock 34 66 -64 blue_wool
execute if score FB2: FlagScore matches 0 unless predicate game:gamemode_components/red_for_blue run fill 33 66 -65 33 65 -65 blue_wool
execute if score FB2: FlagScore matches 0 unless predicate game:gamemode_components/red_for_blue run fill 32 66 -64 31 65 -64 blue_wool
execute if score FB2: FlagScore matches 0 unless predicate game:gamemode_components/red_for_blue run setblock 30 65 -64 blue_wool
execute if score FB2: FlagScore matches 0 if predicate game:gamemode_components/red_for_blue run setblock 34 66 -64 red_wool
execute if score FB2: FlagScore matches 0 if predicate game:gamemode_components/red_for_blue run fill 33 66 -65 33 65 -65 red_wool
execute if score FB2: FlagScore matches 0 if predicate game:gamemode_components/red_for_blue run fill 32 66 -64 31 65 -64 red_wool
execute if score FB2: FlagScore matches 0 if predicate game:gamemode_components/red_for_blue run setblock 30 65 -64 red_wool

#No more funny flag
execute if score FB2: FlagScore matches 0 run fill 30 67 -65 34 72 -64 air replace #custom:wool

#Add tags for flag carriers
execute if predicate game:phase/match/play run tag @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1] add CarryFlag
execute if predicate game:phase/match/play run tag @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2] add CarryFlag
execute if predicate game:phase/match/play run tag @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1] add CarryFlag
execute if predicate game:phase/match/play run tag @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2] add CarryFlag

# Show flag carriers in tablist
execute if predicate game:phase/match/play run scoreboard players reset @a[x=0,tag=!CarryFlag] flag_tablist_display
execute if predicate game:phase/match/play run scoreboard players display numberformat @a[x=0,tag=CarryFlag,tag=CarryFY1] flag_tablist_display fixed {color:"yellow",text:"🏴"}
execute if predicate game:phase/match/play run scoreboard players display numberformat @a[x=0,tag=CarryFlag,tag=CarryFY2] flag_tablist_display fixed {color:"yellow",text:"🏴"}
execute if predicate game:phase/match/play run scoreboard players display numberformat @a[x=0,tag=CarryFlag,tag=CarryFB1] flag_tablist_display fixed {color:"blue",text:"🏴"}
execute if predicate game:phase/match/play run scoreboard players display numberformat @a[x=0,tag=CarryFlag,tag=CarryFB2] flag_tablist_display fixed {color:"blue",text:"🏴"}

#Add scores for flag carriers
execute if predicate game:phase/match/play run scoreboard players add @a[x=0,predicate=custom:team/blue] FlagsCaptured 0
execute if predicate game:phase/match/play run scoreboard players add @a[x=0,predicate=custom:team/yellow] FlagsCaptured 0
execute if predicate game:phase/match/play run scoreboard players reset @a[x=0,predicate=!custom:team/any_playing_team] FlagsCaptured
execute if predicate game:phase/match/play run scoreboard players set @a[x=0,scores={FlagsCaptured=3..}] FlagsCaptured 2

#If flag carrier disconnects completely
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFB1] if score FB1: FlagScore matches -1 run tellraw @a[x=0] ["","\n",{"text":"Flag Restored! ","color":"blue"},{"text":"A player left the match while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFB2] if score FB2: FlagScore matches -1 run tellraw @a[x=0] ["","\n",{"text":"Flag Restored! ","color":"blue"},{"text":"A player left the match while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFY1] if score FY1: FlagScore matches -1 run tellraw @a[x=0] ["","\n",{"text":"Flag Restored! ","color":"gold"},{"text":"A player left the match while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFY2] if score FY2: FlagScore matches -1 run tellraw @a[x=0] ["","\n",{"text":"Flag Restored! ","color":"gold"},{"text":"A player left the match while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]

execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFB1] if score FB1: FlagScore matches -1 as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFB2] if score FB2: FlagScore matches -1 as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFY1] if score FY1: FlagScore matches -1 as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFY2] if score FY2: FlagScore matches -1 as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7

execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFB1] if score FB1: FlagScore matches -1 run scoreboard players set FB1: FlagScore 0
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFB2] if score FB2: FlagScore matches -1 run scoreboard players set FB2: FlagScore 0
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFY1] if score FY1: FlagScore matches -1 run scoreboard players set FY1: FlagScore 0
execute if predicate game:phase/match/play unless entity @a[x=0,tag=CarryFY2] if score FY2: FlagScore matches -1 run scoreboard players set FY2: FlagScore 0

#Handle non-players (leaving midgame)
#Does not apply if there's already another flag carrier (in case of relog)
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFB1,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFB1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FB1: FlagScore matches -1 run tellraw @a[x=0] ["","\n",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" left the match while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFB2,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFB2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FB2: FlagScore matches -1 run tellraw @a[x=0] ["","\n",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s","color":"gold"},{"text":" left the match while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFY1,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFY1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FY1: FlagScore matches -1 run tellraw @a[x=0] ["","\n",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" left the match while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFY2,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFY2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FY2: FlagScore matches -1 run tellraw @a[x=0] ["","\n",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" left the match while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]

execute if predicate game:phase/match/play as @a[x=0,tag=CarryFB1,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFB1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FB1: FlagScore matches -1 as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFB2,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFB2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FB2: FlagScore matches -1 as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFY1,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFY1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FY1: FlagScore matches -1 as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFY2,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFY2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FY2: FlagScore matches -1 as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7

execute if predicate game:phase/match/play as @a[x=0,tag=CarryFB1,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFB1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FB1: FlagScore matches -1 run scoreboard players set FB1: FlagScore 0
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFB2,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFB2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FB2: FlagScore matches -1 run scoreboard players set FB2: FlagScore 0
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFY1,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFY1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FY1: FlagScore matches -1 run scoreboard players set FY1: FlagScore 0
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFY2,predicate=!custom:team/any_playing_team] unless entity @a[x=0,tag=CarryFY2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] if score FY2: FlagScore matches -1 run scoreboard players set FY2: FlagScore 0

execute if predicate game:phase/match/play run function rr_ctf:everytick/clearflagtags

execute if predicate game:phase/match/play run scoreboard players reset @a[x=0] MinePurpleGlass
execute if predicate game:phase/match/play run scoreboard players reset @a[x=0] MineWhiteGlass

#Carry flag
execute if predicate game:phase/match/play if entity @a[x=0,tag=CarryFlag] run function rr_ctf:everytick/carryflag
execute if predicate game:phase/match/play run tag @a[x=0,tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] remove CarryFlag
execute if predicate game:phase/match/play run scoreboard players reset @a[x=0,tag=!CarryFlag] FlagScore
execute if predicate game:phase/match/play run effect clear @a[x=0,tag=!CarryFlag,predicate=custom:team/any_playing_team] resistance
execute if predicate game:phase/match/play run effect clear @a[x=0,tag=!CarryFlag,predicate=custom:team/any_playing_team] strength
execute if predicate game:phase/match/play run effect clear @a[x=0,tag=!CarryFlag,predicate=custom:team/any_playing_team] absorption
execute if predicate game:phase/match/play unless entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1] run bossbar set rr_ctf:fy1 value 0
execute if predicate game:phase/match/play unless entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1] run bossbar set rr_ctf:fy1 players none
execute if predicate game:phase/match/play unless entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2] run bossbar set rr_ctf:fy2 value 0
execute if predicate game:phase/match/play unless entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2] run bossbar set rr_ctf:fy2 players none
execute if predicate game:phase/match/play unless entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1] run bossbar set rr_ctf:fb1 value 0
execute if predicate game:phase/match/play unless entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1] run bossbar set rr_ctf:fb1 players none
execute if predicate game:phase/match/play unless entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2] run bossbar set rr_ctf:fb2 value 0
execute if predicate game:phase/match/play unless entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2] run bossbar set rr_ctf:fb2 players none

#Glowing for flag carriers (blink if Sonar is enabled)
execute if predicate game:phase/match/play unless predicate game:modifiers/sonar/on run effect clear @a[x=0,tag=!CarryFlag] glowing
execute if predicate game:phase/match/play unless predicate game:modifiers/sonar/on run effect give @a[limit=1,x=0,tag=CarryFlag] glowing infinite 0 true
execute if predicate game:phase/match/play if predicate game:modifiers/sonar/on run scoreboard players operation $glowing_period var = $gametime global
execute if predicate game:phase/match/play if predicate game:modifiers/sonar/on run scoreboard players operation $glowing_period var %= $20 constant
execute if predicate game:phase/match/play if predicate game:modifiers/sonar/on if score $glowing_period var matches 0..9 run effect clear @a[limit=1,x=0,tag=CarryFlag] glowing

#Flip missile tags
execute if predicate game:phase/match/play run tag @a[x=0,tag=CarryFlag,tag=!FlipMissile] add FlipMissile
execute if predicate game:phase/match/play run tag @a[x=0,tag=!CarryFlag] remove FlipMissile

#Flagpoles
execute positioned as @e[x=0,type=marker,tag=ctf_flag] run fill ~-2 ~ ~-2 ~2 ~10 ~2 air replace oak_fence
execute positioned as @e[x=0,type=marker,tag=ctf_flag] run fill ~ ~2 ~ ~ ~7 ~ oak_fence

#Flag base
execute positioned as @e[x=0,type=marker,tag=ctf_flag] run fill ~-1 ~ ~ ~1 ~ ~ bedrock
execute positioned as @e[x=0,type=marker,tag=ctf_flag] run fill ~ ~ ~-1 ~ ~ ~1 bedrock

#Clear behind/in front
execute positioned as @e[x=0,type=marker,tag=ctf_flag] unless block ~ ~ ~ white_stained_glass run fill ~-2 ~ ~-2 ~2 ~2 ~2 air replace white_stained_glass
execute positioned as @e[x=0,type=marker,tag=ctf_flag] unless block ~ ~ ~ purple_stained_glass run fill ~-2 ~ ~-2 ~2 ~2 ~2 air replace purple_stained_glass
execute positioned as @e[x=0,type=marker,tag=ctf_flag] run fill ~-6 ~ ~-3 ~2 ~10 ~2 air replace #custom:wool

#Actionbars for flag carrier
execute if predicate game:phase/match/play as @a[x=0,tag=CarryFlag,tag=!DelayActionbar] run title @s actionbar [{"text":"You stole a flag! Return to your base to capture it!","color":"white","bold":true}]

#Make flags wave around
scoreboard players operation $flag_wave var = $match_time global
scoreboard players operation $flag_wave var %= $40 constant

execute if score $flag_wave var matches 0..19 if score FY1: FlagScore matches 27.. positioned as @e[x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run place template game:asset/flag/stage_2/yellow ~-4 ~7 ~-1
execute if score $flag_wave var matches 20..39 if score FY1: FlagScore matches 27.. positioned as @e[x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run place template game:asset/flag/stage_1/yellow ~-4 ~7 ~-1

execute if score $flag_wave var matches 0..19 if score FY2: FlagScore matches 27.. positioned as @e[x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run place template game:asset/flag/stage_2/yellow ~-4 ~7 ~-1
execute if score $flag_wave var matches 20..39 if score FY2: FlagScore matches 27.. positioned as @e[x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run place template game:asset/flag/stage_1/yellow ~-4 ~7 ~-1

execute if score $flag_wave var matches 0..19 if score FB1: FlagScore matches 27.. positioned as @e[x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run place template game:asset/flag/stage_2/blue ~-4 ~7 ~-1
execute if score $flag_wave var matches 20..39 if score FB1: FlagScore matches 27.. positioned as @e[x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run place template game:asset/flag/stage_1/blue ~-4 ~7 ~-1

execute if score $flag_wave var matches 0..19 if score FB2: FlagScore matches 27.. positioned as @e[x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run place template game:asset/flag/stage_2/blue ~-4 ~7 ~-1
execute if score $flag_wave var matches 20..39 if score FB2: FlagScore matches 27.. positioned as @e[x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run place template game:asset/flag/stage_1/blue ~-4 ~7 ~-1

#Regenerate base blocks and ladders
scoreboard players set $pulse_period var 60
scoreboard players set $pulse_step_length var 3
scoreboard players operation $stage var = $match_time global
scoreboard players operation $stage var %= $pulse_period var
scoreboard players operation $stage var /= $pulse_step_length var
execute as @e[x=0,type=marker,tag=ctf_flag.blue,predicate=custom:location/flag_needs_ladders] at @s run function rr_ctf:everytick/flag_pulse with storage rocketriders:teams blue.block_palette
execute as @e[x=0,type=marker,tag=ctf_flag.yellow,predicate=custom:location/flag_needs_ladders] at @s run function rr_ctf:everytick/flag_pulse with storage rocketriders:teams yellow.block_palette

#Capture Yellow Flag 1 (the flag on yellow's right)
execute if predicate game:phase/match/play if score FY1: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{selector:"@s"}," lowered a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute if predicate game:phase/match/play if score FY1: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," lowered a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute if predicate game:phase/match/play if score FY1: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," lowered your flag!\n"]
execute if predicate game:phase/match/play if score FY1: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run function rr_ctf:everytick/lowerflagtitle

execute if predicate game:phase/match/play if score FY1: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] positioned ~ ~1 ~ if entity @e[type=player,predicate=custom:team/blue,distance=..3] unless entity @a[limit=1,x=0,tag=CarryFY1] run tag @e[limit=1,sort=nearest,distance=..2,type=player,tag=!CarryFlag,predicate=custom:team/blue] add CarryFY1
execute if predicate game:phase/match/play if score FY1: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:white_stained_glass if entity @e[distance=..12,type=player,scores={MineWhiteGlass=1..},predicate=custom:team/blue] unless entity @a[limit=1,x=0,tag=CarryFY1] run tag @e[limit=1,sort=nearest,distance=..12,type=player,tag=!CarryFlag,scores={MineWhiteGlass=1..},predicate=custom:team/blue] add CarryFY1
execute if predicate game:phase/match/play if entity @e[limit=1,x=0,type=player,tag=CarryFY1,predicate=custom:team/blue] run scoreboard players set FY1: FlagScore -1

execute if predicate game:phase/match/play if score FY1: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run scoreboard players set FY1: FlagScore 29
execute if predicate game:phase/match/play if score FY1: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass unless entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run setblock ~ ~ ~ purple_stained_glass
execute unless predicate game:phase/match/play if score FY1: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass run setblock ~ ~ ~ purple_stained_glass
execute if score FY1: FlagScore matches ..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run setblock ~ ~1 ~ white_stained_glass

execute if score FY1: FlagScore matches 1..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run playsound entity.chicken.egg master @a[x=0] ~ ~1 ~ 1 0.8
execute if score FY1: FlagScore matches 1..29 run scoreboard players remove FY1: FlagScore 1

execute if score FY1: FlagScore matches 23..26 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run place template game:asset/flag/stage_1/yellow ~-4 ~6 ~-1
execute if score FY1: FlagScore matches 19..22 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run place template game:asset/flag/stage_1/yellow ~-4 ~5 ~-1
execute if score FY1: FlagScore matches 15..18 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run place template game:asset/flag/stage_1/yellow ~-4 ~4 ~-1
execute if score FY1: FlagScore matches 11..14 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run place template game:asset/flag/stage_1/yellow ~-4 ~3 ~-1
execute if score FY1: FlagScore matches 7..10 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run place template game:asset/flag/stage_1/yellow ~-4 ~2 ~-1
execute if score FY1: FlagScore matches 1..6 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run place template game:asset/flag/stage_1/yellow ~-4 ~1 ~-1
execute if score FY1: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.right] run place template game:asset/flag/stage_1/yellow ~-4 ~1 ~-1

#Capture Yellow Flag 2 (the flag on yellow's left)
execute if predicate game:phase/match/play if score FY2: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{selector:"@s"}," lowered a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute if predicate game:phase/match/play if score FY2: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," lowered a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute if predicate game:phase/match/play if score FY2: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," lowered your flag!\n"]
execute if predicate game:phase/match/play if score FY2: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run function rr_ctf:everytick/lowerflagtitle

execute if predicate game:phase/match/play if score FY2: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] positioned ~ ~1 ~ if entity @e[type=player,predicate=custom:team/blue,distance=..3] unless entity @a[limit=1,x=0,tag=CarryFY2] run tag @e[limit=1,sort=nearest,distance=..2,type=player,tag=!CarryFlag,predicate=custom:team/blue] add CarryFY2
execute if predicate game:phase/match/play if score FY2: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:white_stained_glass if entity @e[distance=..12,type=player,scores={MineWhiteGlass=1..},predicate=custom:team/blue] unless entity @a[limit=1,x=0,tag=CarryFY2] run tag @e[limit=1,sort=nearest,distance=..12,type=player,tag=!CarryFlag,scores={MineWhiteGlass=1..},predicate=custom:team/blue] add CarryFY2
execute if predicate game:phase/match/play if entity @e[limit=1,x=0,type=player,tag=CarryFY2,predicate=custom:team/blue] run scoreboard players set FY2: FlagScore -1

execute if predicate game:phase/match/play if score FY2: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run scoreboard players set FY2: FlagScore 29
execute if predicate game:phase/match/play if score FY2: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass unless entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/blue] run setblock ~ ~ ~ purple_stained_glass
execute unless predicate game:phase/match/play if score FY2: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass run setblock ~ ~ ~ purple_stained_glass
execute if score FY2: FlagScore matches ..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run setblock ~ ~1 ~ white_stained_glass

execute if score FY2: FlagScore matches ..29 if score FY2: FlagScore matches 1.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run playsound entity.chicken.egg master @a[x=0] ~ ~1 ~ 1 0.8
execute if score FY2: FlagScore matches ..29 if score FY2: FlagScore matches 1.. run scoreboard players remove FY2: FlagScore 1

execute if score FY2: FlagScore matches 23..26 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run place template game:asset/flag/stage_1/yellow ~-4 ~6 ~-1
execute if score FY2: FlagScore matches 19..22 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run place template game:asset/flag/stage_1/yellow ~-4 ~5 ~-1
execute if score FY2: FlagScore matches 15..18 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run place template game:asset/flag/stage_1/yellow ~-4 ~4 ~-1
execute if score FY2: FlagScore matches 11..14 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run place template game:asset/flag/stage_1/yellow ~-4 ~3 ~-1
execute if score FY2: FlagScore matches 7..10 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run place template game:asset/flag/stage_1/yellow ~-4 ~2 ~-1
execute if score FY2: FlagScore matches 1..6 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run place template game:asset/flag/stage_1/yellow ~-4 ~1 ~-1
execute if score FY2: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.yellow,tag=ctf_flag.left] run place template game:asset/flag/stage_1/yellow ~-4 ~1 ~-1

#Capture Blue Flag 1 (the flag on blue's right)
execute if predicate game:phase/match/play if score FB1: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{selector:"@s"}," lowered a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute if predicate game:phase/match/play if score FB1: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," lowered a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute if predicate game:phase/match/play if score FB1: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," lowered your flag!\n"]
execute if predicate game:phase/match/play if score FB1: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run function rr_ctf:everytick/lowerflagtitle

execute if predicate game:phase/match/play if score FB1: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ if entity @e[type=player,predicate=custom:team/yellow,distance=..3] unless entity @a[limit=1,x=0,tag=CarryFB1] run tag @e[limit=1,sort=nearest,distance=..2,type=player,tag=!CarryFlag,predicate=custom:team/yellow] add CarryFB1
execute if predicate game:phase/match/play if score FB1: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:white_stained_glass if entity @e[distance=..12,type=player,scores={MineWhiteGlass=1..},predicate=custom:team/yellow] unless entity @a[limit=1,x=0,tag=CarryFB1] run tag @e[limit=1,sort=nearest,distance=..12,type=player,tag=!CarryFlag,scores={MineWhiteGlass=1..},predicate=custom:team/yellow] add CarryFB1
execute if predicate game:phase/match/play if entity @e[limit=1,x=0,type=player,tag=CarryFB1,predicate=custom:team/yellow] run scoreboard players set FB1: FlagScore -1

execute if predicate game:phase/match/play if score FB1: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run scoreboard players set FB1: FlagScore 29
execute if predicate game:phase/match/play if score FB1: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass unless entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run setblock ~ ~ ~ purple_stained_glass
execute unless predicate game:phase/match/play if score FB1: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass run setblock ~ ~ ~ purple_stained_glass
execute if score FB1: FlagScore matches ..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run setblock ~ ~1 ~ white_stained_glass

execute if score FB1: FlagScore matches ..29 if score FB1: FlagScore matches 1.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] positioned ~ ~1 ~ run playsound entity.chicken.egg master @a[x=0] ~ ~1 ~ 1 0.8
execute if score FB1: FlagScore matches ..29 if score FB1: FlagScore matches 1.. run scoreboard players remove FB1: FlagScore 1

execute if score FB1: FlagScore matches 23..26 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run place template game:asset/flag/stage_1/blue ~-4 ~6 ~-1
execute if score FB1: FlagScore matches 19..22 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run place template game:asset/flag/stage_1/blue ~-4 ~5 ~-1
execute if score FB1: FlagScore matches 15..18 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run place template game:asset/flag/stage_1/blue ~-4 ~4 ~-1
execute if score FB1: FlagScore matches 11..14 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run place template game:asset/flag/stage_1/blue ~-4 ~3 ~-1
execute if score FB1: FlagScore matches 7..10 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run place template game:asset/flag/stage_1/blue ~-4 ~2 ~-1
execute if score FB1: FlagScore matches 1..6 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run place template game:asset/flag/stage_1/blue ~-4 ~1 ~-1
execute if score FB1: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.right] run place template game:asset/flag/stage_1/blue ~-4 ~1 ~-1

#Capture Blue Flag 2 (the flag on blue's left)
execute if predicate game:phase/match/play if score FB2: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{selector:"@s"}," lowered a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute if predicate game:phase/match/play if score FB2: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," lowered a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute if predicate game:phase/match/play if score FB2: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," lowered your flag!\n"]
execute if predicate game:phase/match/play if score FB2: FlagScore matches 30.. as @e[x=0,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run function rr_ctf:everytick/lowerflagtitle

execute if predicate game:phase/match/play if score FB2: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ if entity @e[type=player,predicate=custom:team/yellow,distance=..3] unless entity @a[limit=1,x=0,tag=CarryFB2] run tag @e[limit=1,sort=nearest,distance=..2,type=player,tag=!CarryFlag,predicate=custom:team/yellow] add CarryFB2
execute if predicate game:phase/match/play if score FB2: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:white_stained_glass if entity @e[distance=..12,type=player,scores={MineWhiteGlass=1..},predicate=custom:team/yellow] unless entity @a[limit=1,x=0,tag=CarryFB2] run tag @e[limit=1,sort=nearest,distance=..12,type=player,tag=!CarryFlag,scores={MineWhiteGlass=1..},predicate=custom:team/yellow] add CarryFB2
execute if predicate game:phase/match/play if entity @e[limit=1,x=0,type=player,tag=CarryFB2,predicate=custom:team/yellow] run scoreboard players set FB2: FlagScore -1

execute if predicate game:phase/match/play if score FB2: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass if entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run scoreboard players set FB2: FlagScore 29
execute if predicate game:phase/match/play if score FB2: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass unless entity @e[distance=..12,type=player,scores={MinePurpleGlass=1..},predicate=custom:team/yellow] run setblock ~ ~ ~ purple_stained_glass
execute unless predicate game:phase/match/play if score FB2: FlagScore matches 30.. positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ unless block ~ ~ ~ purple_stained_glass run setblock ~ ~ ~ purple_stained_glass
execute if score FB2: FlagScore matches ..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run setblock ~ ~1 ~ white_stained_glass

execute if score FB2: FlagScore matches 1..29 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] positioned ~ ~1 ~ run playsound entity.chicken.egg master @a[x=0] ~ ~1 ~ 1 0.8
execute if score FB2: FlagScore matches 1..29 run scoreboard players remove FB2: FlagScore 1

execute if score FB2: FlagScore matches 23..26 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run place template game:asset/flag/stage_1/blue ~-4 ~6 ~-1
execute if score FB2: FlagScore matches 19..22 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run place template game:asset/flag/stage_1/blue ~-4 ~5 ~-1
execute if score FB2: FlagScore matches 15..18 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run place template game:asset/flag/stage_1/blue ~-4 ~4 ~-1
execute if score FB2: FlagScore matches 11..14 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run place template game:asset/flag/stage_1/blue ~-4 ~3 ~-1
execute if score FB2: FlagScore matches 7..10 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run place template game:asset/flag/stage_1/blue ~-4 ~2 ~-1
execute if score FB2: FlagScore matches 1..6 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run place template game:asset/flag/stage_1/blue ~-4 ~1 ~-1
execute if score FB2: FlagScore matches 0 positioned as @e[limit=1,x=0,type=marker,tag=ctf_flag.blue,tag=ctf_flag.left] run place template game:asset/flag/stage_1/blue ~-4 ~1 ~-1

#Add tags for flag carriers
execute if predicate game:phase/match/play run tag @e[x=0,type=player,tag=CarryFY1,predicate=custom:team/blue] add CarryFlag
execute if predicate game:phase/match/play run tag @e[x=0,type=player,tag=CarryFY2,predicate=custom:team/blue] add CarryFlag
execute if predicate game:phase/match/play run tag @e[x=0,type=player,tag=CarryFB1,predicate=custom:team/yellow] add CarryFlag
execute if predicate game:phase/match/play run tag @e[x=0,type=player,tag=CarryFB2,predicate=custom:team/yellow] add CarryFlag

# Show flag carriers in tablist
execute if predicate game:phase/match/play run scoreboard players reset @a[x=0,tag=!CarryFlag] flag_tablist_display
execute if predicate game:phase/match/play run scoreboard players display numberformat @a[x=0,tag=CarryFlag,tag=CarryFY1] flag_tablist_display fixed {score:{name:"#yellow",objective:"text.flag"}}
execute if predicate game:phase/match/play run scoreboard players display numberformat @a[x=0,tag=CarryFlag,tag=CarryFY2] flag_tablist_display fixed {score:{name:"#yellow",objective:"text.flag"}}
execute if predicate game:phase/match/play run scoreboard players display numberformat @a[x=0,tag=CarryFlag,tag=CarryFB1] flag_tablist_display fixed {score:{name:"#blue",objective:"text.flag"}}
execute if predicate game:phase/match/play run scoreboard players display numberformat @a[x=0,tag=CarryFlag,tag=CarryFB2] flag_tablist_display fixed {score:{name:"#blue",objective:"text.flag"}}

#Add scores for flag carriers
execute if predicate game:phase/match/play run scoreboard players add @a[x=0,predicate=custom:team/blue] FlagsCaptured 0
execute if predicate game:phase/match/play run scoreboard players add @a[x=0,predicate=custom:team/yellow] FlagsCaptured 0
execute if predicate game:phase/match/play run scoreboard players reset @a[x=0,predicate=!custom:team/any_playing_team] FlagsCaptured
execute if predicate game:phase/match/play run scoreboard players set @a[x=0,scores={FlagsCaptured=3..}] FlagsCaptured 2

#If flag carrier disconnects completely
execute if predicate game:phase/match/play if score FB1: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFB1] run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],"A player left the match while carrying a flag so the flag has been placed back at the base.\n"]
execute if predicate game:phase/match/play if score FB2: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFB2] run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],"A player left the match while carrying a flag so the flag has been placed back at the base.\n"]
execute if predicate game:phase/match/play if score FY1: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFY1] run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],"A player left the match while carrying a flag so the flag has been placed back at the base.\n"]
execute if predicate game:phase/match/play if score FY2: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFY2] run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],"A player left the match while carrying a flag so the flag has been placed back at the base.\n"]

execute if predicate game:phase/match/play if score FB1: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFB1] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play if score FB2: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFB2] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play if score FY1: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFY1] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play if score FY2: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFY2] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7

execute if predicate game:phase/match/play if score FB1: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFB1] run scoreboard players set FB1: FlagScore 0
execute if predicate game:phase/match/play if score FB2: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFB2] run scoreboard players set FB2: FlagScore 0
execute if predicate game:phase/match/play if score FY1: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFY1] run scoreboard players set FY1: FlagScore 0
execute if predicate game:phase/match/play if score FY2: FlagScore matches -1 unless entity @a[limit=1,x=0,tag=CarryFY2] run scoreboard players set FY2: FlagScore 0

#Handle non-players (leaving midgame)
#Does not apply if there's already another flag carrier (in case of relog)
execute if predicate game:phase/match/play if score FB1: FlagScore matches -1 as @a[x=0,tag=CarryFB1,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFB1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," left the match while carrying a flag so the flag has been placed back at the base.\n"]
execute if predicate game:phase/match/play if score FB2: FlagScore matches -1 as @a[x=0,tag=CarryFB2,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFB2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] run tellraw @a[x=0] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," left the match while carrying a flag so the flag has been placed back at the base.\n"]
execute if predicate game:phase/match/play if score FY1: FlagScore matches -1 as @a[x=0,tag=CarryFY1,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFY1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," left the match while carrying a flag so the flag has been placed back at the base.\n"]
execute if predicate game:phase/match/play if score FY2: FlagScore matches -1 as @a[x=0,tag=CarryFY2,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFY2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] run tellraw @a[x=0] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," left the match while carrying a flag so the flag has been placed back at the base.\n"]

execute if predicate game:phase/match/play if score FB1: FlagScore matches -1 as @a[x=0,tag=CarryFB1,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFB1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play if score FB2: FlagScore matches -1 as @a[x=0,tag=CarryFB2,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFB2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play if score FY1: FlagScore matches -1 as @a[x=0,tag=CarryFY1,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFY1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if predicate game:phase/match/play if score FY2: FlagScore matches -1 as @a[x=0,tag=CarryFY2,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFY2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7

execute if predicate game:phase/match/play if score FB1: FlagScore matches -1 as @a[x=0,tag=CarryFB1,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFB1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] run scoreboard players set FB1: FlagScore 0
execute if predicate game:phase/match/play if score FB2: FlagScore matches -1 as @a[x=0,tag=CarryFB2,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFB2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] run scoreboard players set FB2: FlagScore 0
execute if predicate game:phase/match/play if score FY1: FlagScore matches -1 as @a[x=0,tag=CarryFY1,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFY1,predicate=!custom:team/lobby,predicate=!custom:team/spectator] run scoreboard players set FY1: FlagScore 0
execute if predicate game:phase/match/play if score FY2: FlagScore matches -1 as @a[x=0,tag=CarryFY2,predicate=!custom:team/any_playing_team] unless entity @a[limit=1,x=0,tag=CarryFY2,predicate=!custom:team/lobby,predicate=!custom:team/spectator] run scoreboard players set FY2: FlagScore 0

execute if predicate game:phase/match/play run function rr_ctf:everytick/clearflagtags

execute if predicate game:phase/match/play run scoreboard players reset @a[x=0] MinePurpleGlass
execute if predicate game:phase/match/play run scoreboard players reset @a[x=0] MineWhiteGlass

#Carry flag
execute if predicate game:phase/match/play if entity @a[limit=1,x=0,tag=CarryFlag] run function rr_ctf:everytick/carryflag
execute if predicate game:phase/match/play run tag @a[x=0,tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] remove CarryFlag
execute if predicate game:phase/match/play run scoreboard players reset @a[x=0,tag=!CarryFlag] FlagScore
execute if predicate game:phase/match/play run effect clear @a[x=0,tag=!CarryFlag,predicate=custom:team/any_playing_team] resistance
execute if predicate game:phase/match/play run effect clear @a[x=0,tag=!CarryFlag,predicate=custom:team/any_playing_team] strength
execute if predicate game:phase/match/play run effect clear @a[x=0,tag=!CarryFlag,predicate=custom:team/any_playing_team] absorption
execute if predicate game:phase/match/play unless entity @e[limit=1,x=0,type=player,tag=CarryFY1,predicate=custom:team/blue] run bossbar set rr_ctf:fy1 value 0
execute if predicate game:phase/match/play unless entity @e[limit=1,x=0,type=player,tag=CarryFY1,predicate=custom:team/blue] run bossbar set rr_ctf:fy1 players
execute if predicate game:phase/match/play unless entity @e[limit=1,x=0,type=player,tag=CarryFY2,predicate=custom:team/blue] run bossbar set rr_ctf:fy2 value 0
execute if predicate game:phase/match/play unless entity @e[limit=1,x=0,type=player,tag=CarryFY2,predicate=custom:team/blue] run bossbar set rr_ctf:fy2 players
execute if predicate game:phase/match/play unless entity @e[limit=1,x=0,type=player,tag=CarryFB1,predicate=custom:team/yellow] run bossbar set rr_ctf:fb1 value 0
execute if predicate game:phase/match/play unless entity @e[limit=1,x=0,type=player,tag=CarryFB1,predicate=custom:team/yellow] run bossbar set rr_ctf:fb1 players
execute if predicate game:phase/match/play unless entity @e[limit=1,x=0,type=player,tag=CarryFB2,predicate=custom:team/yellow] run bossbar set rr_ctf:fb2 value 0
execute if predicate game:phase/match/play unless entity @e[limit=1,x=0,type=player,tag=CarryFB2,predicate=custom:team/yellow] run bossbar set rr_ctf:fb2 players

#Glowing for flag carriers (blink if Sonar is enabled)
execute if predicate game:phase/match/play unless predicate game:modifiers/sonar/on run effect clear @a[x=0,tag=!CarryFlag] glowing
execute if predicate game:phase/match/play unless predicate game:modifiers/sonar/on run effect give @a[limit=1,x=0,tag=CarryFlag] glowing infinite 0 true
execute if predicate game:phase/match/play if predicate game:modifiers/sonar/on run scoreboard players operation $glowing_period var = $match_time global
execute if predicate game:phase/match/play if predicate game:modifiers/sonar/on run scoreboard players operation $glowing_period var %= $20 constant
execute if predicate game:phase/match/play if predicate game:modifiers/sonar/on if score $glowing_period var matches 0..9 run effect clear @a[limit=1,x=0,tag=CarryFlag] glowing

#Flip missile tags
execute if predicate game:phase/match/play run tag @a[x=0,tag=CarryFlag,tag=!FlipMissile] add FlipMissile
execute if predicate game:phase/match/play run tag @a[x=0,tag=!CarryFlag] remove FlipMissile

#Bossbars
function rr_ctf:everytick/bossbars

#Deliver Yellow flag at Blue base
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive] run scoreboard players add @s FlagDeliver 1
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add $flags_captured_by_blue global 1
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players display name Blue: FlagDisp ["",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," has captured ",{score:{name:"$flags_captured_by_blue",objective:"global"}}]
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," successfully captured a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," successfully captured your flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=!custom:team/any_playing_team,predicate=!custom:team/lobby] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{selector:"@s"}," successfully captured a",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players set FY1: FlagScore -2
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s flag_tablist_display
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tag @s remove CarryFY1
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive] run scoreboard players add @s FlagDeliver 1
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add $flags_captured_by_blue global 1
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players display name Blue: FlagDisp ["",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," has captured ",{score:{name:"$flags_captured_by_blue",objective:"global"}}]
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," successfully captured a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," successfully captured your flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=!custom:team/any_playing_team,predicate=!custom:team/lobby] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{selector:"@s"}," successfully captured a",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players set FY2: FlagScore -2
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s flag_tablist_display
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run tag @s remove CarryFY2
execute as @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2,tag=onBlue,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

#Deliver Blue flag at Yellow base
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive] run scoreboard players add @s FlagDeliver 1
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add $flags_captured_by_yellow global 1
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players display name Yellow: FlagDisp ["",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," has captured ",{score:{name:"$flags_captured_by_yellow",objective:"global"}}]
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," successfully captured a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," successfully captured your flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=!custom:team/any_playing_team,predicate=!custom:team/lobby] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{selector:"@s"}," successfully captured a",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players set FB1: FlagScore -2
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s flag_tablist_display
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tag @s remove CarryFB1
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive] run scoreboard players add @s FlagDeliver 1
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add $flags_captured_by_yellow global 1
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players display name Yellow: FlagDisp ["",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," has captured ",{score:{name:"$flags_captured_by_yellow",objective:"global"}}]
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.2
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/yellow] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.75
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] as @a[x=0,predicate=custom:team/blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," successfully captured a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," successfully captured your flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tellraw @a[x=0,predicate=!custom:team/any_playing_team,predicate=!custom:team/lobby] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{selector:"@s"}," successfully captured a",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players set FB2: FlagScore -2
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players add @s[scores={FlagsCaptured=..1}] FlagsCaptured 1
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s flag_tablist_display
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run tag @s remove CarryFB2
execute as @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2,tag=onYellow,predicate=custom:alive,scores={FlagDeliver=3..}] run scoreboard players reset @s FlagDeliver

item replace entity @a[x=0,tag=CarryFlag,tag=!CarryFY1,tag=!CarryFY2,tag=!CarryFB1,tag=!CarryFB2] armor.head with air

execute as @a[x=0,tag=CarryFlag] unless entity @s[scores={FlagScore=110..}] run scoreboard players add @s FlagScore 1

execute as @a[x=0,tag=CarryFlag,scores={FlagScore=1}] run function custom:update_armor
execute if entity @a[limit=1,x=0,tag=CarryFY1,scores={FlagScore=1}] run fill 34 65 63 30 72 64 air replace yellow_wool
execute if entity @a[limit=1,x=0,tag=CarryFY2,scores={FlagScore=1}] run fill -10 66 64 -14 65 63 air replace yellow_wool
execute if entity @a[limit=1,x=0,tag=CarryFB1,scores={FlagScore=1}] run fill -14 65 -64 -10 66 -65 air replace #custom:wool
execute if entity @a[limit=1,x=0,tag=CarryFB2,scores={FlagScore=1}] run fill 30 65 -64 34 66 -65 air replace #custom:wool
execute if entity @a[limit=1,x=0,tag=CarryFlag,scores={FlagScore=1}] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound entity.ender_dragon.flap master @s ~ ~ ~ 1 2


execute as @a[x=0,tag=CarryFlag,predicate=custom:team/blue,scores={FlagScore=1}] at @s run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{selector:"@s"}," stole a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute as @a[x=0,tag=CarryFlag,predicate=custom:team/blue,scores={FlagScore=1}] at @s run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," stole a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!\n"]
execute as @a[x=0,tag=CarryFlag,predicate=custom:team/blue,scores={FlagScore=1}] at @s run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," stole your flag!\n"]


execute as @a[x=0,tag=CarryFlag,predicate=custom:team/yellow,scores={FlagScore=1}] at @s run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{selector:"@s"}," stole a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute as @a[x=0,tag=CarryFlag,predicate=custom:team/yellow,scores={FlagScore=1}] at @s run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"green",text:"✔ "},{selector:"@s"}," stole a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!\n"]
execute as @a[x=0,tag=CarryFlag,predicate=custom:team/yellow,scores={FlagScore=1}] at @s run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{color:"red",text:"⚠ "},{selector:"@s"}," stole your flag!\n"]
effect give @a[x=0,tag=CarryFlag,scores={FlagScore=1}] glowing infinite 0 true
effect give @a[x=0,tag=CarryFlag,scores={FlagScore=1}] resistance 20 0 false
effect give @a[x=0,tag=CarryFlag,scores={FlagScore=1}] strength 20 0 false
effect give @a[x=0,tag=CarryFlag,scores={FlagScore=1}] absorption infinite 0 true

function rr_ctf:everytick/particlebeams
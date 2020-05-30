#Prevent remnants of ranked mode
tag @s[tag=!GameStarted] remove CriteriaTrue

#Joinpad Blue
execute as @e[tag=bluejoinpad,tag=!CancelJoin] at @s run particle falling_dust minecraft:blue_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a
execute as @e[tag=bluejoinpad,tag=CancelJoin] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a
execute as @s[scores={largerTeam=-1..0}] as @e[tag=bluejoinpad] at @s run tag @p[distance=..1,team=Lobby] add JoinBlue
execute as @e[tag=bluejoinpad,tag=CancelJoin] at @a run tag @a remove JoinBlue
team join Blue @a[tag=JoinBlue]
clear @a[tag=JoinBlue]
execute as @s[tag=!GameStarted] run tp @a[tag=JoinBlue] -95 202 60 0 0
execute as @s[tag=!GameStarted] as @a[tag=JoinBlue] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the blue team!","color":"aqua"}]
execute as @s[tag=!GameStarted] run tellraw @a[tag=JoinBlue] {"text":"Fall off the base to return to the lobby.","color":"blue","italic":"true"}
execute as @s[tag=!GameStarted] run effect give @a[tag=JoinBlue] resistance 1000000 255 true
execute as @s[tag=GameStarted] run tp @a[tag=JoinBlue] 12 64 -66 0 0
execute as @s[tag=GameStarted] as @a[tag=JoinBlue] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the blue team! A late arrival, unfortunately.","color":"aqua"}]
execute as @s[tag=GameStarted] run tellraw @a[tag=JoinBlue] [{"text":"Drop your ","color":"aqua","italic":"true"},{"text":"Shooting Saber ","color":"blue","bold":"true","italic":"false"},{"text":"to leave the match.","color":"aqua","italic":"true"}]
execute as @s[tag=GameStarted] run gamemode survival @a[tag=JoinBlue]
execute as @s[tag=GameStarted] run effect clear @a[tag=JoinBlue] resistance
execute as @a[tag=JoinBlue] at @s run playsound entity.enderman.teleport player @s ~ ~ ~
#achievement keybind tutorial
execute as @a[tag=JoinBlue] run tellraw @s ["",{"text":"Press ","italic":"true","color":"blue"},{"keybind":"key.advancements","italic":"true","color":"light_purple"},{"text":" to open the advancements menu and check out fun challenges!","italic":"true","color":"blue"}]
#tag @a remove JoinBlue

execute as @s[scores={largerTeam=1}] as @e[tag=bluejoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute as @s[scores={largerTeam=1}] as @e[tag=bluejoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] subtitle ["",{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":"true"},{"text":" instead.","color":"yellow","bold":false}]
execute as @s[scores={largerTeam=1}] as @e[tag=bluejoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] times 5 30 5
execute as @s[scores={largerTeam=1}] as @e[tag=bluejoinpad] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinBlue] add tryJoinBlue
execute as @e[tag=bluejoinpad] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinBlue

#Joinpad Yellow
execute as @e[tag=yellowjoinpad,tag=!CancelJoin] at @s run particle falling_dust minecraft:yellow_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a
execute as @e[tag=yellowjoinpad,tag=CancelJoin] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a
execute as @s[scores={largerTeam=0..1}] as @e[tag=yellowjoinpad] at @s run tag @p[distance=..1,team=Lobby] add JoinYellow
execute as @e[tag=yellowjoinpad,tag=CancelJoin] run tag @a remove JoinYellow
team join Yellow @a[tag=JoinYellow]
clear @a[tag=JoinYellow]
execute as @s[tag=!GameStarted] run tp @a[tag=JoinYellow] -95 202 96 180 0
execute as @s[tag=!GameStarted] as @a[tag=JoinYellow] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" joined the yellow team!","color":"yellow"}]
execute as @s[tag=!GameStarted] run tellraw @a[tag=JoinYellow] {"text":"Fall off the base to return to the lobby.","color":"gold","italic":"true"}
execute as @s[tag=!GameStarted] run effect give @a[tag=JoinYellow] resistance 1000000 255 true
execute as @s[tag=GameStarted] run tp @a[tag=JoinYellow] 12 64 66 180 0
execute as @s[tag=GameStarted] as @a[tag=JoinYellow] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" joined the yellow team! A late arrival, unfortunately.","color":"yellow"}]
execute as @s[tag=GameStarted] run tellraw @a[tag=JoinYellow] [{"text":"Drop your ","color":"gold","italic":"true"},{"text":"Shooting Saber ","color":"yellow","bold":"true","italic":"false"},{"text":"to leave the match.","color":"gold","italic":"true"}]
execute as @s[tag=GameStarted] run gamemode survival @a[tag=JoinYellow]
execute as @s[tag=GameStarted] run effect clear @a[tag=JoinYellow] resistance
execute as @a[tag=JoinYellow] at @s run playsound entity.enderman.teleport player @s ~ ~ ~
#achievement keybind tutorial
execute as @a[tag=JoinYellow] run tellraw @s ["",{"text":"Press ","italic":"true","color":"gold"},{"keybind":"key.advancements","italic":"true","color":"light_purple"},{"text":" to open the advancements menu and check out fun challenges!","italic":"true","color":"gold"}]
#tag @a remove JoinYellow

execute as @s[scores={largerTeam=-1}] as @e[tag=yellowjoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute as @s[scores={largerTeam=-1}] as @e[tag=yellowjoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] subtitle ["",{"text":"Join ","color":"aqua","bold":false},{"text":"Blue","color":"blue","bold":"true"},{"text":" instead.","color":"aqua","bold":false}]
execute as @s[scores={largerTeam=-1}] as @e[tag=yellowjoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] times 5 30 5
execute as @s[scores={largerTeam=-1}] as @e[tag=yellowjoinpad] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinYellow] add tryJoinYellow
execute as @e[tag=yellowjoinpad] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinYellow

#Leave Pad
execute as @a[gamemode=!spectator] at @s if entity @s[x=-84,y=185,z=45,dx=-111,dy=0,dz=110] unless entity @s[team=!Yellow,team=!Blue] in overworld run tag @s add LeaveTeams
execute as @a[tag=LeaveTeams,team=Yellow] run tellraw @a ["",{"selector":"@s"},{"text":" left the yellow team!","color":"yellow"}]
execute as @a[tag=LeaveTeams,team=Blue] run tellraw @a ["",{"selector":"@s"},{"text":" left the blue team!","color":"aqua"}]
team join Lobby @a[tag=LeaveTeams]
clear @a[tag=LeaveTeams]
tp @a[tag=LeaveTeams] -43 211 78 0 90
execute as @a[tag=LeaveTeams] at @s run playsound entity.enderman.teleport player @s ~ ~ ~
tag @a remove LeaveTeams

#Joinpad + Leavepad Spectator
execute as @e[tag=specjoinpad,tag=!CancelJoin] at @s run particle falling_dust minecraft:gray_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a
execute as @e[tag=specjoinpad,tag=CancelJoin] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a
execute as @e[tag=specjoinpad,tag=!CancelJoin] at @s run tag @p[team=!Spectator,distance=..1] add JoinSpec
execute as @e[tag=specjoinpad,tag=CancelJoin] run tag @a remove JoinSpec
execute as @e[tag=specjoinpad] at @s run tag @a[team=Spectator,distance=..1] add AlreadySpec
execute as @e[tag=specjoinpad,tag=CancelJoin] run tag @a remove AlreadySpec
team join Spectator @a[tag=JoinSpec]
clear @a[tag=JoinSpec]
tellraw @a[tag=JoinSpec] ["",{"text":"If you want to leave spectator mode, fly into the green particle cluster in the center of the arena.","color":"green","bold":"true"}]
tp @a[tag=JoinSpec] 12 100 0.5 90 90
execute as @a[tag=JoinSpec] at @s run playsound entity.enderman.teleport player @s ~ ~ ~
execute as @a[tag=JoinSpec] run tellraw @a ["",{"selector":"@s"},{"text":" is now spectating the game!","color":"gray"}]
gamemode spectator @a[tag=JoinSpec]
tag @a remove JoinSpec
tp @a[tag=AlreadySpec] 12 100 0.5 90 90
execute as @a[tag=AlreadySpec] at @s run playsound entity.enderman.teleport player @s ~ ~ ~
tag @a remove AlreadySpec
execute as @e[tag=LeaveSpec] at @s run particle dust 2 1 0 1 ~ ~ ~ 0.4 0.4 0.4 0.3 10 force @a[team=Spectator]
execute as @e[tag=LeaveSpec] at @s run tag @a[team=Spectator,distance=..2] add LeaveSpectator
tp @a[tag=LeaveSpectator] -43 211 78 90 0
execute as @a[tag=LeaveSpectator] at @s run playsound entity.enderman.teleport player @s ~ ~ ~
gamemode adventure @a[tag=LeaveSpectator]
execute as @a[tag=LeaveSpectator] run tellraw @a ["",{"selector":"@s"},{"text":" is no longer spectating the game!","color":"gray"}]
team join Lobby @a[tag=LeaveSpectator]
tag @a remove LeaveSpectator

#Start Game
execute unless entity @s[tag=GameEnd] if entity @a[team=Blue] if entity @a[team=Yellow] run tag @s[tag=!GameStarted] add Countdown
execute as @s[tag=Countdown] run function game:countdown
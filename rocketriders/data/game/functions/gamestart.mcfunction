###################################################
## GAMESTART: Commands that allow games to start ##
## and make the Lobby Join/Leave Pads functional ##
###################################################

##Game Bossbar
execute as @s[tag=GameStarted] run bossbar set rr:startgame players @a[team=Lobby]
execute as @s[scores={endtimer=1..}] run bossbar set rr:startgame players @a[team=Lobby]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"players.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame color blue
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] if entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame value 15
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] if entity @a[team=Yellow] unless entity @a[team=Blue] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] if entity @a[team=Yellow] unless entity @a[team=Blue] run bossbar set rr:startgame color yellow
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] if entity @a[team=Yellow] unless entity @a[team=Blue] run bossbar set rr:startgame value 15
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] unless entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"and ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players.","color":"white"}]
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] unless entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame value 0
execute as @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] unless entity @a[team=Blue] unless entity @a[team=Yellow] run bossbar set rr:startgame color white
execute as @s[tag=!EditedSettings,scores={endtimer=..0}] run bossbar set rr:startgame color purple
execute as @s[tag=!EditedSettings,scores={endtimer=..0,servermode=0}] run bossbar set rr:startgame name ["",{"text":"Please confirm game settings in the Modification Room!","color":"dark_purple"}]
execute as @s[tag=!EditedSettings,scores={endtimer=..0,servermode=2}] run bossbar set rr:startgame name ["",{"text":"Server is set to 1v1 Duels only!","color":"dark_purple"}]
execute as @s[scores={endtimer=1..}] run bossbar set rr:startgame color red
execute as @s[scores={endtimer=1..}] run bossbar set rr:startgame name ["",{"text":"A game is currently ending.","color":"red"}]
execute as @s[tag=!EditedSettings,scores={servermode=0}] run bossbar set rr:startgame value 30
execute as @s[tag=!EditedSettings] run bossbar set rr:startgame max 30
execute as @s[tag=!GameStarted] unless entity @s[scores={endtimer=1..}] run bossbar set rr:startgame players @a

##Blue Join Pad
execute as @s[tag=!EditedSettings] run tag @a remove JoinBlue
execute as @s[tag=GameEnd] run tag @a remove JoinBlue
execute as @s[tag=BlueFull] run tag @a remove JoinBlue
execute as @s[tag=!noTeamBalance,tag=EditedSettings,scores={largerTeam=-1..0},tag=!BlueFull] as @e[tag=bluejoinpad,tag=!CancelJoin,type=marker] at @s run particle falling_dust minecraft:blue_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a
execute as @s[tag=!noTeamBalance] unless entity @s[scores={largerTeam=-1..0},tag=!BlueFull,tag=EditedSettings] as @e[tag=bluejoinpad,tag=!CancelJoin,type=marker] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a
execute as @s[tag=!noTeamBalance] run function everytick:team_balance
execute as @s[scores={largerTeam=-1..0},tag=!BlueFull,tag=EditedSettings] as @e[tag=bluejoinpad,tag=!CancelJoin,type=marker] at @s run tag @a[distance=..1,team=Lobby,limit=1,sort=random] add JoinBlue
team join Blue @a[tag=JoinBlue]
execute as @s[tag=!noTeamBalance] run function everytick:team_balance
clear @a[tag=JoinBlue]
execute as @s[tag=!GameStarted,tag=!customSpawns] run tp @a[tag=JoinBlue] -95 202 60 0 0
execute as @s[tag=!GameStarted] as @a[tag=JoinBlue] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the blue team!","color":"aqua"}]
execute as @s[tag=!GameStarted] run tellraw @a[tag=JoinBlue] {"text":"Fall off the base to return to the Lobby.","color":"blue","italic":true}
execute as @s[tag=!GameStarted] run effect give @a[tag=JoinBlue] resistance 1000000 255 true
execute as @s[tag=GameStarted,tag=!customSpawns] run tp @a[tag=JoinBlue] 12 64 -66 0 0
execute as @s[tag=GameStarted] as @a[tag=JoinBlue] run tellraw @a ["",{"selector":"@s","color":"blue"},{"text":" joined the blue team! A late arrival, unfortunately.","color":"aqua"}]
execute as @s[tag=GameStarted,tag=!customSaberMsg,tag=!SMActive] run tellraw @a[tag=JoinBlue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute as @s[tag=GameStarted,tag=!customSaberMsg,tag=SMActive] run tellraw @a[tag=JoinBlue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute as @s[tag=GameStarted] run gamemode survival @a[team=Blue,gamemode=adventure]
execute as @s[tag=GameStarted] run effect clear @a[tag=JoinBlue] resistance
#Hardcore compatibility
execute as @s[tag=GameStarted,tag=Hardcore] run gamerule showDeathMessages false
execute as @s[tag=GameStarted,tag=Hardcore] as @a[tag=JoinBlue] run kill @s
execute as @s[tag=GameStarted,tag=Hardcore] as @a[tag=JoinBlue] run scoreboard players remove @s deaths 1
execute as @s[tag=GameStarted,tag=Hardcore] run tag @a[tag=JoinBlue] add hardcoreKilled
execute as @s[tag=GameStarted,tag=Hardcore] run gamerule showDeathMessages true
execute as @s[tag=!customSpawns] as @a[tag=JoinBlue] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
#Achievement keybind tutorial
execute as @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a[tag=JoinBlue] run tellraw @s ["",{"text":"Press ","italic":true,"color":"blue"},{"keybind":"key.advancements","italic":true,"color":"light_purple"},{"text":" to open the advancements menu and check out fun challenges!","italic":true,"color":"blue"}]

#Imbalanced/full team control
execute as @s[scores={largerTeam=1}] as @e[tag=bluejoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute as @s[scores={largerTeam=1}] as @e[tag=bluejoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] subtitle ["",{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute as @s[scores={largerTeam=1}] as @e[tag=bluejoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] times 5 30 5
execute as @s[scores={largerTeam=1}] as @e[tag=bluejoinpad,type=marker] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinBlue] add tryJoinBlue
execute as @s[tag=BlueFull] as @e[tag=bluejoinpad,tag=!CancelJoin,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] title ["",{"text":"Team Full!","color":"red","bold":true}]
execute as @s[tag=BlueFull,tag=EditedSettings] as @e[tag=bluejoinpad,tag=CancelJoin,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] title ["",{"text":"Cannot Join Team!","color":"red","bold":true}]
execute as @s[tag=BlueFull,tag=!YellowFull,tag=EditedSettings] as @e[tag=bluejoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] subtitle ["",{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute as @s[tag=BlueFull,tag=YellowFull,tag=EditedSettings] as @e[tag=bluejoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute as @s[tag=BlueFull] as @e[tag=bluejoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] times 5 30 5
execute as @s[tag=BlueFull] as @e[tag=bluejoinpad,type=marker] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinBlue] add tryJoinBlue
execute as @e[tag=bluejoinpad,type=marker] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinBlue

##Yellow Join Pad
execute as @s[tag=!EditedSettings] run tag @a remove JoinYellow
execute as @s[tag=GameEnd] run tag @a remove JoinYellow
execute as @s[tag=YellowFull] run tag @a remove JoinYellow
execute as @s[tag=!noTeamBalance,tag=EditedSettings,scores={largerTeam=0..1},tag=!YellowFull] as @e[tag=yellowjoinpad,tag=!CancelJoin,type=marker] at @s run particle falling_dust minecraft:yellow_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a
execute as @s[tag=!noTeamBalance] unless entity @s[scores={largerTeam=0..1},tag=!YellowFull,tag=EditedSettings] as @e[tag=yellowjoinpad,tag=!CancelJoin,type=marker] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a
execute as @s[tag=!noTeamBalance] run function everytick:team_balance
execute as @s[scores={largerTeam=0..1},tag=!YellowFull,tag=EditedSettings] as @e[tag=yellowjoinpad,tag=!CancelJoin,type=marker] at @s run tag @a[distance=..1,team=Lobby,limit=1,sort=random] add JoinYellow
team join Yellow @a[tag=JoinYellow]
execute as @s[tag=!noTeamBalance] run function everytick:team_balance
clear @a[tag=JoinYellow]
execute as @s[tag=!GameStarted,tag=!customSpawns] run tp @a[tag=JoinYellow] -95 202 96 180 0
execute as @s[tag=!GameStarted] as @a[tag=JoinYellow] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" joined the yellow team!","color":"yellow"}]
execute as @s[tag=!GameStarted] run tellraw @a[tag=JoinYellow] {"text":"Fall off the base to return to the Lobby.","color":"gold","italic":true}
execute as @s[tag=!GameStarted] run effect give @a[tag=JoinYellow] resistance 1000000 255 true
execute as @s[tag=GameStarted,tag=!customSpawns] run tp @a[tag=JoinYellow] 12 64 66 180 0
execute as @s[tag=GameStarted] as @a[tag=JoinYellow] run tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" joined the yellow team! A late arrival, unfortunately.","color":"yellow"}]
execute as @s[tag=GameStarted,tag=!customSaberMsg,tag=!SMActive] run tellraw @a[tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute as @s[tag=GameStarted,tag=!customSaberMsg,tag=SMActive] run tellraw @a[tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute as @s[tag=GameStarted] run gamemode survival @a[team=Yellow,gamemode=adventure]
execute as @s[tag=GameStarted] run effect clear @a[tag=JoinYellow] resistance
#Hardcore compatibility
execute as @s[tag=GameStarted,tag=Hardcore] run gamerule showDeathMessages false
execute as @s[tag=GameStarted,tag=Hardcore] as @a[tag=JoinYellow] run kill @s
execute as @s[tag=GameStarted,tag=Hardcore] as @a[tag=JoinYellow] run scoreboard players remove @s deaths 1
execute as @s[tag=GameStarted,tag=Hardcore] run tag @a[tag=JoinYellow] add hardcoreKilled
execute as @s[tag=GameStarted,tag=Hardcore] run gamerule showDeathMessages true
execute as @s[tag=!customSpawns] as @a[tag=JoinYellow] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
#Achievement keybind tutorial
execute as @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a[tag=JoinYellow] run tellraw @s ["",{"text":"Press ","italic":true,"color":"gold"},{"keybind":"key.advancements","italic":true,"color":"light_purple"},{"text":" to open the advancements menu and check out fun challenges!","italic":true,"color":"gold"}]

#Imbalanced/full team control
execute as @s[scores={largerTeam=-1}] as @e[tag=yellowjoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute as @s[scores={largerTeam=-1}] as @e[tag=yellowjoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] subtitle ["",{"text":"Join ","color":"aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"aqua","bold":false}]
execute as @s[scores={largerTeam=-1}] as @e[tag=yellowjoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] times 5 30 5
execute as @s[scores={largerTeam=-1}] as @e[tag=yellowjoinpad,type=marker] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinYellow] add tryJoinYellow
execute as @s[tag=YellowFull] as @e[tag=yellowjoinpad,tag=!CancelJoin,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] title ["",{"text":"Team Full!","color":"red","bold":true}]
execute as @s[tag=YellowFull,tag=EditedSettings] as @e[tag=yellowjoinpad,tag=CancelJoin,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] title ["",{"text":"Cannot Join Team!","color":"red","bold":true}]
execute as @s[tag=YellowFull,tag=!BlueFull,tag=EditedSettings] as @e[tag=yellowjoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] subtitle ["",{"text":"Join ","color":"aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"aqua","bold":false}]
execute as @s[tag=YellowFull,tag=BlueFull,tag=EditedSettings] as @e[tag=yellowjoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute as @s[tag=YellowFull] as @e[tag=yellowjoinpad,type=marker] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] times 5 30 5
execute as @s[tag=YellowFull] as @e[tag=yellowjoinpad,type=marker] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinYellow] add tryJoinYellow
execute as @e[tag=yellowjoinpad,type=marker] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinYellow

##Join pad + Leave pad Spectator
execute as @s[tag=!EditedSettings] run tag @a remove JoinSpec
execute as @s[tag=GameEnd] run tag @a remove JoinSpec
execute if entity @e[tag=Selection,tag=SMActive] if entity @e[tag=specjoinpad,tag=CancelJoin] run execute as @a[tag=JoinSpec] run tellraw @s ["",{"text":"You can not use /spectate when there is no game to play yet.","color":"red"},{"text":"\n"},{"text":"Please wait for the voting time to end.","italic":true,"color":"red"}]
tag @a[gamemode=spectator] remove JoinSpec
execute as @e[tag=specjoinpad,tag=!CancelJoin,type=marker] at @s run particle falling_dust minecraft:gray_concrete ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a
execute as @e[tag=specjoinpad,tag=!CancelJoin,type=marker] at @s run tag @a[team=!Spectator,distance=..1,limit=1,sort=random] add JoinSpec
execute as @e[tag=specjoinpad,tag=CancelJoin,type=marker] run tag @a remove JoinSpec
execute as @e[tag=specjoinpad,type=marker] at @s run tag @a[team=Spectator,distance=..1] add AlreadySpec
execute as @e[tag=specjoinpad,tag=CancelJoin,type=marker] run tag @a remove AlreadySpec
team join Spectator @a[tag=JoinSpec,gamemode=!spectator]
clear @a[tag=JoinSpec]
scoreboard players enable @a[team=Spectator] leaveSpec
tag @a[scores={leaveSpec=1..}] add LeaveTeams
scoreboard players reset @a[team=!Spectator] leaveSpec
execute unless entity @e[tag=Selection,tag=SMActive] run tellraw @a[tag=JoinSpec,gamemode=!spectator] ["",{"text":"If you want to leave Spectator mode, click ","color":"dark_green","italic":true},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger leaveSpec set 1"}},{"text":" or fly into the green particle cluster in the center of the arena.","color":"dark_green","italic":true}]
execute if entity @e[tag=Selection,tag=SMActive] run tellraw @a[tag=JoinSpec,gamemode=!spectator] ["",{"text":"If you want to leave Spectator mode, click ","color":"dark_green","italic":true},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger leaveSpec set 1"}},{"text":" or use ","color":"dark_green"},{"text":"/leave ","color":"green"},{"text":"to go back to the lobby.","color":"dark_green","italic":true}]
tp @a[tag=JoinSpec] 12 100 0.5 90 90
execute as @a[tag=JoinSpec] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
execute as @a[tag=JoinSpec] run tellraw @a ["",{"selector":"@s"},{"text":" is now spectating the game!","color":"gray"}]
gamemode spectator @a[tag=JoinSpec]
tag @a remove JoinSpec
tp @a[tag=AlreadySpec] 12 100 0.5 90 90
execute as @a[tag=AlreadySpec] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
tag @a remove AlreadySpec
execute unless entity @e[tag=Selection,tag=SMActive] as @e[tag=LeaveSpec,type=marker] at @s run particle dust 2 1 0 1 ~ ~ ~ 0.4 0.4 0.4 0.3 10 force @a[team=Spectator]
execute unless entity @e[tag=Selection,tag=SMActive] as @e[tag=LeaveSpec,type=marker] at @s run tag @a[team=Spectator,distance=..2] add LeaveTeams

##Leave Pad
execute as @a[gamemode=!spectator] at @s if entity @s[x=-84,y=186,z=45,dx=-111,dy=0,dz=110] unless entity @s[team=!Yellow,team=!Blue] in overworld run tag @s add LeaveTeams
execute as @s[tag=!customLeaveHandling] run function game:leaveteams

##Countdown
execute as @s[tag=Countdown] run function game:countdown

##Barrier particles on a timer
scoreboard players add $barriers CmdData 1
execute if score $barriers CmdData matches 81 run scoreboard players set $barriers CmdData 0
execute if score $barriers CmdData matches 1 as @e[tag=CancelJoin,type=marker] at @s run particle barrier ~ ~1 ~ 0 0 0 0 1 force @a[team=Lobby]
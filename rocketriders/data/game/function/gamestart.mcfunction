###################################################
## GAMESTART: Commands that allow games to start ##
## and make the Lobby Join/Leave Pads functional ##
###################################################

##Game Bossbar
execute if entity @s[tag=GameStarted] run bossbar set rr:startgame players @a[x=0,team=Lobby]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr:startgame players @a[x=0,team=Lobby]
execute if entity @s[tag=GameStarted,tag=!bossbarOverride] unless entity @s[tag=YellowFull,tag=BlueFull] unless score @s SDtime matches 1.. run bossbar set rr:startgame name ["",{"text":"A match is currently in progress. Feel free to join in!","color":"dark_green"}]
execute if entity @s[tag=GameStarted,tag=!bossbarOverride,tag=YellowFull,tag=BlueFull] unless score @s SDtime matches 1.. run bossbar set rr:startgame name ["",{"text":"The match is full, but feel free to spectate!","color":"dark_green"}]
execute if entity @s[tag=GameStarted,tag=!bossbarOverride] unless entity @s[tag=YellowFull,tag=BlueFull] if score @s SDtime matches 1.. run bossbar set rr:startgame name ["",{"text":"A match is currently in Sudden Death. Feel free to join in!","color":"dark_red"}]
execute if entity @s[tag=GameStarted,tag=!bossbarOverride,tag=YellowFull,tag=BlueFull] if score @s SDtime matches 1.. run bossbar set rr:startgame name ["",{"text":"The match is full, but feel free to spectate!","color":"dark_red"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] run bossbar set rr:startgame max 30
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar,tag=!SMCustom] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"players...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar,tag=!SMCustom] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame color blue
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar,tag=!SMCustom] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame value 15
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar,tag=!SMCustom] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Yellow] unless entity @a[x=0,team=Blue] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar,tag=!SMCustom] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Yellow] unless entity @a[x=0,team=Blue] run bossbar set rr:startgame color yellow
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar,tag=!SMCustom] unless entity @s[scores={endtimer=1..}] if entity @a[x=0,team=Yellow] unless entity @a[x=0,team=Blue] run bossbar set rr:startgame value 15
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar,tag=!SMCustom] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting ","color":"white"},{"text":"Yellow ","color":"gold"},{"text":"and ","color":"white"},{"text":"Blue ","color":"blue"},{"text":"players...","color":"white"}]
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame value 0
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame color white
execute if entity @s[tag=!GameStarted,tag=!Countdown,tag=EditedSettings,tag=!customBossbar,tag=SMCustom] unless entity @s[scores={endtimer=1..}] unless entity @a[x=0,team=Blue] unless entity @a[x=0,team=Yellow] run bossbar set rr:startgame name ["",{"text":"Awaiting players...","color":"white"}]
execute if entity @s[tag=!EditedSettings,scores={endtimer=..0,servermode=0..1}] run bossbar set rr:startgame color purple
execute if entity @s[tag=!EditedSettings,scores={endtimer=..0,servermode=0}] run bossbar set rr:startgame name ["",{"text":"Please confirm game settings in the Modification Room!","color":"dark_purple"}]
execute if entity @s[scores={endtimer=1..}] run bossbar set rr:startgame color red
execute if entity @s[scores={endtimer=1..}] run bossbar set rr:startgame name ["",{"text":"A game is currently ending.","color":"red"}]
execute if entity @s[tag=EditedSettings] run scoreboard players set $ClearTime CmdData 0
execute if entity @s[tag=!EditedSettings,scores={servermode=0}] run bossbar set rr:startgame value 30
execute if entity @s[tag=!GameStarted] unless entity @s[scores={endtimer=1..}] run bossbar set rr:startgame players @a[x=0]

##Blue Join Pad
execute unless entity @s[scores={largerTeam=-1..0},tag=!BlueFull,tag=EditedSettings] as @a[x=0,tag=JoinBlue] run function game:joinwarn
execute if entity @s[tag=JustCleared] run tag @a[x=0] remove JoinBlue
execute if entity @s[tag=!EditedSettings] run tag @a[x=0] remove JoinBlue
execute if entity @s[tag=GameEnd] run tag @a[x=0] remove JoinBlue
execute if entity @s[tag=BlueFull] run tag @a[x=0] remove JoinBlue
execute if score $dust CmdData matches 1 if entity @s[tag=EditedSettings,scores={largerTeam=-1..0},tag=!BlueFull] as @e[x=0,type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:blue_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if score $barriers CmdData matches 1 if entity @s[tag=!noTeamBalance] unless entity @s[scores={largerTeam=-1..0},tag=!BlueFull,tag=EditedSettings] as @e[x=0,type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run particle minecraft:block_marker{block_state:"minecraft:barrier"} ~ ~1 ~ 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if entity @s[tag=!noTeamBalance] run function everytick:team_balance
execute if entity @s[scores={largerTeam=-1..0},tag=!BlueFull,tag=EditedSettings,tag=!JustCleared] as @e[x=0,type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run tag @a[distance=..1,team=Lobby,limit=1,sort=random] add JoinBlue
team join Blue @a[x=0,tag=JoinBlue]
execute if entity @s[tag=!noTeamBalance] run function everytick:team_balance
clear @a[x=0,tag=JoinBlue]
execute if entity @s[tag=!noSabers] as @a[x=0,tag=JoinBlue] unless entity @e[x=0,type=armor_stand,tag=chaseEnabled] run function game:saberblue
execute if entity @s[tag=!GameStarted,tag=Hardcore] as @a[x=0,tag=JoinBlue] run function modifiers:hardcoreset
execute if entity @s[tag=!GameStarted,tag=!customSpawns] run tp @a[x=0,tag=JoinBlue] -95 202 60 0 0
execute if entity @s[tag=!GameStarted,tag=!chaseEnabled] as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"blue"},{"text":" joined the blue team!","color":"aqua"}]
execute if entity @s[tag=!GameStarted,tag=chaseEnabled] as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"dark_red"},{"text":" joined the game!","color":"red"}]
execute if entity @s[tag=!GameStarted,tag=!chaseEnabled] run tellraw @a[x=0,tag=JoinBlue] {"text":"Fall off the base to return to the Lobby.","color":"blue","italic":true}
execute if entity @s[tag=!GameStarted,tag=chaseEnabled] run tellraw @a[x=0,tag=JoinBlue] {"text":"Fall off the base to return to the Lobby.","color":"red","italic":true}
execute if entity @s[tag=!GameStarted] run effect give @a[x=0,tag=JoinBlue] resistance infinite 100 true
execute if entity @s[tag=GameStarted,tag=!customSpawns] run tp @a[x=0,tag=JoinBlue] 12 64 -66 0 0
execute if entity @s[tag=GameStarted,tag=!chaseEnabled] as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"blue"},{"text":" joined the blue team! A late arrival, unfortunately.","color":"aqua"}]
execute if entity @s[tag=GameStarted,tag=chaseEnabled] as @a[x=0,tag=JoinBlue] run tellraw @a[x=0] ["",{"selector":"@s","color":"dark_red"},{"text":" joined the game! A late arrival, unfortunately.","color":"red"}]
execute if entity @s[tag=GameStarted,tag=!customSaberMsg,tag=!SMActive] run tellraw @a[x=0,tag=JoinBlue] [{"text":"Drop your ","color":"aqua","italic":true},{"text":"Shooting Saber ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted,tag=!customSaberMsg,tag=SMActive] run tellraw @a[x=0,tag=JoinBlue] [{"text":"Use ","color":"aqua","italic":true},{"text":"/leave ","color":"blue","bold":true,"italic":false},{"text":"to leave the match.","color":"aqua","italic":true}]
execute if entity @s[tag=GameStarted] run gamemode survival @a[x=0,team=Blue,gamemode=adventure]
execute if entity @s[tag=GameStarted] run effect clear @a[x=0,tag=JoinBlue] resistance
execute if entity @s[tag=!customSpawns] as @a[x=0,tag=JoinBlue] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
#Achievement keybind tutorial
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom,tag=!chaseEnabled] as @a[x=0,tag=JoinBlue] run tellraw @s ["",{"text":"Press ","italic":true,"color":"blue"},{"keybind":"key.advancements","italic":true,"color":"light_purple"},{"text":" to open the advancements menu and check out fun challenges!","italic":true,"color":"blue"}]
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom,tag=chaseEnabled] as @a[x=0,tag=JoinBlue] run tellraw @s ["",{"text":"Press ","italic":true,"color":"red"},{"keybind":"key.advancements","italic":true,"color":"light_purple"},{"text":" to open the advancements menu and check out fun challenges!","italic":true,"color":"red"}]

#Imbalanced/full team control
execute if entity @s[scores={largerTeam=1}] as @e[x=0,type=marker,tag=bluejoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if entity @s[scores={largerTeam=1}] as @e[x=0,type=marker,tag=bluejoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] subtitle ["",{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if entity @s[scores={largerTeam=1}] as @e[x=0,type=marker,tag=bluejoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] times 5 30 5
execute if entity @s[scores={largerTeam=1}] as @e[x=0,type=marker,tag=bluejoinpad] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinBlue] add tryJoinBlue
execute if entity @s[tag=BlueFull] as @e[x=0,type=marker,tag=bluejoinpad,tag=!CancelJoin] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if entity @s[tag=BlueFull,tag=EditedSettings] as @e[x=0,type=marker,tag=bluejoinpad,tag=CancelJoin] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] title ["",{"text":"Cannot Join Team!","color":"red","bold":true}]
execute if entity @s[tag=BlueFull,tag=!YellowFull,tag=EditedSettings] as @e[x=0,type=marker,tag=bluejoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] subtitle ["",{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if entity @s[tag=BlueFull,tag=YellowFull,tag=EditedSettings] as @e[x=0,type=marker,tag=bluejoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute if entity @s[tag=BlueFull] as @e[x=0,type=marker,tag=bluejoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinBlue] times 5 30 5
execute if entity @s[tag=BlueFull] as @e[x=0,type=marker,tag=bluejoinpad] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinBlue] add tryJoinBlue
execute as @e[x=0,type=marker,tag=bluejoinpad] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinBlue

##Yellow Join Pad
execute unless entity @s[scores={largerTeam=0..1},tag=!YellowFull,tag=EditedSettings] as @a[x=0,tag=JoinYellow] run function game:joinwarn
execute if entity @s[tag=JustCleared] run tag @a[x=0] remove JoinYellow
execute if entity @s[tag=!EditedSettings] run tag @a[x=0] remove JoinYellow
execute if entity @s[tag=GameEnd] run tag @a[x=0] remove JoinYellow
execute if entity @s[tag=YellowFull] run tag @a[x=0] remove JoinYellow
execute if score $dust CmdData matches 1 if entity @s[tag=EditedSettings,scores={largerTeam=0..1},tag=!YellowFull] as @e[x=0,type=marker,tag=yellowjoinpad,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:yellow_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if score $barriers CmdData matches 1 if entity @s[tag=!noTeamBalance] unless entity @s[scores={largerTeam=0..1},tag=!YellowFull,tag=EditedSettings] as @e[x=0,type=marker,tag=yellowjoinpad,tag=!CancelJoin] at @s run particle minecraft:block_marker{block_state:"minecraft:barrier"} ~ ~1 ~ 0 0 0 0 1 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute if entity @s[tag=!noTeamBalance] run function everytick:team_balance
execute if entity @s[scores={largerTeam=0..1},tag=!YellowFull,tag=EditedSettings,tag=!JustCleared] as @e[x=0,type=marker,tag=yellowjoinpad,tag=!CancelJoin] at @s run tag @a[distance=..1,team=Lobby,limit=1,sort=random] add JoinYellow
team join Yellow @a[x=0,tag=JoinYellow]
execute if entity @s[tag=!noTeamBalance] run function everytick:team_balance
clear @a[x=0,tag=JoinYellow]
execute if entity @s[tag=!noSabers] as @a[x=0,tag=JoinYellow] run function game:saberyellow
execute if entity @s[tag=!GameStarted,tag=Hardcore] as @a[x=0,tag=JoinYellow] run function modifiers:hardcoreset
execute if entity @s[tag=!GameStarted,tag=!customSpawns] run tp @a[x=0,tag=JoinYellow] -95 202 96 180 0
execute if entity @s[tag=!GameStarted] as @a[x=0,tag=JoinYellow] run tellraw @a[x=0] ["",{"selector":"@s","color":"gold"},{"text":" joined the yellow team!","color":"yellow"}]
execute if entity @s[tag=!GameStarted] run tellraw @a[x=0,tag=JoinYellow] {"text":"Fall off the base to return to the Lobby.","color":"gold","italic":true}
execute if entity @s[tag=!GameStarted] run effect give @a[x=0,tag=JoinYellow] resistance infinite 100 true
execute if entity @s[tag=GameStarted,tag=!customSpawns] run tp @a[x=0,tag=JoinYellow] 12 64 66 180 0
execute if entity @s[tag=GameStarted] as @a[x=0,tag=JoinYellow] run tellraw @a[x=0] ["",{"selector":"@s","color":"gold"},{"text":" joined the yellow team! A late arrival, unfortunately.","color":"yellow"}]
execute if entity @s[tag=GameStarted,tag=!customSaberMsg,tag=!SMActive] run tellraw @a[x=0,tag=JoinYellow] [{"text":"Drop your ","color":"yellow","italic":true},{"text":"Shooting Saber ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[tag=GameStarted,tag=!customSaberMsg,tag=SMActive] run tellraw @a[x=0,tag=JoinYellow] [{"text":"Use ","color":"yellow","italic":true},{"text":"/leave ","color":"gold","bold":true,"italic":false},{"text":"to leave the match.","color":"yellow","italic":true}]
execute if entity @s[tag=GameStarted] run gamemode survival @a[x=0,team=Yellow,gamemode=adventure]
execute if entity @s[tag=GameStarted] run effect clear @a[x=0,tag=JoinYellow] resistance
execute if entity @s[tag=!customSpawns] as @a[x=0,tag=JoinYellow] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
#Achievement keybind tutorial
execute if entity @s[scores={servermode=0},tag=!realms,tag=!SMCustom] as @a[x=0,tag=JoinYellow] run tellraw @s ["",{"text":"Press ","italic":true,"color":"gold"},{"keybind":"key.advancements","italic":true,"color":"light_purple"},{"text":" to open the advancements menu and check out fun challenges!","italic":true,"color":"gold"}]

#Imbalanced/full team control
execute if entity @s[scores={largerTeam=-1}] as @e[x=0,type=marker,tag=yellowjoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if entity @s[scores={largerTeam=-1}] as @e[x=0,type=marker,tag=yellowjoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] subtitle ["",{"text":"Join ","color":"aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"aqua","bold":false}]
execute if entity @s[scores={largerTeam=-1}] as @e[x=0,type=marker,tag=yellowjoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] times 5 30 5
execute if entity @s[scores={largerTeam=-1}] as @e[x=0,type=marker,tag=yellowjoinpad] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinYellow] add tryJoinYellow
execute if entity @s[tag=YellowFull] as @e[x=0,type=marker,tag=yellowjoinpad,tag=!CancelJoin] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if entity @s[tag=YellowFull,tag=EditedSettings] as @e[x=0,type=marker,tag=yellowjoinpad,tag=CancelJoin] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] title ["",{"text":"Cannot Join Team!","color":"red","bold":true}]
execute if entity @s[tag=YellowFull,tag=!BlueFull,tag=EditedSettings] as @e[x=0,type=marker,tag=yellowjoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] subtitle ["",{"text":"Join ","color":"aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"aqua","bold":false}]
execute if entity @s[tag=YellowFull,tag=BlueFull,tag=EditedSettings] as @e[x=0,type=marker,tag=yellowjoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute if entity @s[tag=YellowFull] as @e[x=0,type=marker,tag=yellowjoinpad] at @s run title @a[distance=..1,team=Lobby,tag=!tryJoinYellow] times 5 30 5
execute if entity @s[tag=YellowFull] as @e[x=0,type=marker,tag=yellowjoinpad] at @s run tag @a[distance=..1,team=Lobby,tag=!tryJoinYellow] add tryJoinYellow
execute as @e[x=0,type=marker,tag=yellowjoinpad] at @s run tag @a[distance=2..,team=Lobby] remove tryJoinYellow

##Join pad + Leave pad Spectator
execute if entity @s[tag=JustCleared] run tag @a[x=0] remove JoinSpec
execute if entity @s[tag=!EditedSettings] run tag @a[x=0] remove JoinSpec
execute if entity @s[tag=GameEnd] run tag @a[x=0] remove JoinSpec
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] if entity @e[x=0,type=marker,tag=specjoinpad,tag=CancelJoin] as @a[x=0,tag=JoinSpec] run tellraw @s ["",{"text":"You cannot use /spectate when there is no game to play yet.","color":"red"},{"text":"\n"},{"text":"Please wait for the voting time to end.","italic":true,"color":"red"}]
tag @a[x=0,gamemode=spectator] remove JoinSpec
execute if score $dust CmdData matches 1 as @e[x=0,type=marker,tag=specjoinpad,tag=!CancelJoin] at @s run particle minecraft:falling_dust{block_state:"minecraft:gray_concrete"} ~ ~1 ~ 0.5 1 0.5 0.1 5 force @a[x=0,tag=!hideParticles,predicate=!custom:belowroof]
execute as @e[x=0,type=marker,tag=specjoinpad,tag=!CancelJoin,tag=!JustCleared] at @s run tag @a[team=!Spectator,distance=..1,limit=1,sort=random] add JoinSpec
execute as @e[x=0,type=marker,tag=specjoinpad,tag=CancelJoin] run tag @a[x=0] remove JoinSpec
execute as @e[x=0,type=marker,tag=specjoinpad] at @s run tag @a[team=Spectator,distance=..1] add AlreadySpec
execute as @e[x=0,type=marker,tag=specjoinpad,tag=CancelJoin] run tag @a[x=0] remove AlreadySpec
team join Spectator @a[x=0,tag=JoinSpec,gamemode=!spectator]
clear @a[x=0,tag=JoinSpec]
scoreboard players enable @a[x=0,team=Spectator] leaveSpec
tag @a[x=0,scores={leaveSpec=1..}] add LeaveTeams
scoreboard players reset @a[x=0,team=!Spectator] leaveSpec
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run tellraw @a[x=0,tag=JoinSpec,gamemode=!spectator] ["",{"text":"If you want to leave Spectator mode, click ","color":"dark_green","italic":true},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger leaveSpec set 1"}},{"text":" or fly into the green particle cluster in the center of the arena.","color":"dark_green","italic":true}]
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] run tellraw @a[x=0,tag=JoinSpec,gamemode=!spectator] ["",{"text":"If you want to leave Spectator mode, click ","color":"dark_green","italic":true},{"text":"[HERE]","color":"green","clickEvent":{"action":"run_command","value":"/trigger leaveSpec set 1"}},{"text":" or use ","color":"dark_green"},{"text":"/leave ","color":"green"},{"text":"to go back to the lobby.","color":"dark_green","italic":true}]
tp @a[x=0,tag=JoinSpec] 12 100 0.5 90 90
execute as @a[x=0,tag=JoinSpec] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
execute as @a[x=0,tag=JoinSpec] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" is now spectating the game!","color":"gray"}]
gamemode spectator @a[x=0,tag=JoinSpec]
tag @a[x=0] remove JoinSpec
tp @a[x=0,tag=AlreadySpec] 12 100 0.5 90 90
execute as @a[x=0,tag=AlreadySpec] at @s run playsound entity.enderman.teleport master @s ~ ~ ~
tag @a[x=0] remove AlreadySpec
execute if score $dust CmdData matches 1 unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] as @e[x=0,type=marker,tag=LeaveSpec] at @s run particle minecraft:dust{color:[2,1,0],scale:1} ~ ~ ~ 0.4 0.4 0.4 0.3 10 force @a[x=0,tag=!hideParticles,team=Spectator,predicate=custom:belowroof]
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=SMActive] as @e[x=0,type=marker,tag=LeaveSpec] at @s run tag @a[team=Spectator,distance=..2] add LeaveTeams

#Keep spectators inside arena
execute as @a[x=0,team=Spectator] at @s unless predicate custom:insideborder_lenient run tag @s add leftBorder
tp @a[x=0,team=Spectator,tag=leftBorder] 12 100 0.5 90 90
tellraw @a[x=0,team=Spectator,tag=leftBorder] {"text":"Cannot leave world border!","color":"red"}
tag @a[x=0] remove leftBorder

##Leave Pad
execute as @a[x=0,gamemode=!spectator] at @s if entity @s[x=-84,y=186,z=45,dx=-111,dy=0,dz=110] unless entity @s[team=!Yellow,team=!Blue] in overworld run tag @s add LeaveTeams
execute if entity @s[tag=!customLeaveHandling] run function game:leaveteams

##Countdown
execute if entity @s[tag=Countdown] run function game:countdown

##Barrier particles on a timer
scoreboard players add $barriers CmdData 1
execute if score $barriers CmdData matches 81 run scoreboard players set $barriers CmdData 0
execute if score $barriers CmdData matches 1 as @e[x=0,type=marker,tag=CancelJoin] at @s run particle minecraft:block_marker{block_state:"minecraft:barrier"} ~ ~1 ~ 0 0 0 0 1 force @a[x=0,tag=!hideParticles,team=Lobby,predicate=!custom:belowroof]
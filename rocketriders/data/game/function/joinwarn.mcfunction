##Warns players based on which team they try to join via joinpads if the team is full/imbalanced
title @s times 5 30 5

##Blue
#Joining before settings have been confirmed
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s title {"text":"Cannot Join Team!","color":"red","bold":true}
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s subtitle {"text":"Wait until game settings are confirmed first.","color":"gray"}
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run return run tag @s remove JoinBlue

#Joining while joinpad is disabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run title @s title {"text":"Cannot Join Team!","color":"red","bold":true}

#Joining while team is imbalanced and joinpad is enabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=1},tag=!BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=1},tag=!BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run title @s title {"text":"Team Imbalanced!","color":"red","bold":true}

#Joining while team is full and joinpad is enabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run title @s title {"text":"Team Full!","color":"red","bold":true}

#Resolution message: yellow is available, so join yellow
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull,scores={largerTeam=0..1}] run title @s subtitle [{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull,scores={largerTeam=0..1}] run tag @s remove JoinBlue

#Resolution message: yellow joinpad is disabled, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run title @s subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tag @s remove JoinBlue

#Resolution message: yellow is full, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run title @s subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run tag @s remove JoinBlue

#Resolution message: yellow is imbalanced, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1..0}] run title @s subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}

#General cleanup
tag @s[tag=JoinBlue,tag=cannotJoin] remove JoinBlue
execute if entity @s[tag=cannotJoin] run return run tag @s remove cannotJoin

##Yellow
#Joining before settings have been confirmed
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s title {"text":"Cannot Join Team!","color":"red","bold":true}
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s subtitle {"text":"Wait until game settings are confirmed first.","color":"gray"}
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run return run tag @s remove JoinYellow

#Joining while joinpad is disabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run title @s title {"text":"Cannot Join Team!","color":"red","bold":true}

#Joining while team is imbalanced and joinpad is enabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1},tag=!YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1},tag=!YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run title @s title {"text":"Team Imbalanced!","color":"red","bold":true}

#Joining while team is full and joinpad is enabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run title @s title {"text":"Team Full!","color":"red","bold":true}

#Resolution message: yellow is available, so join yellow
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull,scores={largerTeam=-1..0}] run title @s subtitle [{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull,scores={largerTeam=-1..0}] run tag @s remove JoinYellow

#Resolution message: yellow joinpad is disabled, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run title @s subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tag @s remove JoinYellow

#Resolution message: yellow is full, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run title @s subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run tag @s remove JoinYellow

#Resolution message: yellow is imbalanced, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=0..1}] run title @s subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}

#General cleanup
tag @s[tag=JoinYellow,tag=cannotJoin] remove JoinYellow
tag @s remove cannotJoin
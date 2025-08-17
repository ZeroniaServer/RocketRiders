###Warns players based on which team they try to join via /join if the team is full/imbalanced

##Blue
#Joining as yellow player, causing imbalance
execute if entity @s[team=Yellow,tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=0}] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Teams Balanced!","color":"red","bold":true},"\n",{"text":"Stay where you are to keep the game fair.","color":"gray"}]
execute if entity @s[team=Yellow,tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=0}] run return run tag @s remove JoinBlue

#Joining before settings have been confirmed
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Cannot Join Team!","color":"red","bold":true},"\n",{"text":"Wait until game settings are confirmed first.","color":"gray"}]
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run return run tag @s remove JoinBlue

#Joining while joinpad is disabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Cannot Join Team!","color":"red","bold":true}]

#Joining while team is imbalanced and joinpad is enabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=1},tag=!BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=1},tag=!BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Team Imbalanced!","color":"red","bold":true}]

#Joining while team is full and joinpad is enabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Team Full!","color":"red","bold":true}]

#Resolution message: yellow is available, so join yellow
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull,scores={largerTeam=0..1}] run tellraw @s [{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull,scores={largerTeam=0..1}] run tag @s remove JoinBlue

#Resolution message: yellow joinpad is disabled, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=!Yellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tellraw @s ["",{"text":"Feel free to spectate instead.","color":"gray","bold":false}]
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=!Yellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tag @s remove JoinBlue

#Resolution message: yellow is full, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=!Yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run tellraw @a ["",{"text":"Feel free to spectate instead.","color":"gray","bold":false}]
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=!Yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run tag @s remove JoinBlue

#Resolution message: yellow is imbalanced, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=!Yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1..0}] run tellraw @a ["",{"text":"Feel free to spectate instead.","color":"gray","bold":false}]

#Resolution message: yellow joinpad is disabled, so stay put or spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=Yellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tellraw @s ["",{"text":"Feel free to stay where you are or spectate instead.","color":"gray","bold":false}]
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=Yellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tag @s remove JoinBlue

#Resolution message: yellow is full, so stay put or spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=Yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run tellraw @a ["",{"text":"Feel free to stay where you are or spectate instead.","color":"gray","bold":false}]
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=Yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run tag @s remove JoinBlue

#Resolution message: yellow is imbalanced, so stay put or spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,team=Yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1..0}] run tellraw @a ["",{"text":"Feel free to stay where you are or spectate instead.","color":"gray","bold":false}]

#General cleanup
tag @s[tag=JoinBlue,tag=cannotJoin] remove JoinBlue
execute if entity @s[tag=cannotJoin] run return run tag @s remove cannotJoin

##Yellow
#Joining as blue player, causing imbalance
execute if entity @s[team=Blue,tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=0}] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Teams Balanced!","color":"red","bold":true},"\n",{"text":"Stay where you are to keep the game fair.","color":"gray"}]
execute if entity @s[team=Blue,tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=0}] run return run tag @s remove JoinYellow

#Joining before settings have been confirmed
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Cannot Join Team!","color":"red","bold":true},"\n",{"text":"Wait until game settings are confirmed first.","color":"gray"}]
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run return run tag @s remove JoinYellow

#Joining while joinpad is disabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Cannot Join Team!","color":"red","bold":true}]

#Joining while team is imbalanced and joinpad is enabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1},tag=!YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1},tag=!YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Team Imbalanced!","color":"red","bold":true}]

#Joining while team is full and joinpad is enabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tellraw @a [{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{"text":"Team Full!","color":"red","bold":true}]

#Resolution message: yellow is available, so join yellow
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull,scores={largerTeam=-1..0}] run tellraw @s [{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull,scores={largerTeam=-1..0}] run tag @s remove JoinYellow

#Resolution message: yellow joinpad is disabled, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=!Blue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tellraw @s ["",{"text":"Feel free to spectate instead.","color":"gray","bold":false}]
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=!Blue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tag @s remove JoinYellow

#Resolution message: yellow is full, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=!Blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run tellraw @a ["",{"text":"Feel free to spectate instead.","color":"gray","bold":false}]
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=!Blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run tag @s remove JoinYellow

#Resolution message: yellow is imbalanced, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=!Blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=0..1}] run tellraw @a ["",{"text":"Feel free to spectate instead.","color":"gray","bold":false}]

#Resolution message: yellow joinpad is disabled, so stay put or spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=Blue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tellraw @s ["",{"text":"Feel free to stay where you are or spectate instead.","color":"gray","bold":false}]
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=Blue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tag @s remove JoinYellow

#Resolution message: yellow is full, so stay put or spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=Blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run tellraw @a ["",{"text":"Feel free to stay where you are or spectate instead.","color":"gray","bold":false}]
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=Blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run tag @s remove JoinYellow

#Resolution message: yellow is imbalanced, so stay put or spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,team=Blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=0..1}] run tellraw @a ["",{"text":"Feel free to stay where you are or spectate instead.","color":"gray","bold":false}]

#General cleanup
tag @s[tag=JoinYellow,tag=cannotJoin] remove JoinYellow
tag @s remove cannotJoin
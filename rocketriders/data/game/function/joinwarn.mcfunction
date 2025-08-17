##Warns players based on which team they try to join via joinpads if the team is full/imbalanced

#Blue
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=1}] run title @s title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=1}] run title @s subtitle ["",{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run title @s title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull,tag=EditedSettings] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run title @s title ["",{"text":"Cannot Join Team!","color":"red","bold":true}]
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull,tag=!YellowFull,tag=EditedSettings] run title @s subtitle ["",{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull,tag=YellowFull,tag=EditedSettings] run title @s subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1..0},tag=!BlueFull,tag=EditedSettings] run tag @s remove JoinBlue

#Yellow
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1}] run title @s title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=-1}] run title @s subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run title @s title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull,tag=EditedSettings] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run title @s title ["",{"text":"Cannot Join Team!","color":"red","bold":true}]
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull,tag=!BlueFull,tag=EditedSettings] run title @s subtitle ["",{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull,tag=BlueFull,tag=EditedSettings] run title @s subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,scores={largerTeam=0..1},tag=!YellowFull,tag=EditedSettings] run tag @s remove JoinYellow

#Both
title @s times 5 30 5
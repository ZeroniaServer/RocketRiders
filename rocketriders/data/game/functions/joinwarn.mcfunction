##Warns players based on which team they try to join via /join if the team is full/imbalanced

#Blue
execute if entity @s[tag=JoinBlue] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={largerTeam=1}] run title @s title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if entity @s[tag=JoinBlue] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={largerTeam=1}] run title @s subtitle ["",{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if entity @s[tag=JoinBlue] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=BlueFull] if entity @e[predicate=custom:indimension,type=marker,tag=bluejoinpad,tag=!CancelJoin] run title @s title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if entity @s[tag=JoinBlue] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=BlueFull,tag=EditedSettings] if entity @e[predicate=custom:indimension,type=marker,tag=bluejoinpad,tag=CancelJoin] run title @s title ["",{"text":"Cannot Join Team!","color":"red","bold":true}]
execute if entity @s[tag=JoinBlue] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=BlueFull,tag=!YellowFull,tag=EditedSettings] run title @s subtitle ["",{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if entity @s[tag=JoinBlue] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=BlueFull,tag=YellowFull,tag=EditedSettings] run title @s subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
tag @s[tag=JoinBlue] remove JoinBlue

#Yellow
execute if entity @s[tag=JoinYellow] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={largerTeam=-1}] run title @s title ["",{"text":"Team Imbalanced!","color":"red","bold":true}]
execute if entity @s[tag=JoinYellow] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,scores={largerTeam=-1}] run title @s subtitle ["",{"text":"Join ","color":"aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"aqua","bold":false}]
execute if entity @s[tag=JoinYellow] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=YellowFull] if entity @e[predicate=custom:indimension,type=marker,tag=yellowjoinpad,tag=!CancelJoin] run title @s title ["",{"text":"Team Full!","color":"red","bold":true}]
execute if entity @s[tag=JoinYellow] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=YellowFull,tag=EditedSettings] if entity @e[predicate=custom:indimension,type=marker,tag=yellowjoinpad,tag=CancelJoin] run title @s title ["",{"text":"Cannot Join Team!","color":"red","bold":true}]
execute if entity @s[tag=JoinYellow] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=YellowFull,tag=!BlueFull,tag=EditedSettings] run title @s subtitle ["",{"text":"Join ","color":"aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"aqua","bold":false}]
execute if entity @s[tag=JoinYellow] if entity @e[predicate=custom:indimension,type=armor_stand,tag=Selection,tag=YellowFull,tag=BlueFull,tag=EditedSettings] run title @s subtitle ["",{"text":"Feel free to spectate this game instead.","color":"gray","bold":false}]
tag @s[tag=JoinYellow] remove JoinYellow

#Both
title @s times 5 30 5
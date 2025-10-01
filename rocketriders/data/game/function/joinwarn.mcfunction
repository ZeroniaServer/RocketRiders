##Warns players based on which team they try to join via joinpads if the team is full/imbalanced
##Blue
#Joining before settings have been confirmed
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s[tag=!tryJoinBlue] title {"text":"Cannot Join Team!","color":"red","bold":true}
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s[tag=!tryJoinBlue] subtitle {"text":"Wait until game settings are confirmed first.","color":"gray"}
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run return run tag @s remove JoinBlue

#Joining while joinpad is disabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run title @s[tag=!tryJoinBlue] title {"text":"Cannot Join Team!","color":"red","bold":true}

#Joining while team is imbalanced and joinpad is enabled
execute if entity @s[tag=JoinBlue] unless predicate game:game_rules/disable_team_balancing/on if predicate game:team_count/blue_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] unless predicate game:game_rules/disable_team_balancing/on if predicate game:team_count/blue_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run title @s[tag=!tryJoinBlue] title {"text":"Team Imbalanced!","color":"red","bold":true}

#Joining while team is full and joinpad is enabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run title @s[tag=!tryJoinBlue] title {"text":"Team Full!","color":"red","bold":true}

#Resolution message: yellow is available, so join yellow
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] unless predicate game:team_count/yellow_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull] run title @s[tag=!tryJoinBlue] subtitle [{"text":"Join ","color":"yellow","bold":false},{"text":"Yellow","color":"gold","bold":true},{"text":" instead.","color":"yellow","bold":false}]
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] unless predicate game:team_count/yellow_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull] run tag @s remove JoinBlue

#Resolution message: yellow joinpad is disabled, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run title @s[tag=!tryJoinBlue] subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run tag @s remove JoinBlue

#Resolution message: yellow is full, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run title @s[tag=!tryJoinBlue] subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run tag @s remove JoinBlue

#Resolution message: yellow is imbalanced, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin] unless predicate game:team_count/blue_is_larger unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run title @s[tag=!tryJoinBlue] subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}

#Resolution message: spectating is disabled, so explore the lobby instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run title @s[tag=!tryJoinBlue] subtitle {"text":"Feel free to explore the lobby while you wait!","color":"gray","bold":false}

#General cleanup
tag @s[tag=JoinBlue,tag=cannotJoin] remove JoinBlue
execute if entity @s[tag=cannotJoin] run return run tag @s remove cannotJoin

##Yellow
#Joining before settings have been confirmed
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s[tag=!tryJoinYellow] title {"text":"Cannot Join Team!","color":"red","bold":true}
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s[tag=!tryJoinYellow] subtitle {"text":"Wait until game settings are confirmed first.","color":"gray"}
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run return run tag @s remove JoinYellow

#Joining while joinpad is disabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run title @s[tag=!tryJoinYellow] title {"text":"Cannot Join Team!","color":"red","bold":true}

#Joining while team is imbalanced and joinpad is enabled
execute if entity @s[tag=JoinYellow] unless predicate game:game_rules/disable_team_balancing/on if predicate game:team_count/yellow_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] unless predicate game:game_rules/disable_team_balancing/on if predicate game:team_count/yellow_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run title @s[tag=!tryJoinYellow] title {"text":"Team Imbalanced!","color":"red","bold":true}

#Joining while team is full and joinpad is enabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run title @s[tag=!tryJoinYellow] title {"text":"Team Full!","color":"red","bold":true}

#Resolution message: yellow is available, so join yellow
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] unless predicate game:team_count/blue_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull] run title @s[tag=!tryJoinYellow] subtitle [{"text":"Join ","color":"dark_aqua","bold":false},{"text":"Blue","color":"blue","bold":true},{"text":" instead.","color":"dark_aqua","bold":false}]
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] unless predicate game:team_count/blue_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull] run tag @s remove JoinYellow

#Resolution message: yellow joinpad is disabled, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run title @s[tag=!tryJoinYellow] subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run tag @s remove JoinYellow

#Resolution message: yellow is full, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run title @s[tag=!tryJoinYellow] subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run tag @s remove JoinYellow

#Resolution message: yellow is imbalanced, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin] unless predicate game:team_count/yellow_is_larger unless entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run title @s[tag=!tryJoinYellow] subtitle {"text":"Feel free to spectate instead.","color":"gray","bold":false}

#Resolution message: spectating is disabled, so explore the lobby instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run title @s[tag=!tryJoinYellow] subtitle {"text":"Feel free to explore the lobby while you wait!","color":"gray","bold":false}

#General cleanup
tag @s[tag=JoinYellow,tag=cannotJoin] remove JoinYellow
execute if entity @s[tag=cannotJoin] run return run tag @s remove cannotJoin

##Spectate
#Joining before settings have been confirmed
execute if entity @s[tag=JoinSpec] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s[tag=!tryJoinSpec] title {"text":"Cannot Spectate!","color":"red","bold":true}
execute if entity @s[tag=JoinSpec] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run title @s[tag=!tryJoinSpec] subtitle {"text":"Wait until game settings are confirmed first.","color":"gray"}
execute if entity @s[tag=JoinSpec] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run return run tag @s remove JoinSpec

#Joining while joinpad is disabled
execute if entity @s[tag=JoinSpec] if entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinSpec] if entity @e[x=0,type=marker,tag=join_pad.spectator,tag=CancelJoin] run title @s[tag=!tryJoinSpec] title {"text":"Cannot Spectate!","color":"red","bold":true}

#TODO: stuff to tell you to join teams if available or explore the lobby instead while you wait
#TODO: add this to tellraw equivalents for server mode
###Warns players based on which team they try to join via /join if the team is full/imbalanced

##Blue
#Joining as yellow player, causing imbalance
execute if entity @s[predicate=custom:team/yellow,tag=JoinBlue] unless predicate game:team_count/blue_is_larger unless predicate game:team_count/yellow_is_larger run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Teams Balanced!"},"\n",{color:"gray",text:"Stay where you are to keep the match fair."}]
execute if entity @s[predicate=custom:team/yellow,tag=JoinBlue] unless predicate game:team_count/blue_is_larger unless predicate game:team_count/yellow_is_larger run return run tag @s remove JoinBlue

#Joining before settings have been confirmed
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Cannot Join Team!"},"\n",{color:"gray",text:"Wait until game settings are confirmed first."}]
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run return run tag @s remove JoinBlue

#Joining while joinpad is disabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Cannot Join Team!"}]

#Joining while team is imbalanced and joinpad is enabled
execute if entity @s[tag=JoinBlue] if predicate game:team_count/blue_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if predicate game:team_count/blue_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Team Imbalanced!"}]

#Joining while team is full and joinpad is enabled
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinBlue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Team Full!"}]

#Resolution message: yellow is available, so join yellow
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] unless predicate game:team_count/yellow_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull] run tellraw @s [{color:"yellow",text:"Join "},{bold:true,color:"gold",text:"Yellow"}," instead."]
execute if entity @s[tag=JoinBlue,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] unless predicate game:team_count/yellow_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull] run tag @s remove JoinBlue

#Resolution message: yellow joinpad is disabled, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=!custom:team/yellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tellraw @s {color:"gray",text:"Feel free to spectate instead."}
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=!custom:team/yellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tag @s remove JoinBlue

#Resolution message: yellow is full, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=!custom:team/yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run tellraw @s {color:"gray",text:"Feel free to spectate instead."}
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=!custom:team/yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run tag @s remove JoinBlue

#Resolution message: yellow is imbalanced, so spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=!custom:team/yellow] unless predicate game:team_count/blue_is_larger run tellraw @s {color:"gray",text:"Feel free to spectate instead."}

#Resolution message: yellow joinpad is disabled, so stay put or spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=custom:team/yellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tellraw @s {color:"gray",text:"Feel free to stay where you are or spectate instead."}
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=custom:team/yellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tag @s remove JoinBlue

#Resolution message: yellow is full, so stay put or spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=custom:team/yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run tellraw @s {color:"gray",text:"Feel free to stay where you are or spectate instead."}
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=custom:team/yellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] run tag @s remove JoinBlue

#Resolution message: yellow is imbalanced, so stay put or spectate instead
execute if entity @s[tag=JoinBlue,tag=cannotJoin,predicate=custom:team/yellow] unless predicate game:team_count/blue_is_larger run tellraw @s {color:"gray",text:"Feel free to stay where you are or spectate instead."}

#General cleanup
tag @s[tag=JoinBlue,tag=cannotJoin] remove JoinBlue
execute if entity @s[tag=cannotJoin] run return run tag @s remove cannotJoin

##Yellow
#Joining as blue player, causing imbalance
execute if entity @s[predicate=custom:team/blue,tag=JoinYellow] unless predicate game:team_count/blue_is_larger unless predicate game:team_count/yellow_is_larger run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Teams Balanced!"},"\n",{color:"gray",text:"Stay where you are to keep the match fair."}]
execute if entity @s[predicate=custom:team/blue,tag=JoinYellow] unless predicate game:team_count/blue_is_larger unless predicate game:team_count/yellow_is_larger run return run tag @s remove JoinYellow

#Joining before settings have been confirmed
execute if entity @s[tag=JoinYellow] unless predicate game:phase/match/over if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Cannot Join Team!"},"\n",{color:"gray",text:"Wait until game settings are confirmed first."}]
execute if entity @s[tag=JoinYellow] if predicate game:phase/match/over if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Cannot Join Team!"},"\n",{color:"gray",text:"Wait until a new game has started."}]
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run return run tag @s remove JoinYellow

#Joining while joinpad is disabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=CancelJoin] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Cannot Join Team!"}]

#Joining while team is imbalanced and joinpad is enabled
execute if entity @s[tag=JoinYellow] if predicate game:team_count/yellow_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if predicate game:team_count/yellow_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Team Imbalanced!"}]

#Joining while team is full and joinpad is enabled
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tag @s add cannotJoin
execute if entity @s[tag=JoinYellow] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=YellowFull] if entity @e[x=0,type=marker,tag=join_pad.yellow,tag=!CancelJoin] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{bold:true,color:"red",text:"Team Full!"}]

#Resolution message: yellow is available, so join yellow
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] unless predicate game:team_count/blue_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull] run tellraw @s [{color:"dark_aqua",text:"Join "},{bold:true,color:"blue",text:"Blue"},{color:"dark_aqua",text:" instead."}]
execute if entity @s[tag=JoinYellow,tag=cannotJoin] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=!CancelJoin] unless predicate game:team_count/blue_is_larger if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!BlueFull] run tag @s remove JoinYellow

#Resolution message: yellow joinpad is disabled, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=!custom:team/blue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tellraw @s {color:"gray",text:"Feel free to stay where you are or spectate instead."}
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=!custom:team/blue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tag @s remove JoinYellow

#Resolution message: yellow is full, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=!custom:team/blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run tellraw @s {color:"gray",text:"Feel free to stay where you are or spectate instead."}
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=!custom:team/blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run tag @s remove JoinYellow

#Resolution message: yellow is imbalanced, so spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=!custom:team/blue] unless predicate game:team_count/yellow_is_larger run tellraw @s {color:"gray",text:"Feel free to stay where you are or spectate instead."}

#Resolution message: yellow joinpad is disabled, so stay put or spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=custom:team/blue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tellraw @s {color:"gray",text:"Feel free to stay where you are or spectate instead."}
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=custom:team/blue] if entity @e[x=0,type=marker,tag=join_pad.blue,tag=CancelJoin] run tag @s remove JoinYellow

#Resolution message: yellow is full, so stay put or spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=custom:team/blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run tellraw @s {color:"gray",text:"Feel free to stay where you are or spectate instead."}
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=custom:team/blue] if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=BlueFull] run tag @s remove JoinYellow

#Resolution message: yellow is imbalanced, so stay put or spectate instead
execute if entity @s[tag=JoinYellow,tag=cannotJoin,predicate=custom:team/blue] unless predicate game:team_count/yellow_is_larger run tellraw @s {color:"gray",text:"Feel free to stay where you are or spectate instead."}

#General cleanup
tag @s[tag=JoinYellow,tag=cannotJoin] remove JoinYellow
tag @s remove cannotJoin

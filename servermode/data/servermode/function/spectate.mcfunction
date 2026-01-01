##Utility function for joining Spectator team
scoreboard players reset @s spectate
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=EditedSettings] run return run tag @s[predicate=!custom:team/spectator] add JoinSpec
execute if entity @s[predicate=custom:team/spectator] run return run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{color:"gray",text:"You're already spectating!"}]
execute unless predicate game:phase/match/over if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{color:"gray",text:"Wait until game settings are confirmed first."}]
execute if predicate game:phase/match/over if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=!EditedSettings] run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{color:"gray",text:"Wait until a new game has started."}]

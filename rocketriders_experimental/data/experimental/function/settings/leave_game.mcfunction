execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled,tag=noYZELO] run return run dialog show @s {type:"minecraft:confirmation",title:["",{bold:true,color:"blue",text:"Rocket"}," ",{bold:true,color:"gold",text:"Riders"}],body:{type:"minecraft:plain_message",contents:["Are you sure you want to forfeit the match?"],width:300},after_action:"close",yes:{label:{translate:"gui.yes"},action:{type:"minecraft:run_command",command:"trigger LeaveMidgame"}},no:{label:{translate:"gui.no"}}}
execute if predicate custom:team/any_playing_team if predicate game:phase/match/play if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled,tag=!noYZELO] run return run dialog show @s {type:"minecraft:confirmation",title:["",{bold:true,color:"blue",text:"Rocket"}," ",{bold:true,color:"gold",text:"Riders"}],body:{type:"minecraft:plain_message",contents:["Are you sure you want to forfeit the match?",{text:"\n\nNote: You will lose XP!",color:"red",italic:true}],width:300},after_action:"close",yes:{label:{translate:"gui.yes"},action:{type:"minecraft:run_command",command:"trigger LeaveMidgame"}},no:{label:{translate:"gui.no"}}}

dialog clear @s

execute unless predicate custom:team/any_arena_team run return run tellraw @s {color:"red",text:"You are already not in a match"}

# Leave
tag @s add LeaveTeams

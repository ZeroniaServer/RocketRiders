execute if predicate custom:team/any_playing_team if predicate game:phase/match unless predicate game:phase/match/closing if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled,tag=noYZELO] run return run dialog show @s {type:"minecraft:confirmation",title:"Rocket Riders",body:{type:"minecraft:plain_message",contents:"Are you sure you want to forfeit the match?",width:300},after_action:"close",yes:{label:{translate:"gui.yes"},action:{type:"minecraft:run_command",command:"trigger leave set 1001"}},no:{label:{translate:"gui.no"}}}
execute if predicate custom:team/any_playing_team if predicate game:phase/match unless predicate game:phase/match/closing if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled,tag=!noYZELO] run return run dialog show @s {type:"minecraft:confirmation",title:"Rocket Riders",body:{type:"minecraft:plain_message",contents:["Are you sure you want to forfeit the match?",{text:"\n\nNote: You will lose XP!",color:"red",italic:true}],width:300},after_action:"close",yes:{label:{translate:"gui.yes"},action:{type:"minecraft:run_command",command:"trigger leave set 1001"}},no:{label:{translate:"gui.no"}}}

scoreboard players set $dialog_valid var 0
execute unless predicate custom:team/any_arena_team store result score $dialog_value var run return run function everytick:trigger_commands/options/leave_game_experimental_dialog {_:""}
execute unless predicate custom:team/any_arena_team if score $dialog_valid var matches 1 run return run dialog show @s {type:"minecraft:notice",title:"Rocket Riders",body:{type:"minecraft:plain_message",contents:{color:"red",text:"You are not in a match."},width:300},after_action:"close",action:{label:{translate:"gui.ok"}}}

# Leave
dialog clear @s
tag @s add LeaveTeams

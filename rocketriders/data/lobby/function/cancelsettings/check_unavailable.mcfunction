execute unless predicate game:match_cancellable_phase if predicate game:phase/staging/configuration unless predicate rr:has_voting run return run tellraw @s {color:"red",text:"You cannot edit game settings right now. Confirm game settings first."}
execute unless predicate game:match_cancellable_phase if predicate game:phase/staging/configuration if predicate rr:has_voting run return run tellraw @s {color:"red",text:"You cannot edit game settings right now. Conclude voting first."}
execute unless predicate game:match_cancellable_phase if predicate game:phase/match/closing run return run tellraw @s {color:"red",text:"You cannot edit game settings right now. A match is ending."}
execute unless predicate game:match_cancellable_phase run return run tellraw @s {color:"red",text:"You cannot edit game settings right now."}

execute if score $mcancel CmdData matches -1 run return run tellraw @s {color:"red",text:"You cannot cancel the match right now. Players are currently on teams."}

execute if score $mcancelcount CmdData matches 2.. run return run tellraw @s [{color:"red",text:"You cannot edit game settings right now. Try again in "},{bold:true,color:"#FF8585",score:{name:"$mcancelcount",objective:"CmdData"}}," seconds."]
execute if score $mcancelcount CmdData matches 1 run return run tellraw @s [{color:"red",text:"You cannot edit game settings right now. Try again in "},{bold:true,color:"#FF8585",text:"1"}," second."]

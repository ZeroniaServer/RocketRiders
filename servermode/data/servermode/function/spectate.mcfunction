##Utility function for joining Spectator team
scoreboard players reset @s spectate
execute if predicate game:joinable_match_phase run return run tag @s[predicate=!custom:team/spectator] add JoinSpec
execute if predicate custom:team/spectator run return run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{color:"gray",text:"You're already spectating!"}]
execute if predicate game:phase/staging/configuration run return run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{color:"gray",text:"Wait until game settings are confirmed first."}]
execute if predicate game:phase/match/closing run tellraw @s [{color:"dark_gray",text:"["},{bold:true,color:"red",text:"!"},{color:"dark_gray",text:"] "},{color:"gray",text:"Wait until a new game has started."}]

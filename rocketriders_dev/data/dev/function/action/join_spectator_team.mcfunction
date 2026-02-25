execute if predicate custom:team/spectator run return run tellraw @s {color:"red",text:"You are already spectating this match."}
execute if predicate game:phase/staging/configuration run return run tellraw @s {color:"red",text:"You cannot join a team before game settings are confirmed / voting is complete."}

execute if predicate custom:team/blue unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0] ["",{selector:"@s"},{color:"dark_aqua",text:" left the blue team!"}]
execute if predicate custom:team/blue if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0] ["",{selector:"@s"},{color:"red",text:" left the red team!"}]
execute if predicate custom:team/yellow run tellraw @a[x=0] ["",{selector:"@s"},{color:"yellow",text:" left the yellow team!"}]

execute if predicate game:phase/staging run function custom:team/join_lobby
execute if predicate game:phase/staging run function everytick:team_count
execute if predicate game:phase/staging run effect clear @s
execute if predicate game:phase/staging run function custom:reset_inventory
execute if predicate game:phase/staging run function custom:update_armor
execute if predicate game:phase/staging run return run execute positioned -82.5 202.0 78.5 run function custom:teleport_with_sound

execute if predicate game:phase/match run tellraw @a[x=0] ["",{selector:"@s",color:"dark_gray"},{color:"gray",text:" is now spectating the match!"}]
execute if predicate game:phase/match run function custom:team/join_spectator
execute if predicate game:phase/match run function everytick:team_count
execute if predicate game:phase/match if predicate game:phase/match/pause run gamemode adventure @s[gamemode=!adventure]
execute if predicate game:phase/match unless predicate game:phase/match/pause run gamemode spectator @s[gamemode=!spectator]
execute if predicate game:phase/match run function custom:update_inventory
execute if predicate game:phase/match run function custom:update_armor
execute if predicate game:phase/match run return run execute unless predicate custom:in_arena positioned 12.5 100.0 0.5 rotated 90 90 run function custom:teleport_with_sound

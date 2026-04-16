execute if predicate custom:team/blue run return run tellraw @s [{color:"red",text:"You are already on the "},{score:{name:"@s",objective:"text.team_name_lowercase"}}," team"]
execute if predicate game:phase/staging/configuration run return run tellraw @s {color:"red",text:"You cannot join a team before game settings are confirmed / voting is complete."}


execute if predicate custom:team/yellow run tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," left the ",{score:{name:"@s",objective:"text.team_name_lowercase"}}," team!"]
execute if predicate custom:team/spectator run tellraw @a[x=0] ["",{selector:"@s"},{color:"gray",text:" is no longer spectating the match!"}]

execute if predicate game:phase/staging run function custom:player/team/join_lobby
execute if predicate game:phase/staging run function everytick:team_count
execute if predicate game:phase/staging run effect clear @s
execute if predicate game:phase/staging run function custom:player/reset_inventory
execute if predicate game:phase/staging run function custom:player/update_armor
execute if predicate game:phase/staging run return run execute positioned -79.5 205.00 62.5 run function custom:player/teleport_with_sound

execute if predicate game:phase/match store success score $was_in_playing_team var if predicate custom:team/any_playing_team
execute if predicate game:phase/match run function custom:player/team/join_blue
execute if predicate game:phase/match run tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," joined the ",{score:{name:"@s",objective:"text.team_name_lowercase"}}," team!"]
execute if predicate game:phase/match run function everytick:team_count
execute if predicate game:phase/match if predicate game:phase/match/play run gamemode survival @s[gamemode=!survival]
execute if predicate game:phase/match unless predicate game:phase/match/play run gamemode adventure @s[gamemode=!adventure]
execute if predicate game:phase/match if score $was_in_playing_team var matches 0 run function custom:player/reset_inventory
execute if predicate game:phase/match if score $was_in_playing_team var matches 1 run function custom:player/update_inventory
execute if predicate game:phase/match run function custom:player/update_armor
execute if predicate game:phase/match run return run execute unless predicate custom:in_arena positioned 12.5 64.0 -65.5 rotated 0 0 run function custom:player/teleport_with_sound

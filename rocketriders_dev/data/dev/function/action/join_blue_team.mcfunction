execute if predicate custom:team/blue run return run tellraw @s {color:"red",text:"You are already on the blue team."}
execute if predicate game:phase/staging unless entity @e[limit=1,x=0,tag=Selection,tag=EditedSettings] run return run tellraw @s {color:"red",text:"Cannot join a team before game settings are confirmed / voting is complete."}

execute if predicate custom:team/yellow run tellraw @a[x=0] ["",{selector:"@s"},{color:"yellow",text:" left the yellow team!"}]
execute if predicate custom:team/spectator run tellraw @a[x=0] ["",{selector:"@s"},{color:"gray",text:" is no longer spectating the match!"}]

execute if predicate game:phase/staging run function custom:team/join_lobby
execute if predicate game:phase/staging run function everytick:team_count
execute if predicate game:phase/staging run effect clear @s
execute if predicate game:phase/staging run function custom:reset_inventory
execute if predicate game:phase/staging run function custom:update_armor
execute if predicate game:phase/staging run return run execute positioned -79.5 205.00 62.5 run function custom:teleport_with_sound

execute if predicate game:phase/match unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0] ["",{selector:"@s",color:"blue"},{color:"dark_aqua",text:" joined the blue team!"}]
execute if predicate game:phase/match if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0] ["",{selector:"@s",color:"dark_red"},{color:"red",text:" joined the red team!"}]
execute if predicate game:phase/match store success score $was_in_playing_team var if predicate custom:team/any_playing_team
execute if predicate game:phase/match run function custom:team/join_blue
execute if predicate game:phase/match run function everytick:team_count
execute if predicate game:phase/match if predicate game:phase/match/play run gamemode survival @s[gamemode=!survival]
execute if predicate game:phase/match unless predicate game:phase/match/play run gamemode adventure @s[gamemode=!adventure]
execute if predicate game:phase/match if score $was_in_playing_team var matches 0 run function custom:reset_inventory
execute if predicate game:phase/match if score $was_in_playing_team var matches 1 run function custom:update_inventory
execute if predicate game:phase/match run function custom:update_armor
execute if predicate game:phase/match run return run execute unless predicate custom:in_arena positioned 12.5 64.0 -65.5 rotated 0 0 run function custom:teleport_with_sound

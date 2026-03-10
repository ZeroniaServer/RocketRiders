execute unless predicate custom:team/any_playing_team run return run tellraw @s {color:"red",text:"You cannot switch teams currently."}

execute store success score $new_team var if entity @s[predicate=custom:team/blue]
execute if score $new_team var matches 0 run function custom:team/join_blue
execute if score $new_team var matches 1 run function custom:team/join_yellow
function everytick:team_count
tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," switched to the ",{score:{name:"@s",objective:"text.team_name_lowercase"}}," team!"]

function custom:update_armor
function custom:update_inventory

execute if predicate game:phase/match run advancement grant @s only custom:event/player_dies die_other
execute if predicate game:phase/staging run tp @s[predicate=custom:team/blue] -95 202 60 0 0
execute if predicate game:phase/staging run tp @a[predicate=custom:team/yellow] -95 202 96 180 0

tag @s add teleport_sound

dialog clear @s

execute if score $new_team var matches 0 run tag @s remove JoinBlue
execute if score $new_team var matches 1 run tag @s remove JoinYellow
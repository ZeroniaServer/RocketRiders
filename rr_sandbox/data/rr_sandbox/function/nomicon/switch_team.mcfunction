execute unless predicate custom:team/any_playing_team run return run tellraw @s {color:"red",text:"You cannot switch teams currently."}

execute store success score $new_team var if entity @s[predicate=custom:team/blue]
execute if score $new_team var matches 0 run function custom:team/join_blue
execute if score $new_team var matches 1 run function custom:team/join_yellow
function everytick:team_count
tellraw @a[x=0] [{score:{name:"@s",objective:"text.accent_color"}},{selector:"@s"}," switched to the ",{score:{name:"@s",objective:"text.team_name_lowercase"}}," team!"]

function custom:update_armor
function custom:update_inventory

advancement grant @s only custom:event/player_dies die_other

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~

dialog clear @s

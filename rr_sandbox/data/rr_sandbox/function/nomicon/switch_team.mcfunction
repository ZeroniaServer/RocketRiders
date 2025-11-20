execute unless predicate custom:team/any_playing_team run return run tellraw @s {color:"red",text:"Cannot switch teams currently."}

execute store success score $new_team var if entity @s[predicate=custom:team/blue]
execute if score $new_team var matches 0 run function custom:team/join_blue
execute if score $new_team var matches 0 unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0] ["",{selector:"@s"},{color:"dark_aqua",text:" switched to the blue team!"}]
execute if score $new_team var matches 0 if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0] ["",{selector:"@s"},{color:"#F77DB4",text:" switched to the red team!"}]
execute if score $new_team var matches 1 run function custom:team/join_yellow
execute if score $new_team var matches 1 run tellraw @a[x=0] ["",{selector:"@s"},{color:"yellow",text:" switched to the yellow team!"}]
function everytick:team_count

function custom:update_armor
function custom:update_inventory

advancement grant @s only custom:event/player_dies die_other

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~

dialog clear @s

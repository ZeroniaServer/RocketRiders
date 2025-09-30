execute unless predicate custom:on_blue_or_yellow_team run return run tellraw @s {color:"red",text:"Cannot switch teams currently."}

execute store success score $new_team var if entity @s[team=Blue]
execute if score $new_team var matches 0 run team join Blue @s
execute if score $new_team var matches 0 run tellraw @a ["",{selector:"@s"},{color:"dark_aqua",text:" switched to the blue team!"}]
execute if score $new_team var matches 1 run team join Yellow @s
execute if score $new_team var matches 1 run tellraw @a ["",{selector:"@s"},{color:"yellow",text:" switched to the yellow team!"}]
function everytick:team_count

function custom:update_armor
function custom:update_inventory

advancement grant @s only custom:event/player_dies die_not_void

execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~

dialog clear @s

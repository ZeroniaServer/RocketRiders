execute unless predicate custom:on_blue_or_yellow_team run return run tellraw @s {color:"red",text:"Cannot switch teams currently."}

execute store success score $new_team var if entity @s[team=Blue]
execute if score $new_team var matches 0 run team join Blue @s
execute if score $new_team var matches 1 run team join Yellow @s

function custom:update_armor
function custom:update_inventory

advancement grant @s only custom:event/player_dies die_not_void

dialog clear @s

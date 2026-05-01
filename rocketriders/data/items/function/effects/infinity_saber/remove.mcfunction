title @s actionbar {"text":"Infinity Saber expired.","color":"red"}
tag @s add DelayActionbar

scoreboard players reset @s effects.infinity_saber.time
function custom:player/update_inventory/shooting_saber
execute at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1.5

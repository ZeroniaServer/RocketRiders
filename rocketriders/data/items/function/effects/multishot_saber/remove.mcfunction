title @s actionbar {color:"red",text:"Multishot Saber expired"}
function custom:player/delay_actionbar

scoreboard players reset @s effects.multishot_saber.time
function custom:player/update_inventory/shooting_saber
execute at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1.5

title @s title ""
title @s subtitle ["",{bold:true,color:"dark_red",italic:true,text:"Elytra "},{color:"red",text:"expired!"}]

scoreboard players reset @s effects.elytra.state
function custom:player/update_armor

execute at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 0.6 1
execute at @s run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 0.4 1.2

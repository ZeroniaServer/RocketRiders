playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.2
playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1.5
title @s times 10 80 20
title @s title "Welcome to"
title @s subtitle [{bold:true,color:"blue",text:"Rocket "},{color:"gold",text:"Riders"},[{bold:false,color:"green",text:" "},{storage:"rocketriders:version",nbt:"name",interpret:true},"!"]]
tellraw @s ["Welcome to ",[{bold:true,color:"blue",text:"Rocket "},{color:"gold",text:"Riders"},[{bold:false,color:"green",text:" "},{storage:"rocketriders:version",nbt:"name",interpret:true},"!"]]]

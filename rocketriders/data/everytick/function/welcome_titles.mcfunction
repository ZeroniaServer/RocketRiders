playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.2
playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1.5
title @s times 10 80 20
title @s title [{bold:true,color:"blue",text:"Rocket ",shadow_color:[0.05,0.05,0.25,1]},{color:"gold",text:"Riders",shadow_color:[0.35,0.15,0.05,1]}]
title @s subtitle [{translate:"%s  Made by %s",color:"gray",with:[[{color:"aqua",text:"Version "},{storage:"rocketriders:version",nbt:"name",interpret:true}],{text:"Zeronia",color:"green"}]}]
# New players already get a separate tellraw
tellraw @s[tag=!newPlayer] ["Welcome to ",[{bold:true,color:"blue",text:"Rocket ",shadow_color:[0.05,0.05,0.25,1]},{color:"gold",text:"Riders",shadow_color:[0.35,0.15,0.05,1]},[{bold:false,color:"aqua",text:" Version "},{storage:"rocketriders:version",nbt:"name",interpret:true},"!"]]]
tag @s[tag=newPlayer] remove newPlayer
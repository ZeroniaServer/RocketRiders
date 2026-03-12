## Welcome/handle new players

#Welcome message
tellraw @s ["Welcome to ",[{bold:true,color:"blue",text:"Rocket "},{color:"gold",text:"Riders"},[{bold:false,color:"green",text:" "},{storage:"rocketriders:version",nbt:"name",interpret:true}]],", ",{color:"gray",selector:"@s"},"!\n",[{text:"Use your ",color:"gray"},{color:"dark_green",bold:true,text:"Navigation Book"}," to explore the Lobby. You can join a match with join pads, see missiles in the Missile Display Area, or try the Parkour. Enjoy!"]]

tag @s add informMeLate
tag @s add newPlayer
function custom:player_action/playerdata/save

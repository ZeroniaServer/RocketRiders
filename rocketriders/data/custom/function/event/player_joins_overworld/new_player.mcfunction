## Welcome/handle new players

#Welcome message
tellraw @s [{color:"gray",text:"Welcome to "},{color:"blue",text:"Rocket "},{color:"gold",text:"Riders"},", ",{color:"green",selector:"@s"},"! Use the ",{color:"dark_green",text:"Navigation Book"}," to explore the Lobby. You can join the game with join pads, see missiles in the Missile Display Area, or try the Parkour. Enjoy!"]

tag @s add informMeLate
function custom:player_action/playerdata/save

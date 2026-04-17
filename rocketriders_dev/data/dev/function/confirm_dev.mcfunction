scoreboard players set @s confirmed_dev 1
function custom:player/playerdata/save
tellraw @s {color:"green",text:"You may now use developer quick actions"}

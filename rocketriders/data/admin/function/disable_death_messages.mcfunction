scoreboard players set $nodeathmessages CmdData 1
function custom:game_rules/show_death_messages/off
tellraw @a[x=0] {color:"red",text:"Death messages disabled."}

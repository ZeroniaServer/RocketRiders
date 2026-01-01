scoreboard players set $nodeathmessages CmdData 0
function custom:game_rules/show_death_messages/on
tellraw @a[x=0] {color:"green",text:"Death messages enabled."}

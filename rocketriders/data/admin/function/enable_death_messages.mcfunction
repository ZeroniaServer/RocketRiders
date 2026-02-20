scoreboard players reset $disable_death_messages config
function custom:game_rules/show_death_messages/on
tellraw @a[x=0] {color:"green",text:"Death messages enabled."}

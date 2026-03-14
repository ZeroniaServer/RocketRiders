advancement revoke @s from achievements:a17z/root
advancement grant @s only achievements:a17z/root
advancement grant @s only achievements:a17z/end_row1
advancement grant @s only achievements:a17z/end_row2
advancement grant @s only achievements:a17z/end_row3

advancement revoke @s from achievements:rr_fffmedium/root
advancement grant @s only achievements:rr_fffmedium/root
advancement grant @s only achievements:rr_fffmedium/end_row1
advancement grant @s only achievements:rr_fffmedium/end_row2
advancement grant @s only achievements:rr_fffmedium/end_row3
advancement grant @s only achievements:rr_fffmedium/end_row4

advancement revoke @s from achievements:rr_zzzhard/root
advancement grant @s only achievements:rr_zzzhard/root
advancement grant @s only achievements:rr_zzzhard/end_row1
advancement grant @s only achievements:rr_zzzhard/end_row2
advancement grant @s only achievements:rr_zzzhard/end_row3

scoreboard players reset @s fireballKill
scoreboard players reset @s minedTNT
scoreboard players reset @s useful
function custom:player_action/playerdata/save

tellraw @s {color:"green",text:"Your achievements have been reset."}

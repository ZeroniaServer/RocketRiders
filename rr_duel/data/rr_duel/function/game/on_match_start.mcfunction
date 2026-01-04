#tracking players and locking join pads
execute as @a[x=0,predicate=custom:team/any_playing_team] run function rr_duel:game/player_tracking/add_tracker

function game:cancelyellow
function game:cancelblue

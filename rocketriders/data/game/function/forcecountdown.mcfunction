##Operator function for forcing a countdown to begin
execute unless predicate game:phase/staging/queue run return run tellraw @s {color:"red",text:"You can only run this when settings are confirmed and a match has not started yet"}

scoreboard players set $force_countdown global 1
function game:set_phase/staging.queue.countdown

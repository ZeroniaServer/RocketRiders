bossbar add rr_duel:resetting_arena {color:"red",text:"Resetting the arena..."}
bossbar set rr_duel:resetting_arena color red
bossbar set rr_duel:resetting_arena max 50
execute store result bossbar rr_duel:resetting_arena value run scoreboard players get $chunk_clear_progress global
execute if score $chunk_clear_progress global matches ..50 run bossbar set rr_duel:resetting_arena players @a[x=0,predicate=!custom:team/lobby]

# Unpause
execute if score $chunk_clear_progress global matches 50.. run function rr_duel:game/start_new_round


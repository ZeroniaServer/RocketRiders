advancement revoke @s only lobby:zeronia_credit_right

function lobby:credits/zeronia_credit

execute at @e[limit=1,x=0,type=interaction,tag=zeronia_credit.right] run particle minecraft:block{block_state:"minecraft:command_block"} ~ ~ ~ 0.2 0.2 0.2 0.1 50 normal @s[tag=!hideParticles,predicate=!custom:in_arena]
execute at @e[limit=1,x=0,type=interaction,tag=zeronia_credit.right] run particle minecraft:end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 10 normal @s[tag=!hideParticles,predicate=!custom:in_arena]

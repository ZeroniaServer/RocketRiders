advancement revoke @s only lobby:protection/interact_with_flower_pot

execute positioned -36 212 18 unless block ~ ~ ~ potted_blue_orchid run setblock ~ ~ ~ potted_blue_orchid
execute positioned -37 212 138 unless block ~ ~ ~ potted_dandelion run setblock ~ ~ ~ potted_dandelion

tellraw @s {color:"red",text:"don't steal the flowers :("}

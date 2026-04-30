scoreboard objectives remove text.flag_color
scoreboard objectives remove FallDistance
scoreboard objectives remove flag.is_nova_attached
scoreboard objectives remove flag.is_dead
scoreboard objectives remove SwissCheese

execute if score $disable_tying config matches 1 run scoreboard players set $disable_overtime config 1
execute if score $disable_tying config matches 1 run scoreboard players set $tie_window_length config -1
scoreboard players reset $disable_tying config

execute if score $instant_tnt_explosions config matches 1 run scoreboard players set $instant_tnt config 1
scoreboard players reset $instant_tnt_explosions config

execute if score $no_fall_damage config matches 1 run scoreboard players set $no_fall config 1
scoreboard players reset $no_fall_damage config

function game:forcestop
schedule function game:match_components/reset 5t

# expand parkour area wall
fill 95 186 -6 36 219 -16 minecraft:black_concrete hollow
fill 37 187 -6 94 218 -6 minecraft:air strict
fill 95 186 123 36 219 136 minecraft:black_concrete hollow
fill 37 187 123 94 218 123 minecraft:air strict
fill 95 186 -16 101 219 136 minecraft:black_concrete hollow
fill 95 187 -15 95 218 135 minecraft:air strict
fill 37 196 -15 100 196 135 minecraft:barrier strict
fill 36 219 -16 101 231 136 minecraft:black_concrete hollow
fill 100 219 135 37 219 -15 minecraft:barrier strict
fill 68 219 68 70 219 73 minecraft:red_stained_glass strict
setblock 80 218 71 minecraft:red_stained_glass strict
setblock 65 219 82 minecraft:red_stained_glass strict
fill 64 218 82 64 207 82 minecraft:light[level=15] strict
fill 50 197 90 84 210 121 minecraft:air replace minecraft:light strict
fill 50 198 90 84 211 121 minecraft:light[level=11] replace minecraft:air strict
fill 50 198 90 84 211 121 minecraft:light[level=11] replace minecraft:light strict
fill 76 200 93 58 200 111 minecraft:light[level=15] replace minecraft:light strict
fill 56 200 103 52 203 101 minecraft:light[level=15] replace minecraft:light strict
fill 78 200 101 82 203 103 minecraft:light[level=15] replace minecraft:light strict
fill 68 200 113 66 203 119 minecraft:light[level=15] replace minecraft:light strict
fill 79 217 72 81 209 70 minecraft:light[level=15] replace minecraft:air strict
fill 66 206 81 64 218 83 minecraft:light[level=15] replace minecraft:air strict
function world_updates:1_3_3-pre1/try_fill_biome {_:""}

execute as @e[limit=1,x=0,type=armor_stand,tag=Selection] run function arenaclear:refreshoptionssigns

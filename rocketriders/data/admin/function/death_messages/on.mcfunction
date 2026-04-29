scoreboard players reset $disable_death_messages config
gamerule minecraft:show_death_messages true
tellraw @a[x=0] {color:"green",text:"Death messages enabled."}

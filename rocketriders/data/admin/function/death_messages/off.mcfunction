scoreboard players set $disable_death_messages config 1
gamerule minecraft:show_death_messages false
tellraw @a[x=0] {color:"red",text:"Death messages disabled."}

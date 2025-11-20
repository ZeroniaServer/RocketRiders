scoreboard players set $nodeathmessages CmdData 1
gamerule minecraft:show_death_messages false
tellraw @a[x=0] [{"text":"Death messages disabled.","color":"red"}]
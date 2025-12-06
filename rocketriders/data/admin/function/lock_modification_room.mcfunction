scoreboard players set $lockmodroom CmdData 1
kill @e[x=0,type=block_display,tag=lobby_arrow_display]
tellraw @a[x=0] [{"text":"Modification Room locked.","color":"red"}]

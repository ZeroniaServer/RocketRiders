scoreboard players set $lockmodroom CmdData 1
kill @e[type=block_display,tag=LobbyArrowDisplay]
tellraw @a[x=0] [{"text":"Modification Room locked.","color":"red"}]
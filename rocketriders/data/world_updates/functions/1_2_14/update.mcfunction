function lobby:missiledisplay/applybook
tellraw @a[x=0] {"text":"Successfully applied updates from Rocket Riders 1.2.14","color":"green"}
scoreboard players set $WorldVersion CmdData 1302
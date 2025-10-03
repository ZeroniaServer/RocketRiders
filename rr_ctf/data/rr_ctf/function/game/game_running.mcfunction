#Spawnpoints
spawnpoint @a[x=0,team=Blue] 12 64 -66 0 0
spawnpoint @a[x=0,team=Yellow] 12 64 66 -180 0

#flag logic
function rr_ctf:everytick/flag

#Sidebar & Tablist
scoreboard objectives setdisplay sidebar.team.gold FlagDisp
scoreboard objectives setdisplay sidebar.team.blue FlagDisp
scoreboard objectives setdisplay sidebar.team.dark_gray FlagDisp
scoreboard objectives setdisplay list flag_tablist_display

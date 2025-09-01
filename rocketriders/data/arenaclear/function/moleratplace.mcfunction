##Places gray glass from the Molerat modifier

#Pregame queue
fill -101 207 69 -89 186 87 light_gray_stained_glass replace air

#Schedule arena placement
function arenaclear:molerat_clear/unschedule_all
function arenaclear:molerat_place/schedule_all

scoreboard players set $was_molerat global 1
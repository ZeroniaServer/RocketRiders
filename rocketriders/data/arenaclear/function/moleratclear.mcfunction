##Clears gray glass placed from the Molerat modifier

#Pregame queue
fill -101 207 69 -89 186 87 air replace light_gray_stained_glass

#Schedule arena placement
function arenaclear:molerat_place/unschedule_all
function arenaclear:molerat_clear/schedule_all

scoreboard players reset $was_molerat global
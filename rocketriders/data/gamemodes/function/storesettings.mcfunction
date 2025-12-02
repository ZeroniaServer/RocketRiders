##Utility function for storing previous settings
##ONLY RUN WHILE CUSTOMIZER IS OPEN!!!

scoreboard players reset $match_over global
function game:config/dump {write_to:"storage rocketriders:storage config"}
data modify storage rocketriders:storage Tags set from entity @s Tags

##Puts out the executor's fire by placing a brief layer of water
function custom:summon_marker_aec {run:'data merge entity @s {Duration:2,Tags:["fireAEC"]}'}
fill ~ ~ ~ ~ ~ ~ water[level=1] replace #custom:air
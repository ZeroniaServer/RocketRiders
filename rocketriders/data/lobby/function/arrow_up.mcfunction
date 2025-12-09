# ~ ~ ~
execute as @e[x=0,type=block_display,tag=lobby_arrow_display,tag=lobby_arrow_display.left] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{translation:[-14.5,0.574,-0.314]},block_state:{Name:"minecraft:purple_concrete"}}
execute as @e[x=0,type=block_display,tag=lobby_arrow_display,tag=lobby_arrow_display.middle] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{translation:[-14.5,0,-0.5]},block_state:{Name:"minecraft:purple_concrete"}}
execute as @e[x=0,type=block_display,tag=lobby_arrow_display,tag=lobby_arrow_display.right] run data merge entity @s {interpolation_duration:10,start_interpolation:0,transformation:{translation:[-14.5,0,-0.5]},block_state:{Name:"minecraft:purple_concrete"}}

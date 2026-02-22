## Join Pad Barrier Displays
execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.left,tag=join_pad.show_barrier,tag=!join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.left] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[7.5,7.5,0]}}
execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.left,tag=!join_pad.show_barrier,tag=join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.left] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0,0,0]}}

execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.middle,tag=join_pad.show_barrier,tag=!join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.middle] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[7.5,7.5,0]}}
execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.middle,tag=!join_pad.show_barrier,tag=join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.middle] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0,0,0]}}

execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.right,tag=join_pad.show_barrier,tag=!join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.right] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[7.5,7.5,0]}}
execute if entity @e[limit=1,x=0,type=marker,tag=join_pad.right,tag=!join_pad.show_barrier,tag=join_pad.was_showing_barrier] run data merge entity @e[limit=1,type=text_display,tag=join_pad_display.right] {start_interpolation:0,interpolation_duration:0,transformation:{scale:[0,0,0]}}

## Navigation book
execute if score $update_nav_book global matches 1 run function lobby:__update_nav_book/update_with_template
scoreboard players reset $update_nav_book global

#Wrap counter around (0-24)
scoreboard players set $wrap_size var 25
scoreboard players operation $modification_room.selected_modifier global %= $wrap_size var

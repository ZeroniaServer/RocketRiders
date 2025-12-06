kill @e[x=0,type=block_display,tag=lobby_arrow_display]

summon minecraft:block_display -49.0 211.0 78.5 {Tags:["lobby_arrow_display","lobby_arrow_display.left"],Glowing:true,view_range:0.3,shadow_radius:0,shadow_strength:0,brightness:{sky:15,block:15},transformation:{left_rotation:[0.3009,0,0,0.9537],right_rotation:[0,0,0,1],translation:[-14.5,0.574,-0.314],scale:[0.2,3,1]},block_state:{Name:"minecraft:magenta_concrete"},glow_color_override:0xFF00FF}
summon minecraft:block_display -49.0 211.0 78.5 {Tags:["lobby_arrow_display","lobby_arrow_display.middle"],Glowing:true,view_range:0.3,shadow_radius:0,shadow_strength:0,brightness:{sky:15,block:15},transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[-14.5,0,-0.5],scale:[0.2,6,1]},block_state:{Name:"minecraft:magenta_concrete"},glow_color_override:0xFF00FF}
summon minecraft:block_display -49.0 211.0 78.5 {Tags:["lobby_arrow_display","lobby_arrow_display.right"],Glowing:true,view_range:0.3,shadow_radius:0,shadow_strength:0,brightness:{sky:15,block:15},transformation:{left_rotation:[-0.3007,0,0,0.9537],right_rotation:[0,0,0,1],translation:[-14.5,0,-0.5],scale:[0.2,3,1]},block_state:{Name:"minecraft:magenta_concrete"},glow_color_override:0xFF00FF}

scoreboard players set $lobby_arrow_display global 9

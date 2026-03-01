scoreboard objectives remove leavecheck
scoreboard objectives remove cancelMatch

execute unless entity @e[limit=1,x=0,type=interaction,tag=lobby_protection.flower_pot_blue] run summon minecraft:interaction -35.5 212.0 18.5 {Tags:["lobby_protection.flower_pot_blue"],width:0.377,height:0.376}
execute unless entity @e[limit=1,x=0,type=interaction,tag=lobby_protection.flower_pot_yellow] run summon minecraft:interaction -36.5 212.0 138.5 {Tags:["lobby_protection.flower_pot_yellow"],width:0.377,height:0.376}
execute unless entity @e[limit=1,x=0,type=interaction,tag=lobby_protection.table_yellow] run summon minecraft:interaction -36.40625 211.0 138.59375 {Tags:["lobby_protection.table_yellow"],height:1.001,width:1.1895}
execute unless entity @e[limit=1,x=0,type=interaction,tag=lobby_protection.table_blue] run summon minecraft:interaction -35.59375 211.0 18.40625 {Tags:["lobby_protection.table_blue"],height:1.001,width:1.1895}
setblock -37 213 16 minecraft:dark_oak_wall_sign[facing=west,waterlogged=false]{is_waxed:true} strict
setblock -36 213 140 minecraft:dark_oak_wall_sign[facing=east,waterlogged=false]{is_waxed:true} strict

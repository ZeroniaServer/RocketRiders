#Yellow Flag 1
execute if entity @e[type=player,team=Blue,tag=CarryFY1] run bossbar set rr_ctf:fy1 players @a[team=!Lobby]
execute if entity @e[type=player,team=Blue,tag=CarryFY1] run bossbar set rr_ctf:fy1 name ["",{"selector":"@e[type=player,team=Blue,tag=CarryFY1,limit=1]","color":"blue"},{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=117..127] run bossbar set rr_ctf:fy1 value 1
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=106..116] run bossbar set rr_ctf:fy1 value 2
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=95..105] run bossbar set rr_ctf:fy1 value 3
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=84..94] run bossbar set rr_ctf:fy1 value 4
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=73..83] run bossbar set rr_ctf:fy1 value 5
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=62..72] run bossbar set rr_ctf:fy1 value 6
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=50..61] run bossbar set rr_ctf:fy1 value 7
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=39..49] run bossbar set rr_ctf:fy1 value 8
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=28..38] run bossbar set rr_ctf:fy1 value 9
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY1,distance=0..27] run bossbar set rr_ctf:fy1 value 10

#Yellow Flag 2
execute if entity @e[type=player,team=Blue,tag=CarryFY2] run bossbar set rr_ctf:fy2 players @a[team=!Lobby]
execute if entity @e[type=player,team=Blue,tag=CarryFY2] run bossbar set rr_ctf:fy2 name ["",{"selector":"@e[type=player,team=Blue,tag=CarryFY2,limit=1]","color":"blue"},{"text":" is carrying a ","color":"dark_aqua"},{"text":"Yellow","color":"gold"},{"text":" flag!","color":"dark_aqua"}]
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=117..127] run bossbar set rr_ctf:fy2 value 1
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=106..116] run bossbar set rr_ctf:fy2 value 2
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=95..105] run bossbar set rr_ctf:fy2 value 3
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=84..94] run bossbar set rr_ctf:fy2 value 4
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=73..83] run bossbar set rr_ctf:fy2 value 5
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=62..72] run bossbar set rr_ctf:fy2 value 6
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=50..61] run bossbar set rr_ctf:fy2 value 7
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=39..49] run bossbar set rr_ctf:fy2 value 8
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=28..38] run bossbar set rr_ctf:fy2 value 9
execute positioned 12 53 -60 if entity @e[type=player,team=Blue,tag=CarryFY2,distance=0..27] run bossbar set rr_ctf:fy2 value 10

#Blue Flag 1
execute if entity @e[type=player,team=Yellow,tag=CarryFB1] run bossbar set rr_ctf:fb1 players @a[team=!Lobby]
execute if entity @e[type=player,team=Yellow,tag=CarryFB1] run bossbar set rr_ctf:fb1 name ["",{"selector":"@e[type=player,team=Yellow,tag=CarryFB1,limit=1]","color":"gold"},{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=117..127] run bossbar set rr_ctf:fb1 value 1
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=106..116] run bossbar set rr_ctf:fb1 value 2
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=95..105] run bossbar set rr_ctf:fb1 value 3
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=84..94] run bossbar set rr_ctf:fb1 value 4
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=73..83] run bossbar set rr_ctf:fb1 value 5
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=62..72] run bossbar set rr_ctf:fb1 value 6
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=50..61] run bossbar set rr_ctf:fb1 value 7
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=39..49] run bossbar set rr_ctf:fb1 value 8
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=28..38] run bossbar set rr_ctf:fb1 value 9
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB1,distance=0..27] run bossbar set rr_ctf:fb1 value 10

#Blue Flag 2
execute if entity @e[type=player,team=Yellow,tag=CarryFB2] run bossbar set rr_ctf:fb2 players @a[team=!Lobby]
execute if entity @e[type=player,team=Yellow,tag=CarryFB2] run bossbar set rr_ctf:fb2 name ["",{"selector":"@e[type=player,team=Yellow,tag=CarryFB2,limit=1]","color":"gold"},{"text":" is carrying a ","color":"yellow"},{"text":"Blue","color":"blue"},{"text":" flag!","color":"yellow"}]
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=117..127] run bossbar set rr_ctf:fb2 value 1
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=106..116] run bossbar set rr_ctf:fb2 value 2
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=95..105] run bossbar set rr_ctf:fb2 value 3
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=84..94] run bossbar set rr_ctf:fb2 value 4
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=73..83] run bossbar set rr_ctf:fb2 value 5
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=62..72] run bossbar set rr_ctf:fb2 value 6
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=50..61] run bossbar set rr_ctf:fb2 value 7
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=39..49] run bossbar set rr_ctf:fb2 value 8
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=28..38] run bossbar set rr_ctf:fb2 value 9
execute positioned 12 53 60 if entity @e[type=player,team=Yellow,tag=CarryFB2,distance=0..27] run bossbar set rr_ctf:fb2 value 10
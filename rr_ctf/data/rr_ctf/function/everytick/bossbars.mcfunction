#Yellow Flag 1
execute if entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1] run bossbar set rr_ctf:fy1 players @a[x=0,predicate=!custom:team/lobby]
execute if entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY1] run bossbar set rr_ctf:fy1 name [{score:{name:"#blue",objective:"text.accent_color"}},{selector:"@e[limit=1,x=0,type=player,tag=CarryFY1,predicate=custom:team/blue]"}," is carrying a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!"]
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=117..127] run bossbar set rr_ctf:fy1 value 1
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=106..116] run bossbar set rr_ctf:fy1 value 2
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=95..105] run bossbar set rr_ctf:fy1 value 3
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=84..94] run bossbar set rr_ctf:fy1 value 4
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=73..83] run bossbar set rr_ctf:fy1 value 5
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=62..72] run bossbar set rr_ctf:fy1 value 6
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=50..61] run bossbar set rr_ctf:fy1 value 7
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=39..49] run bossbar set rr_ctf:fy1 value 8
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=28..38] run bossbar set rr_ctf:fy1 value 9
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY1,distance=0..27] run bossbar set rr_ctf:fy1 value 10

#Yellow Flag 2
execute if entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2] run bossbar set rr_ctf:fy2 players @a[x=0,predicate=!custom:team/lobby]
execute if entity @e[x=0,type=player,predicate=custom:team/blue,tag=CarryFY2] run bossbar set rr_ctf:fy2 name [{score:{name:"#blue",objective:"text.accent_color"}},{selector:"@e[limit=1,x=0,type=player,tag=CarryFY2,predicate=custom:team/blue]"}," is carrying a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!"]
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=117..127] run bossbar set rr_ctf:fy2 value 1
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=106..116] run bossbar set rr_ctf:fy2 value 2
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=95..105] run bossbar set rr_ctf:fy2 value 3
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=84..94] run bossbar set rr_ctf:fy2 value 4
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=73..83] run bossbar set rr_ctf:fy2 value 5
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=62..72] run bossbar set rr_ctf:fy2 value 6
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=50..61] run bossbar set rr_ctf:fy2 value 7
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=39..49] run bossbar set rr_ctf:fy2 value 8
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=28..38] run bossbar set rr_ctf:fy2 value 9
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=CarryFY2,distance=0..27] run bossbar set rr_ctf:fy2 value 10

#Blue Flag 1
execute if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1] run bossbar set rr_ctf:fb1 players @a[x=0,predicate=!custom:team/lobby]
execute if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB1] run bossbar set rr_ctf:fb1 name [{score:{name:"#yellow",objective:"text.accent_color"}},{selector:"@e[limit=1,x=0,type=player,tag=CarryFB1,predicate=custom:team/yellow]"}," is carrying a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!"]
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=117..127] run bossbar set rr_ctf:fb1 value 1
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=106..116] run bossbar set rr_ctf:fb1 value 2
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=95..105] run bossbar set rr_ctf:fb1 value 3
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=84..94] run bossbar set rr_ctf:fb1 value 4
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=73..83] run bossbar set rr_ctf:fb1 value 5
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=62..72] run bossbar set rr_ctf:fb1 value 6
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=50..61] run bossbar set rr_ctf:fb1 value 7
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=39..49] run bossbar set rr_ctf:fb1 value 8
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=28..38] run bossbar set rr_ctf:fb1 value 9
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB1,distance=0..27] run bossbar set rr_ctf:fb1 value 10

#Blue Flag 2
execute if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2] run bossbar set rr_ctf:fb2 players @a[x=0,predicate=!custom:team/lobby]
execute if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=CarryFB2] run bossbar set rr_ctf:fb2 name [{score:{name:"#yellow",objective:"text.accent_color"}},{selector:"@e[limit=1,x=0,type=player,tag=CarryFB2,predicate=custom:team/yellow]"}," is carrying a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!"]
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=117..127] run bossbar set rr_ctf:fb2 value 1
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=106..116] run bossbar set rr_ctf:fb2 value 2
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=95..105] run bossbar set rr_ctf:fb2 value 3
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=84..94] run bossbar set rr_ctf:fb2 value 4
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=73..83] run bossbar set rr_ctf:fb2 value 5
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=62..72] run bossbar set rr_ctf:fb2 value 6
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=50..61] run bossbar set rr_ctf:fb2 value 7
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=39..49] run bossbar set rr_ctf:fb2 value 8
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=28..38] run bossbar set rr_ctf:fb2 value 9
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=CarryFB2,distance=0..27] run bossbar set rr_ctf:fb2 value 10
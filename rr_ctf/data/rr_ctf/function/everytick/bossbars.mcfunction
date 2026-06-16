#Yellow Flag 1
execute if entity @e[x=0,type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right] run bossbar set rr_ctf:flag/yellow_right players @a[x=0,predicate=!custom:team/lobby]
execute if entity @e[x=0,type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right] run bossbar set rr_ctf:flag/yellow_right name [{score:{name:"#blue",objective:"text.accent_color"}},{selector:"@e[limit=1,x=0,type=player,tag=carrying_flag.yellow_right,predicate=custom:team/blue]"}," is carrying a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!"]
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=117..127] run bossbar set rr_ctf:flag/yellow_right value 1
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=106..116] run bossbar set rr_ctf:flag/yellow_right value 2
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=95..105] run bossbar set rr_ctf:flag/yellow_right value 3
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=84..94] run bossbar set rr_ctf:flag/yellow_right value 4
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=73..83] run bossbar set rr_ctf:flag/yellow_right value 5
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=62..72] run bossbar set rr_ctf:flag/yellow_right value 6
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=50..61] run bossbar set rr_ctf:flag/yellow_right value 7
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=39..49] run bossbar set rr_ctf:flag/yellow_right value 8
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=28..38] run bossbar set rr_ctf:flag/yellow_right value 9
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_right,distance=0..27] run bossbar set rr_ctf:flag/yellow_right value 10

#Yellow Flag 2
execute if entity @e[x=0,type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left] run bossbar set rr_ctf:flag/yellow_left players @a[x=0,predicate=!custom:team/lobby]
execute if entity @e[x=0,type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left] run bossbar set rr_ctf:flag/yellow_left name [{score:{name:"#blue",objective:"text.accent_color"}},{selector:"@e[limit=1,x=0,type=player,tag=carrying_flag.yellow_left,predicate=custom:team/blue]"}," is carrying a ",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}}]," flag!"]
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=117..127] run bossbar set rr_ctf:flag/yellow_left value 1
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=106..116] run bossbar set rr_ctf:flag/yellow_left value 2
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=95..105] run bossbar set rr_ctf:flag/yellow_left value 3
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=84..94] run bossbar set rr_ctf:flag/yellow_left value 4
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=73..83] run bossbar set rr_ctf:flag/yellow_left value 5
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=62..72] run bossbar set rr_ctf:flag/yellow_left value 6
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=50..61] run bossbar set rr_ctf:flag/yellow_left value 7
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=39..49] run bossbar set rr_ctf:flag/yellow_left value 8
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=28..38] run bossbar set rr_ctf:flag/yellow_left value 9
execute positioned 12 53 -60 if entity @e[type=player,predicate=custom:team/blue,tag=carrying_flag.yellow_left,distance=0..27] run bossbar set rr_ctf:flag/yellow_left value 10

#Blue Flag 1
execute if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right] run bossbar set rr_ctf:flag/blue_right players @a[x=0,predicate=!custom:team/lobby]
execute if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right] run bossbar set rr_ctf:flag/blue_right name [{score:{name:"#yellow",objective:"text.accent_color"}},{selector:"@e[limit=1,x=0,type=player,tag=carrying_flag.blue_right,predicate=custom:team/yellow]"}," is carrying a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!"]
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=117..127] run bossbar set rr_ctf:flag/blue_right value 1
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=106..116] run bossbar set rr_ctf:flag/blue_right value 2
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=95..105] run bossbar set rr_ctf:flag/blue_right value 3
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=84..94] run bossbar set rr_ctf:flag/blue_right value 4
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=73..83] run bossbar set rr_ctf:flag/blue_right value 5
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=62..72] run bossbar set rr_ctf:flag/blue_right value 6
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=50..61] run bossbar set rr_ctf:flag/blue_right value 7
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=39..49] run bossbar set rr_ctf:flag/blue_right value 8
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=28..38] run bossbar set rr_ctf:flag/blue_right value 9
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_right,distance=0..27] run bossbar set rr_ctf:flag/blue_right value 10

#Blue Flag 2
execute if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left] run bossbar set rr_ctf:flag/blue_left players @a[x=0,predicate=!custom:team/lobby]
execute if entity @e[x=0,type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left] run bossbar set rr_ctf:flag/blue_left name [{score:{name:"#yellow",objective:"text.accent_color"}},{selector:"@e[limit=1,x=0,type=player,tag=carrying_flag.blue_left,predicate=custom:team/yellow]"}," is carrying a ",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}}]," flag!"]
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=117..127] run bossbar set rr_ctf:flag/blue_left value 1
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=106..116] run bossbar set rr_ctf:flag/blue_left value 2
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=95..105] run bossbar set rr_ctf:flag/blue_left value 3
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=84..94] run bossbar set rr_ctf:flag/blue_left value 4
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=73..83] run bossbar set rr_ctf:flag/blue_left value 5
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=62..72] run bossbar set rr_ctf:flag/blue_left value 6
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=50..61] run bossbar set rr_ctf:flag/blue_left value 7
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=39..49] run bossbar set rr_ctf:flag/blue_left value 8
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=28..38] run bossbar set rr_ctf:flag/blue_left value 9
execute positioned 12 53 60 if entity @e[type=player,predicate=custom:team/yellow,tag=carrying_flag.blue_left,distance=0..27] run bossbar set rr_ctf:flag/blue_left value 10
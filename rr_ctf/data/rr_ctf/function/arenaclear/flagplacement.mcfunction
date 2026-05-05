scoreboard players set $flags_captured_by_blue global 0
scoreboard players set $flags_captured_by_yellow global 0
scoreboard players set $blue ctf_sidebar 2
scoreboard players display name $blue ctf_sidebar ["",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}},":"]]
scoreboard players display numberformat $blue ctf_sidebar fixed ["",{text:"0",color:red,bold:true},{text:"/2 ",color:white},{score:{name:"#yellow",objective:"text.flag"}}]
scoreboard players set $yellow ctf_sidebar 1
scoreboard players display name $yellow ctf_sidebar ["",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}},":"]]
scoreboard players display numberformat $yellow ctf_sidebar fixed ["",{text:"0",color:red,bold:true},{text:"/2 ",color:white},{score:{name:"#blue",objective:"text.flag"}}]
scoreboard players set $flag_state.yellow_right global 30
scoreboard players set $flag_state.yellow_left global 30
scoreboard players set $flag_state.blue_right global 30
scoreboard players set $flag_state.blue_left global 30

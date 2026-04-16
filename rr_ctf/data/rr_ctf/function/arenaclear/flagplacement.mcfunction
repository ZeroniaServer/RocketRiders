scoreboard players set $flags_captured_by_blue global 0
scoreboard players set $flags_captured_by_yellow global 0
scoreboard players set Blue: FlagDisp 0
scoreboard players display name Blue: FlagDisp ["",[{score:{name:"#blue",objective:"text.main_color"}},{score:{name:"#blue",objective:"text.team_name"}},":"]]
scoreboard players display numberformat Blue: FlagDisp fixed ["",{text:"0",color:red,bold:true},{text:"/2 ",color:white},{score:{name:"#yellow",objective:"text.flag"}}]
scoreboard players set Yellow: FlagDisp 0
scoreboard players display name Yellow: FlagDisp ["",[{score:{name:"#yellow",objective:"text.main_color"}},{score:{name:"#yellow",objective:"text.team_name"}},":"]]
scoreboard players display numberformat Yellow: FlagDisp fixed ["",{text:"0",color:red,bold:true},{text:"/2 ",color:white},{score:{name:"#blue",objective:"text.flag"}}]
scoreboard players set FY1: FlagScore 30
scoreboard players set FY2: FlagScore 30
scoreboard players set FB1: FlagScore 30
scoreboard players set FB2: FlagScore 30

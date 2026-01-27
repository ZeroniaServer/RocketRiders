##Utility function -- updates parkour leaderboard with new player/time

execute at @s store result score $best_parkour_time global run scoreboard players get @s bestParkourTime
execute at @s run data modify entity @e[limit=1,x=0,type=text_display,tag=ParkourName] text set value {selector:"@a[limit=1,x=0,tag=finishedParkour]"}
data modify entity @e[limit=1,x=0,type=text_display,tag=ParkourName] transformation.scale set value [1.5,1.5,1.5]
data modify entity @e[limit=1,x=0,type=text_display,tag=ParkourName] shadow set value true

execute if entity @s[scores={parkourSecs=..9,parkourMins=..9}] at @s run data modify entity @e[limit=1,x=0,type=text_display,tag=ParkourTime] text set value [{color:"green",text:""},"0",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourMins"}},":0",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourSecs"}},".",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourDeci"}},{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourDeci2"}}]
execute if entity @s[scores={parkourSecs=10..,parkourMins=..9}] at @s run data modify entity @e[limit=1,x=0,type=text_display,tag=ParkourTime] text set value [{color:"green",text:""},"0",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourMins"}},":",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourSecs"}},".",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourDeci"}},{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourDeci2"}}]
execute if entity @s[scores={parkourSecs=..9,parkourMins=10..}] at @s run data modify entity @e[limit=1,x=0,type=text_display,tag=ParkourTime] text set value [{color:"green",text:""},{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourMins"}},":0",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourSecs"}},".",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourDeci"}},{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourDeci2"}}]
execute if entity @s[scores={parkourSecs=10..,parkourMins=10..}] at @s run data modify entity @e[limit=1,x=0,type=text_display,tag=ParkourTime] text set value [{color:"green",text:""},{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourMins"}},":",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourSecs"}},".",{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourDeci"}},{score:{name:"@a[limit=1,x=0,tag=finishedParkour]",objective:"parkourDeci2"}}]
data modify entity @e[limit=1,x=0,type=text_display,tag=ParkourTime] shadow set value true

execute at @s run loot replace entity @e[x=0,type=armor_stand,tag=ParkourPlayer,limit=1] armor.head 1 loot lobby:parkourhead

tellraw @a[x=0] ["",{selector:"@s"},{color:"dark_green",text:" now holds the Parkour Record!"}]

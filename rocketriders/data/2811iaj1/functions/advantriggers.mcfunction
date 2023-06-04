##Triggers for Tutorial advancements
advancement grant @a[x=0,predicate=2811iaj1:in_modification] only 2811iaj1:modif
advancement grant @a[x=0,predicate=2811iaj1:in_display] only 2811iaj1:disp
advancement grant @a[x=0,scores={LobbyWarp=7}] only 2811iaj1:parkour
execute as @e[x=0,type=armor_stand,tag=Selection,tag=!GameStarted] run advancement grant @a[x=0,team=Yellow] only 2811iaj1:wait
execute as @e[x=0,type=armor_stand,tag=Selection,tag=!GameStarted] run advancement grant @a[x=0,team=Blue] only 2811iaj1:wait
execute as @e[x=0,type=armor_stand,tag=Selection,tag=GameStarted] run advancement grant @a[x=0,team=Yellow] only 2811iaj1:play
execute as @e[x=0,type=armor_stand,tag=Selection,tag=GameStarted] run advancement grant @a[x=0,team=Blue] only 2811iaj1:play
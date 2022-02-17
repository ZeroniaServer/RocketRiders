##Triggers for Tutorial advancements
advancement grant @a[predicate=2811iaj1:in_modification] only 2811iaj1:modif
advancement grant @a[predicate=2811iaj1:in_display] only 2811iaj1:disp
advancement grant @a[scores={LobbyWarp=7}] only 2811iaj1:parkour
execute as @e[type=armor_stand,tag=Selection,tag=!GameStarted] run advancement grant @a[team=Yellow] only 2811iaj1:wait
execute as @e[type=armor_stand,tag=Selection,tag=!GameStarted] run advancement grant @a[team=Blue] only 2811iaj1:wait
execute as @e[type=armor_stand,tag=Selection,tag=GameStarted] run advancement grant @a[team=Yellow] only 2811iaj1:play
execute as @e[type=armor_stand,tag=Selection,tag=GameStarted] run advancement grant @a[team=Blue] only 2811iaj1:play
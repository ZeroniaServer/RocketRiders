##Triggers for Tutorial advancements
advancement grant @a[x=0,team=Lobby,predicate=2811iaj1:in_modification] only 2811iaj1:modif
advancement grant @a[x=0,team=Lobby,predicate=2811iaj1:in_display] only 2811iaj1:disp
advancement grant @a[x=0,team=Lobby,scores={LobbyWarp=7}] only 2811iaj1:parkour
execute unless predicate game:game_started run advancement grant @a[x=0,team=Yellow] only 2811iaj1:wait
execute unless predicate game:game_started run advancement grant @a[x=0,team=Blue] only 2811iaj1:wait
execute if predicate game:game_started run advancement grant @a[x=0,team=Yellow] only 2811iaj1:play
execute if predicate game:game_started run advancement grant @a[x=0,team=Blue] only 2811iaj1:play
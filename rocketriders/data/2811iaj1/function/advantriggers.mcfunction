##Triggers for Tutorial advancements
advancement grant @a[x=0,predicate=custom:team/lobby,predicate=2811iaj1:in_modification] only 2811iaj1:modif
advancement grant @a[x=0,predicate=custom:team/lobby,predicate=2811iaj1:in_display] only 2811iaj1:disp
advancement grant @a[x=0,predicate=custom:team/lobby,scores={LobbyWarp=7}] only 2811iaj1:parkour
execute if predicate game:phase/staging run advancement grant @a[x=0,predicate=custom:team/any_playing_team] only 2811iaj1:wait
execute if predicate game:phase/match run advancement grant @a[x=0,predicate=custom:team/any_playing_team] only 2811iaj1:play

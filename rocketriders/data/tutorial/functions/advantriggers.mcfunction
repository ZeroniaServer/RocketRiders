execute as @a[predicate=tutorial:in_modification] run advancement grant @s only tutorial:modif

execute as @a[predicate=tutorial:in_display] run advancement grant @s only tutorial:disp

execute as @e[tag=Selection,tag=!GameStarted] run advancement grant @a[team=!Lobby,team=!Spectator] only tutorial:wait
execute as @e[tag=Selection,tag=GameStarted] run advancement grant @a[team=!Lobby,team=!Spectator] only tutorial:play
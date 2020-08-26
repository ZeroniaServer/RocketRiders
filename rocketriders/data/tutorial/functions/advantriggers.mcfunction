##Triggers for Tutorial advancements
execute as @a at @s if predicate tutorial:in_modification run advancement grant @s only tutorial:modif
execute as @a at @s if predicate tutorial:in_display run advancement grant @s only tutorial:disp
execute as @a[scores={LobbyWarp=7}] run advancement grant @s only tutorial:parkour
execute as @e[tag=Selection,tag=!GameStarted,type=armor_stand] run advancement grant @a[team=!Lobby,team=!Spectator] only tutorial:wait
execute as @e[tag=Selection,tag=GameStarted,type=armor_stand] run advancement grant @a[team=!Lobby,team=!Spectator] only tutorial:play
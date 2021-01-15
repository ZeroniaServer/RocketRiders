##Triggers for Tutorial advancements
advancement grant @a[predicate=tutorial:in_modification] only tutorial:modif
advancement grant @a[predicate=tutorial:in_display] only tutorial:disp
advancement grant @a[scores={LobbyWarp=7}] only tutorial:parkour
execute as @e[tag=Selection,tag=!GameStarted,type=armor_stand] run advancement grant @a[team=Yellow] only tutorial:wait
execute as @e[tag=Selection,tag=!GameStarted,type=armor_stand] run advancement grant @a[team=Blue] only tutorial:wait
execute as @e[tag=Selection,tag=GameStarted,type=armor_stand] run advancement grant @a[team=Yellow] only tutorial:play
execute as @e[tag=Selection,tag=GameStarted,type=armor_stand] run advancement grant @a[team=Blue] only tutorial:play
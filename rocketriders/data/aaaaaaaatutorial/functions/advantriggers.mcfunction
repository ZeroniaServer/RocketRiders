##Triggers for Tutorial advancements
advancement grant @a[predicate=aaaaaaaatutorial:in_modification] only aaaaaaaatutorial:modif
advancement grant @a[predicate=aaaaaaaatutorial:in_display] only aaaaaaaatutorial:disp
advancement grant @a[scores={LobbyWarp=7}] only aaaaaaaatutorial:parkour
execute as @e[type=armor_stand,tag=Selection,tag=!GameStarted] run advancement grant @a[team=Yellow] only aaaaaaaatutorial:wait
execute as @e[type=armor_stand,tag=Selection,tag=!GameStarted] run advancement grant @a[team=Blue] only aaaaaaaatutorial:wait
execute as @e[type=armor_stand,tag=Selection,tag=GameStarted] run advancement grant @a[team=Yellow] only aaaaaaaatutorial:play
execute as @e[type=armor_stand,tag=Selection,tag=GameStarted] run advancement grant @a[team=Blue] only aaaaaaaatutorial:play
##Triggers for Tutorial advancements
execute as @a at @s if predicate tutorial:in_modification run advancement grant @s only tutorial:modif
execute as @a at @s if predicate tutorial:in_display run advancement grant @s only tutorial:disp
execute as @a[scores={LobbyWarp=7}] run advancement grant @s only tutorial:parkour
execute as @e[tag=Selection,tag=!GameStarted,type=armor_stand] as @a unless entity @s[team=!Yellow,team=!Blue] run advancement grant @s only tutorial:wait
execute as @e[tag=Selection,tag=GameStarted,type=armor_stand] as @a unless entity @s[team=!Yellow,team=!Blue] run advancement grant @s only tutorial:play
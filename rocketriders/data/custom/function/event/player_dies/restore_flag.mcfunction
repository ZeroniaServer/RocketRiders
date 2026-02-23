#Restore flag when carrier dies
execute if entity @s[tag=CarryFY1] run scoreboard players set FY1: FlagScore 0
execute if entity @s[tag=CarryFY2] run scoreboard players set FY2: FlagScore 0
execute if entity @s[tag=CarryFB1] run scoreboard players set FB1: FlagScore 0
execute if entity @s[tag=CarryFB2] run scoreboard players set FB2: FlagScore 0

execute if entity @s[tag=CarryFY1] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute if entity @s[tag=CarryFY1] run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute if entity @s[tag=CarryFY1] run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]

execute if entity @s[tag=CarryFY2] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute if entity @s[tag=CarryFY2] run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"gold"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]
execute if entity @s[tag=CarryFY2] run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s","color":"blue"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"yellow"},"\n"]

execute if entity @s[tag=CarryFB1] unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if entity @s[tag=CarryFB1] if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"text":"Flag Restored! ","color":"dark_red"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"red"},"\n"]
execute if entity @s[tag=CarryFB1] unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"blue"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if entity @s[tag=CarryFB1] if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"dark_red"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"red"},"\n"]
execute if entity @s[tag=CarryFB1] unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if entity @s[tag=CarryFB1] if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"red"},"\n"]

execute if entity @s[tag=CarryFB2] unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"text":"Flag Restored! ","color":"blue"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if entity @s[tag=CarryFB2] if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=!custom:team/any_playing_team] ["","\n",{"text":"Flag Restored! ","color":"dark_red"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"red"},"\n"]
execute if entity @s[tag=CarryFB2] unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"blue"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if entity @s[tag=CarryFB2] if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=custom:team/yellow] ["","\n",{"text":"⚠ ","color":"red"},{"text":"Flag Restored! ","color":"dark_red"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"red"},"\n"]
execute if entity @s[tag=CarryFB2] unless predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"dark_aqua"},"\n"]
execute if entity @s[tag=CarryFB2] if predicate game:gamemode_components/red_for_blue run tellraw @a[x=0,predicate=custom:team/blue] ["","\n",{"text":"✔ ","color":"green"},{"selector":"@s"},{"text":" died while carrying a flag so the flag has been placed back at the base.","color":"red"},"\n"]


execute if entity @s[tag=CarryFY1] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if entity @s[tag=CarryFY2] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if entity @s[tag=CarryFB1] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
execute if entity @s[tag=CarryFB2] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7

tag @s remove CarryFY1
tag @s remove CarryFY2
tag @s remove CarryFB1
tag @s remove CarryFB2
tag @s remove CarryFlag

title @s actionbar ""

scoreboard players reset @s FlagDeliver
scoreboard players reset @s FlagScore

function custom:update_armor

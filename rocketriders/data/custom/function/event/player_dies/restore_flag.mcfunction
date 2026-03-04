#Restore flag when carrier dies
execute if entity @s[tag=CarryFY1] run scoreboard players set FY1: FlagScore 0
execute if entity @s[tag=CarryFY2] run scoreboard players set FY2: FlagScore 0
execute if entity @s[tag=CarryFB1] run scoreboard players set FB1: FlagScore 0
execute if entity @s[tag=CarryFB2] run scoreboard players set FB2: FlagScore 0

execute if entity @s[tag=CarryFY1] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=CarryFY1] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{"text":"⚠ ","color":"red"},[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=CarryFY1] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{"text":"✔ ","color":"green"},{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]

execute if entity @s[tag=CarryFY2] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=CarryFY2] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{"text":"⚠ ","color":"red"},[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=CarryFY2] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{"text":"✔ ","color":"green"},{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]

execute if entity @s[tag=CarryFB1] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=CarryFB1] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{"text":"⚠ ","color":"red"},[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=CarryFB1] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{"text":"✔ ","color":"green"},{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]

execute if entity @s[tag=CarryFB2] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=CarryFB2] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{"text":"⚠ ","color":"red"},[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=CarryFB2] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{"text":"✔ ","color":"green"},{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]

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

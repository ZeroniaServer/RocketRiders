#Restore flag when carrier dies
execute if entity @s[tag=carrying_flag.blue_left] run scoreboard players set $flag_state.blue_left global 0
execute if entity @s[tag=carrying_flag.blue_left] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.blue_left] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{"text":"⚠ ","color":"red"},[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.blue_left] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{"text":"✔ ","color":"green"},{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.blue_left] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
tag @s remove carrying_flag.blue_left

execute if entity @s[tag=carrying_flag.blue_right] run scoreboard players set $flag_state.blue_right global 0
execute if entity @s[tag=carrying_flag.blue_right] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.blue_right] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{"text":"⚠ ","color":"red"},[{score:{name:"#blue",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.blue_right] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#blue",objective:"text.accent_color"}},"\n",{"text":"✔ ","color":"green"},{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.blue_right] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
tag @s remove carrying_flag.blue_right

execute if entity @s[tag=carrying_flag.yellow_left] run scoreboard players set $flag_state.yellow_left global 0
execute if entity @s[tag=carrying_flag.yellow_left] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.yellow_left] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{"text":"⚠ ","color":"red"},[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.yellow_left] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{"text":"✔ ","color":"green"},{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.yellow_left] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
tag @s remove carrying_flag.yellow_left

execute if entity @s[tag=carrying_flag.yellow_right] run scoreboard players set $flag_state.yellow_right global 0
execute if entity @s[tag=carrying_flag.yellow_right] run tellraw @a[x=0,predicate=!custom:team/any_playing_team] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.yellow_right] run tellraw @a[x=0,predicate=custom:team/blue] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{"text":"⚠ ","color":"red"},[{score:{name:"#yellow",objective:"text.main_color"}},"Flag Restored! "],{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.yellow_right] run tellraw @a[x=0,predicate=custom:team/yellow] [{score:{name:"#yellow",objective:"text.accent_color"}},"\n",{"text":"✔ ","color":"green"},{selector:"@s"}," died while carrying a flag so the flag has been placed back at the base.\n"]
execute if entity @s[tag=carrying_flag.yellow_right] as @a[x=0,predicate=!custom:team/lobby] at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.7
tag @s remove carrying_flag.yellow_right

title @s actionbar ""

function custom:player/update_armor

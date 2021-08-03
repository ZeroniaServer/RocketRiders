# Add tag
tag @e[type=armor_stand,tag=Selection] add ServerModeVoting

# Kill potentially old entities
kill @e[type=marker,tag=ServerMode]

# Summon AEC's that will store all set info.
summon marker -64 191 78 {Tags:["ServerMode","Set1","Set"],CustomName:'{"text":"1","color":"red","bold":true}'}
summon marker -64 191 78 {Tags:["ServerMode","Set2","Set"],CustomName:'{"text":"2","color":"red","bold":true}'}
summon marker -64 191 78 {Tags:["ServerMode","Set3","Set"],CustomName:'{"text":"3","color":"red","bold":true}'}

# Summon AEC's for game modes, assign 3 of them to the 3 set entities.
summon marker -64 191 78 {Tags:["ServerMode","GameMode","NormalMode"],CustomName:'"Normal Mode"'}
summon marker -64 191 78 {Tags:["ServerMode","GameMode","PowerupsMode"],CustomName:'"Powerups Mode"'}
summon marker -64 191 78 {Tags:["ServerMode","GameMode","SwapMode"],CustomName:'"Swap Mode"'}
summon marker -64 191 78 {Tags:["ServerMode","GameMode","CTFMode"],CustomName:'"Capture The Flag"'}
#> summon marker -64 191 78 {Tags:["ServerMode","GameMode","CrusadeMode"],CustomName:'"Crusade Mode"'}
tag @e[type=marker,tag=ServerMode,tag=GameMode,tag=NormalMode] add ServermodeSet1
tag @e[type=marker,tag=ServerMode,tag=GameMode,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet2
tag @e[type=marker,tag=ServerMode,tag=GameMode,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet3

execute as @e[type=marker,tag=ServermodeSet1,tag=NormalMode] run tag @e[type=marker,tag=Set1] add NormalMode
execute as @e[type=marker,tag=ServermodeSet2,tag=NormalMode] run tag @e[type=marker,tag=Set2] add NormalMode
execute as @e[type=marker,tag=ServermodeSet3,tag=NormalMode] run tag @e[type=marker,tag=Set3] add NormalMode

execute as @e[type=marker,tag=ServermodeSet1,tag=PowerupsMode] run tag @e[type=marker,tag=Set1] add PowerupsMode
execute as @e[type=marker,tag=ServermodeSet2,tag=PowerupsMode] run tag @e[type=marker,tag=Set2] add PowerupsMode
execute as @e[type=marker,tag=ServermodeSet3,tag=PowerupsMode] run tag @e[type=marker,tag=Set3] add PowerupsMode

execute as @e[type=marker,tag=ServermodeSet1,tag=SwapMode] run tag @e[type=marker,tag=Set1] add SwapMode
execute as @e[type=marker,tag=ServermodeSet2,tag=SwapMode] run tag @e[type=marker,tag=Set2] add SwapMode
execute as @e[type=marker,tag=ServermodeSet3,tag=SwapMode] run tag @e[type=marker,tag=Set3] add SwapMode

execute as @e[type=marker,tag=ServermodeSet1,tag=CTFMode] run tag @e[type=marker,tag=Set1] add CTFMode
execute as @e[type=marker,tag=ServermodeSet2,tag=CTFMode] run tag @e[type=marker,tag=Set2] add CTFMode
execute as @e[type=marker,tag=ServermodeSet3,tag=CTFMode] run tag @e[type=marker,tag=Set3] add CTFMode

#>execute as @e[type=marker,tag=ServermodeSet1,tag=CrusadeMode] run tag @e[type=marker,tag=Set1] add CrusadeMode
#>execute as @e[type=marker,tag=ServermodeSet2,tag=CrusadeMode] run tag @e[type=marker,tag=Set2] add CrusadeMode
#>execute as @e[type=marker,tag=ServermodeSet3,tag=CrusadeMode] run tag @e[type=marker,tag=Set3] add CrusadeMode

# Summon AEC's for base decos, assign 3 of them to the 3 set entities.
summon marker -64 191 78 {Tags:["ServerMode","Maps","DefaultMap"],CustomName:'"New Dawn map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","DefaultMap"],CustomName:'"New Dawn map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","SpikesMap"],CustomName:'"Spikes map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","RandomMap"],CustomName:'"Randomized map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","EmptyMap"],CustomName:'"Empty map"'}
#>summon marker -64 191 78 {Tags:["ServerMode","Maps","TheCastle"],CustomName:'"The Castle"'}
tag @e[type=marker,tag=ServerMode,tag=Maps,tag=DefaultMap,limit=1] add ServermodeSet1
execute if entity @e[tag=CrusadeMode,tag=ServermodeSet2] run tag @e[type=marker,tag=ServerMode,tag=Maps,tag=TheCastle,limit=1] add ServermodeSet2
execute if entity @e[tag=CrusadeMode,tag=ServermodeSet3] run tag @e[type=marker,tag=ServerMode,tag=Maps,tag=TheCastle,limit=1] add ServermodeSet3
execute unless entity @e[tag=TheCastle,tag=ServermodeSet2] run tag @e[type=marker,tag=ServerMode,tag=Maps,tag=!TheCastle,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3] add ServermodeSet2
execute unless entity @e[tag=TheCastle,tag=ServermodeSet3] run tag @e[type=marker,tag=ServerMode,tag=Maps,tag=!TheCastle,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3] add ServermodeSet3

# Tellraws
tellraw @a ["",{"text":"Rocket ","bold":true,"color":"blue"},{"text":"Riders","bold":true,"color":"gold"},{"text":" - ","color":"dark_gray"},{"text":"Server Mode:","color":"green","bold":true},{"text":"\n"},{"text":"Click below or use ","color":"dark_green"},{"text":"/vote ","color":"green","bold":true},{"text":"to vote for gamemodes and maps:","color":"dark_green"}]
tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"1","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"selector":"@e[type=marker,tag=ServermodeSet1]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}}]
tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"2","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"selector":"@e[type=marker,tag=ServermodeSet2]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}}]
tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"3","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"selector":"@e[type=marker,tag=ServermodeSet3]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}}]

scoreboard players enable @a VoteServerMode
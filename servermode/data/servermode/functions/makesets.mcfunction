# Add tag
tag @e[type=armor_stand,tag=Selection] add ServerModeVoting

# Kill potentially old entities
kill @e[type=marker,tag=ServerMode]

# Summon AEC's that will store all set info.
summon marker -64 191 78 {Tags:["ServerMode","Set1","Set"],CustomName:'{"text":"1","color":"red","bold":true}'}
summon marker -64 191 78 {Tags:["ServerMode","Set2","Set"],CustomName:'{"text":"2","color":"red","bold":true}'}
summon marker -64 191 78 {Tags:["ServerMode","Set3","Set"],CustomName:'{"text":"3","color":"red","bold":true}'}
summon marker -64 191 78 {Tags:["ServerMode","Set4","Set"],CustomName:'{"text":"4","color":"red","bold":true}'}

# Summon AEC's for game modes, assign 4 of them to the 4 set entities.
summon marker -64 191 78 {Tags:["ServerMode","GameMode","NormalMode"],CustomName:'"Normal Mode"'}
summon marker -64 191 78 {Tags:["ServerMode","GameMode","PowerupsMode"],CustomName:'"Powerups Mode"'}
summon marker -64 191 78 {Tags:["ServerMode","GameMode","SwapMode"],CustomName:'"Swap Mode"'}
summon marker -64 191 78 {Tags:["ServerMode","GameMode","CTFMode"],CustomName:'"Capture The Flag"'}
tag @e[type=marker,tag=ServerMode,tag=GameMode,tag=NormalMode] add ServermodeSet1
tag @e[type=marker,tag=ServerMode,tag=GameMode,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet2
tag @e[type=marker,tag=ServerMode,tag=GameMode,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet3
tag @e[type=marker,tag=ServerMode,tag=GameMode,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet4

execute as @e[type=marker,tag=ServermodeSet1,tag=NormalMode] run tag @e[type=marker,tag=Set1] add NormalMode
execute as @e[type=marker,tag=ServermodeSet2,tag=NormalMode] run tag @e[type=marker,tag=Set2] add NormalMode
execute as @e[type=marker,tag=ServermodeSet3,tag=NormalMode] run tag @e[type=marker,tag=Set3] add NormalMode
execute as @e[type=marker,tag=ServermodeSet4,tag=NormalMode] run tag @e[type=marker,tag=Set4] add NormalMode

execute as @e[type=marker,tag=ServermodeSet1,tag=PowerupsMode] run tag @e[type=marker,tag=Set1] add PowerupsMode
execute as @e[type=marker,tag=ServermodeSet2,tag=PowerupsMode] run tag @e[type=marker,tag=Set2] add PowerupsMode
execute as @e[type=marker,tag=ServermodeSet3,tag=PowerupsMode] run tag @e[type=marker,tag=Set3] add PowerupsMode
execute as @e[type=marker,tag=ServermodeSet4,tag=PowerupsMode] run tag @e[type=marker,tag=Set4] add PowerupsMode

execute as @e[type=marker,tag=ServermodeSet1,tag=SwapMode] run tag @e[type=marker,tag=Set1] add SwapMode
execute as @e[type=marker,tag=ServermodeSet2,tag=SwapMode] run tag @e[type=marker,tag=Set2] add SwapMode
execute as @e[type=marker,tag=ServermodeSet3,tag=SwapMode] run tag @e[type=marker,tag=Set3] add SwapMode
execute as @e[type=marker,tag=ServermodeSet4,tag=SwapMode] run tag @e[type=marker,tag=Set4] add SwapMode

execute as @e[type=marker,tag=ServermodeSet1,tag=CTFMode] run tag @e[type=marker,tag=Set1] add CTFMode
execute as @e[type=marker,tag=ServermodeSet2,tag=CTFMode] run tag @e[type=marker,tag=Set2] add CTFMode
execute as @e[type=marker,tag=ServermodeSet3,tag=CTFMode] run tag @e[type=marker,tag=Set3] add CTFMode
execute as @e[type=marker,tag=ServermodeSet4,tag=CTFMode] run tag @e[type=marker,tag=Set4] add CTFMode

# Summon AEC's for base decos, assign 4 of them to the 4 set entities.
summon marker -64 191 78 {Tags:["ServerMode","Maps","DefaultMap"],CustomName:'"New Dawn map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","DefaultMap"],CustomName:'"New Dawn map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","SpikesMap"],CustomName:'"Spikes map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","RandomMap"],CustomName:'"Randomized map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","EmptyMap"],CustomName:'"Empty map"'}
tag @e[type=marker,tag=ServerMode,tag=Maps,tag=DefaultMap,limit=1] add ServermodeSet1
tag @e[type=marker,tag=ServerMode,tag=Maps,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet2
tag @e[type=marker,tag=ServerMode,tag=Maps,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet3
tag @e[type=marker,tag=ServerMode,tag=Maps,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet4

# Tellraws
tellraw @a ["",{"text":"Rocket ","bold":true,"color":"blue"},{"text":"Riders","bold":true,"color":"gold"},{"text":" - ","color":"dark_gray"},{"text":"Server Mode:","color":"green","bold":true},{"text":"\n"},{"text":"Click below or use ","color":"dark_green"},{"text":"/vote ","color":"green","bold":true},{"text":"to vote for gamemodes and maps:","color":"dark_green"}]
tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"1","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"selector":"@e[type=marker,tag=ServermodeSet1]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":"\n|","bold":true,"color":"dark_gray"}]
tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"2","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"selector":"@e[type=marker,tag=ServermodeSet2]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":"\n|","bold":true,"color":"dark_gray"}]
tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"3","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"selector":"@e[type=marker,tag=ServermodeSet3]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":"\n|","bold":true,"color":"dark_gray"}]
tellraw @a ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" "},{"text":"4","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"selector":"@e[type=marker,tag=ServermodeSet4]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":"\n"}]

scoreboard players enable @a VoteServerMode
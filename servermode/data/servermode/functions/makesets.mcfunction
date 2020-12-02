# Add tag
tag @e[tag=Selection] add ServerModeVoting

# Kill potentially old entities
kill @e[tag=ServerMode]

# Summon AEC's that will store all set info.
summon area_effect_cloud -64 191 78 {Tags:["ServerMode","Set1","Set"],Duration:2000000000,CustomName:'{"text":"1","color":"red","bold":"true"}'}
summon area_effect_cloud -64 191 78 {Tags:["ServerMode","Set2","Set"],Duration:2000000000,CustomName:'{"text":"2","color":"red","bold":"true"}'}
summon area_effect_cloud -64 191 78 {Tags:["ServerMode","Set3","Set"],Duration:2000000000,CustomName:'{"text":"3","color":"red","bold":"true"}'}
summon area_effect_cloud -64 191 78 {Tags:["ServerMode","Set4","Set"],Duration:2000000000,CustomName:'{"text":"4","color":"red","bold":"true"}'}

# Summon AEC's for game modes, assign 4 of them to the 4 set entities.
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","GameMode","NormalMode"],CustomName:"\"Normal Mode\""}
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","GameMode","PowerupsMode"],CustomName:"\"Powerups Mode\""}
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","GameMode","SwapMode"],CustomName:"\"Swap Mode\""}
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","GameMode","CTFMode"],CustomName:"\"Capture The Flag\""}
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","GameMode","ChaseMode"],CustomName:"\"Chase Mode\""}
tag @e[tag=ServerMode,tag=GameMode,tag=NormalMode] add ServermodeSet1
tag @e[tag=ServerMode,tag=GameMode,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet2
tag @e[tag=ServerMode,tag=GameMode,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet3
tag @e[tag=ServerMode,tag=GameMode,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet4

execute as @e[tag=ServermodeSet1,tag=NormalMode] run tag @e[tag=Set1] add NormalMode
execute as @e[tag=ServermodeSet2,tag=NormalMode] run tag @e[tag=Set2] add NormalMode
execute as @e[tag=ServermodeSet3,tag=NormalMode] run tag @e[tag=Set3] add NormalMode
execute as @e[tag=ServermodeSet4,tag=NormalMode] run tag @e[tag=Set4] add NormalMode

execute as @e[tag=ServermodeSet1,tag=PowerupsMode] run tag @e[tag=Set1] add PowerupsMode
execute as @e[tag=ServermodeSet2,tag=PowerupsMode] run tag @e[tag=Set2] add PowerupsMode
execute as @e[tag=ServermodeSet3,tag=PowerupsMode] run tag @e[tag=Set3] add PowerupsMode
execute as @e[tag=ServermodeSet4,tag=PowerupsMode] run tag @e[tag=Set4] add PowerupsMode

execute as @e[tag=ServermodeSet1,tag=SwapMode] run tag @e[tag=Set1] add SwapMode
execute as @e[tag=ServermodeSet2,tag=SwapMode] run tag @e[tag=Set2] add SwapMode
execute as @e[tag=ServermodeSet3,tag=SwapMode] run tag @e[tag=Set3] add SwapMode
execute as @e[tag=ServermodeSet4,tag=SwapMode] run tag @e[tag=Set4] add SwapMode

execute as @e[tag=ServermodeSet1,tag=ChaseMode] run tag @e[tag=Set1] add ChaseMode
execute as @e[tag=ServermodeSet2,tag=ChaseMode] run tag @e[tag=Set2] add ChaseMode
execute as @e[tag=ServermodeSet3,tag=ChaseMode] run tag @e[tag=Set3] add ChaseMode
execute as @e[tag=ServermodeSet4,tag=ChaseMode] run tag @e[tag=Set4] add ChaseMode

execute as @e[tag=ServermodeSet1,tag=CTFMode] run tag @e[tag=Set1] add CTFMode
execute as @e[tag=ServermodeSet2,tag=CTFMode] run tag @e[tag=Set2] add CTFMode
execute as @e[tag=ServermodeSet3,tag=CTFMode] run tag @e[tag=Set3] add CTFMode
execute as @e[tag=ServermodeSet4,tag=CTFMode] run tag @e[tag=Set4] add CTFMode

# Summon AEC's for base decos, assign 4 of them to the 4 set entities.
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","Maps","DefaultMap"],CustomName:"\"New Dawn map preset (default)\""}
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","Maps","DefaultMap"],CustomName:"\"New Dawn map preset (default)\""}
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","Maps","SpikesMap"],CustomName:"\"Spikes map preset\""}
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","Maps","RandomMap"],CustomName:"\"Randomized map\""}
summon area_effect_cloud -64 191 78 {Duration:2000000000,Tags:["ServerMode","Maps","EmptyMap"],CustomName:"\"No decorations\""}
tag @e[tag=ServerMode,tag=Maps,tag=DefaultMap,limit=1] add ServermodeSet1
tag @e[tag=ServerMode,tag=Maps,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet2
tag @e[tag=ServerMode,tag=Maps,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet3
tag @e[tag=ServerMode,tag=Maps,limit=1,sort=random,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4] add ServermodeSet4

# Tellraws
tellraw @a ["",{"text":"Rocket","bold":true,"color":"blue"},{"text":"Riders","bold":true,"color":"gold"},{"text":" - ","color":"dark_gray"},{"text":"Server Mode","color":"green","bold":"true"},{"text":"\n"},{"text":"Click to vote for game modes and settings:","color":"green"}]
tellraw @a ["",{"text":"1","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"selector":"@e[tag=ServermodeSet1]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 1"}},{"text":"\n"}]
tellraw @a ["",{"text":"2","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"selector":"@e[tag=ServermodeSet2]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 2"}},{"text":"\n"}]
tellraw @a ["",{"text":"3","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"selector":"@e[tag=ServermodeSet3]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 3"}},{"text":"\n"}]
tellraw @a ["",{"text":"4","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"text":") ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}},{"selector":"@e[tag=ServermodeSet4]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger VoteServerMode set 4"}}]

scoreboard players enable @a VoteServerMode
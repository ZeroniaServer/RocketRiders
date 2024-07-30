execute unless score $NormalMode servermode matches 0.. run scoreboard players set $NormalMode servermode 0
execute unless score $PowerupsMode servermode matches 0.. run scoreboard players set $PowerupsMode servermode 0
execute unless score $SwapMode servermode matches 0.. run scoreboard players set $SwapMode servermode 0
execute unless score $CTFMode servermode matches 0.. run scoreboard players set $CTFMode servermode 0
execute unless score $CrusadeMode servermode matches 0.. run scoreboard players set $CrusadeMode servermode 0
execute unless score $GameCount servermode matches 0.. run scoreboard players set $GameCount servermode 0

# Add tag
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add ServerModeVoting

# Kill potentially old entities
kill @e[x=0,type=marker,tag=ServerMode]

# Summon AEC's that will store all set info.
summon marker -64 191 78 {Tags:["ServerMode","Set1","ServermodeSet1","Set","NormalMode"],CustomName:'"Normal Mode"'}
summon marker -64 191 78 {Tags:["ServerMode","Set2","ServermodeSet2","Set","PowerupsMode"],CustomName:'"Powerups Mode"'}
summon marker -64 191 78 {Tags:["ServerMode","Set3","ServermodeSet3","Set","SwapMode"],CustomName:'"Swap Mode"'}
summon marker -64 191 78 {Tags:["ServerMode","Set4","ServermodeSet4","Set","CTFMode"],CustomName:'"Capture The Flag"'}
summon marker -64 191 78 {Tags:["ServerMode","Set5","ServermodeSet5","Set","CrusadeMode"],CustomName:'"Crusade Mode"'}

# Something
execute store result score $SCMChance RNGscore run random value 0..999
execute if score $SMCChance RNGscore matches 69 run summon marker -64 191 78 {Tags:["ServerMode","Set6","ServermodeSet6","Set","ChaseMode"],CustomName:'"Chase Mode"'}
execute if score $SMCChance RNGscore matches 69 run summon marker -64 191 78 {Tags:["ServerMode","Maps","ServermodeSet6","RandomMap"],CustomName:'"Randomized map"'}

# Decrease vote options scores in case of low priority.
execute if score $NormalMode servermode matches 2 run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set1] VoteServerMode 1
execute if score $PowerupsMode servermode matches 2 run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set2] VoteServerMode 1
execute if score $SwapMode servermode matches 2 run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set3] VoteServerMode 1
execute if score $CTFMode servermode matches 2 run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set4] VoteServerMode 1
execute if score $CrusadeMode servermode matches 2 run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set5] VoteServerMode 1

execute if score $NormalMode servermode matches 3.. run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set1] VoteServerMode 3
execute if score $PowerupsMode servermode matches 3.. run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set2] VoteServerMode 3
execute if score $SwapMode servermode matches 3.. run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set3] VoteServerMode 3
execute if score $CTFMode servermode matches 3.. run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set4] VoteServerMode 3
execute if score $CrusadeMode servermode matches 3.. run scoreboard players remove @e[x=0,type=marker,tag=ServerMode,tag=Set5] VoteServerMode 3

# Summon AEC's for base decos, assign 3 of them to the 3 set entities.
summon marker -64 191 78 {Tags:["ServerMode","Maps","DefaultMap"],CustomName:'"New Dawn map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","SpikesMap"],CustomName:'"Spikes map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","RandomMap"],CustomName:'"Randomized map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","EmptyMap"],CustomName:'"Empty map"'}
summon marker -64 191 78 {Tags:["ServerMode","Maps","TheCastle","ServermodeSet5"],CustomName:'"The Castle"'}

tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet1
tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet2
tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet3
tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet4
tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet5

# Notify vote
execute as @a[x=0] run function servermode:notifyvote

scoreboard players enable @a[x=0] VoteServerMode
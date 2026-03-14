# Add tag
tag @e[x=0,type=armor_stand,tag=Selection,limit=1] add ServerModeVoting

# Kill potentially old entities
kill @e[x=0,type=marker,tag=ServerMode]

# Summon markers that will store all set info.
summon marker -64 191 78 {Tags:["ServerMode","Set1","ServermodeSet1","Set","NormalMode"],CustomName:["",{hover_event:{action:"show_text",value:""},insertion:"",text:"Normal Mode"}]}
summon marker -64 191 78 {Tags:["ServerMode","Set2","ServermodeSet2","Set","PowerupsMode"],CustomName:["",{hover_event:{action:"show_text",value:""},insertion:"",text:"Powerups Mode"}]}
summon marker -64 191 78 {Tags:["ServerMode","Set3","ServermodeSet3","Set","SwapMode"],CustomName:["",{hover_event:{action:"show_text",value:""},insertion:"",text:"Swap Mode"}]}
summon marker -64 191 78 {Tags:["ServerMode","Set4","ServermodeSet4","Set","CTFMode"],CustomName:["",{hover_event:{action:"show_text",value:""},insertion:"",text:"Capture The Flag"}]}
summon marker -64 191 78 {Tags:["ServerMode","Set5","ServermodeSet5","Set","CrusadeMode"],CustomName:["",{hover_event:{action:"show_text",value:""},insertion:"",text:"Crusade Mode"}]}

# Something
execute store result score $SCMChance RNGscore run random value 0..999
execute if score $SMCChance RNGscore matches 69 run summon marker -64 191 78 {Tags:["ServerMode","Set6","ServermodeSet6","Set","ChaseMode"],CustomName:["",{hover_event:{action:"show_text",value:""},insertion:"",text:"Chase Mode"}]}
execute if score $SMCChance RNGscore matches 69 run summon marker -64 191 78 {Tags:["ServerMode","Maps","ServermodeSet6","RandomMap"],CustomName:["",{hover_event:{action:"show_text",value:""},insertion:"",text:"Randomized map"}]}

# Summon markers for base decos, assign 3 of them to the 3 set entities.
summon marker -64 191 78 {Tags:["ServerMode","Maps","DefaultMap"],CustomName:"New Dawn map"}
summon marker -64 191 78 {Tags:["ServerMode","Maps","SpikesMap"],CustomName:"Spikes map"}
summon marker -64 191 78 {Tags:["ServerMode","Maps","RandomMap"],CustomName:"Randomized map"}
summon marker -64 191 78 {Tags:["ServerMode","Maps","EmptyMap"],CustomName:"Empty map"}
summon marker -64 191 78 {Tags:["ServerMode","Maps","TheCastle","ServermodeSet5"],CustomName:"The Castle"}

tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet1
tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet2
tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet3
tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet4
tag @e[x=0,tag=Maps,tag=!ServermodeSet1,tag=!ServermodeSet2,tag=!ServermodeSet3,tag=!ServermodeSet4,tag=!ServermodeSet5,tag=!ServermodeSet6,limit=1,sort=random] add ServermodeSet5

# Remove classic colors from previous round
scoreboard players reset $classic_team_colors config
function game:match_components/reset
function game:place_facade

# Notify vote
execute as @a[x=0] run function servermode:notifyvote

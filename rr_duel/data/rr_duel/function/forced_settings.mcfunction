scoreboard players set $item_pool.missile/ant match_components -1
scoreboard players set $item_pool.missile/gemini match_components -1
scoreboard players set $item_pool.missile/tomatwo match_components -1
scoreboard players set $item_pool.missile/auxiliary match_components -1
scoreboard players set $item_pool.missile/blade match_components -1
scoreboard players set $item_pool.missile/elder_guardian match_components -1
scoreboard players set $item_pool.missile/slasher match_components -1
scoreboard players set $item_pool.missile/warhead match_components -1
scoreboard players set $item_pool.missile/lifter match_components -1
scoreboard players set $item_pool.missile/thunderbolt match_components -1
scoreboard players set $item_pool.missile/hurricane match_components -1
scoreboard players set $item_pool.missile/chronullifier match_components -1
scoreboard players set $item_pool.missile/catapult match_components -1
scoreboard players set $item_pool.missile/citadel match_components -1

#Util
scoreboard players set $item_pool.arrow match_components 1
scoreboard players set $item_pool.fireball match_components 1
scoreboard players set $item_pool.cluster_fireball match_components -1
scoreboard players set $item_pool.icbm match_components -1
scoreboard players set $item_pool.shield match_components 1
scoreboard players set $item_pool.obsidian_shield match_components 1
scoreboard players set $item_pool.vortex match_components 1
scoreboard players set $item_pool.splash match_components 1

#Deactivated items
scoreboard players set $item_pool.missile/juggerbuster match_components -1
scoreboard players set $item_pool.missile/rifter match_components -1
scoreboard players set $item_pool.canopy match_components -1
scoreboard players set $item_pool.nova_rocket match_components -1

#######################################################
## The lines below make it so 12 items are selected. ##
##        Thanks to Llewv for the suggestion!        ##
#######################################################

tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"aqua",text:" Active Items:",hover_event:{action:"show_text",value:"In 1v1 Duel Mode, a set of 12 items is randomly generated for each round."}},{color:"dark_gray",italic:true,text:" (hover for info)"}]
tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"light_purple",text:" - Arrows"},{color:"gray",text:", "},{color:"light_purple",text:"Splash"},{color:"gray",text:", "},{color:"light_purple",text:"Vortex"}]

### 1 shield type.
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Shield"}],Tags:["RankedRNG","Shield","RShieldRNG","RUtilRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Obsidian Shield"}],Tags:["RankedRNG","Obshield","RShieldRNG","RUtilRNG"]}
tag @e[x=0,type=marker,tag=RShieldRNG,limit=1,sort=random] add SelRRNG

#normal shield selected
execute if entity @e[x=0,type=marker,tag=Shield,tag=SelRRNG] run scoreboard players set $item_pool.shield match_components 1
execute if entity @e[x=0,type=marker,tag=Shield,tag=SelRRNG] run scoreboard players set $item_pool.obsidian_shield match_components -1

#obshield selected
execute if entity @e[x=0,type=marker,tag=Obshield,tag=SelRRNG] run scoreboard players set $item_pool.obsidian_shield match_components 1
execute if entity @e[x=0,type=marker,tag=Obshield,tag=SelRRNG] run scoreboard players set $item_pool.shield match_components -1

### 1 projectile type (only fireballs, novas removed)
summon marker ~ ~ ~ {CustomName:["",{color:"light_purple",hover_event:{action:"show_text",value:""},insertion:"",text:"Fireball"}],Tags:["RankedRNG","Fireball","RProjecRNG","RUtilRNG"]}
tag @e[x=0,type=marker,tag=RProjecRNG,limit=1,sort=random] add SelRRNG

#fireball selected
scoreboard players set $item_pool.fireball match_components 1
scoreboard players set $item_pool.nova_rocket match_components -1

#Announce extra utils
tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"light_purple",text:" - "},{color:"light_purple",selector:"@e[x=0,type=marker,tag=SelRRNG,tag=RUtilRNG]",separator:{color:"gray",text:", "}}]

### 1 lightning type.
summon marker ~ ~ ~ {Tags:["RankedRNG","Hurricane","RLightningRNG"]}
summon marker ~ ~ ~ {Tags:["RankedRNG","Thunderbolt","RLightningRNG"]}
tag @e[x=0,type=marker,tag=RLightningRNG,limit=1,sort=random] add SelRRNG

#hurricane selected
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run scoreboard players set $item_pool.missile/hurricane match_components 1
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run scoreboard players set $item_pool.missile/thunderbolt match_components -1

#thunderbolt selected
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run scoreboard players set $item_pool.missile/thunderbolt match_components 1
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run scoreboard players set $item_pool.missile/hurricane match_components -1

### 6/10 non-lightning missiles
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"A.N.T"}],Tags:["RankedRNG","Ant","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Gemini"}],Tags:["RankedRNG","Gemini","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"TomaTwo"}],Tags:["RankedRNG","TomaTwo","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Auxiliary"}],Tags:["RankedRNG","Auxiliary","RMisRNG","RHeavyRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Blade"}],Tags:["RankedRNG","Blade","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Catapult"}],Tags:["RankedRNG","Catapult","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Slasher"}],Tags:["RankedRNG","Slasher","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Elder Guardian"}],Tags:["RankedRNG","Guard","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Lifter"}],Tags:["RankedRNG","Lifter","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Chronullifier"}],Tags:["RankedRNG","Nullifier","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"green",hover_event:{action:"show_text",value:""},insertion:"",text:"Citadel"}],Tags:["RankedRNG","Citadel","RMisRNG"]}
summon marker ~ ~ ~ {CustomName:["",{color:"red",hover_event:{action:"show_text",value:""},insertion:"",text:"Warhead"}],Tags:["RankedRNG","Warhead","RMisRNG","RHeavyRNG"]}

tag @e[x=0,type=marker,tag=RMisRNG,tag=!SelRRNG,limit=6,sort=random] add SelRRNG

execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Ant] run scoreboard players set $item_pool.missile/ant match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Gemini] run scoreboard players set $item_pool.missile/gemini match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=TomaTwo] run scoreboard players set $item_pool.missile/tomatwo match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Auxiliary] run scoreboard players set $item_pool.missile/auxiliary match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Blade] run scoreboard players set $item_pool.missile/blade match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Catapult] run scoreboard players set $item_pool.missile/catapult match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Slasher] run scoreboard players set $item_pool.missile/slasher match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Guard] run scoreboard players set $item_pool.missile/elder_guardian match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Lifter] run scoreboard players set $item_pool.missile/lifter match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Nullifier] run scoreboard players set $item_pool.missile/chronullifier match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Citadel] run scoreboard players set $item_pool.missile/citadel match_components 1
execute if entity @e[x=0,type=marker,tag=SelRRNG,tag=Warhead] run scoreboard players set $item_pool.missile/warhead match_components 1

#Announce normals
tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"green",text:" - "},{color:"green",selector:"@e[x=0,type=marker,tag=SelRRNG,tag=RMisRNG,tag=!RHeavyRNG]",separator:{color:"gray",text:", "}}]

#Announce lightning
execute if entity @e[x=0,type=marker,tag=Hurricane,tag=SelRRNG] run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"gold",text:" - Hurricane"}]
execute if entity @e[x=0,type=marker,tag=Thunderbolt,tag=SelRRNG] run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"gold",text:" - Thunderbolt"}]

#Announce heavys (if any)
execute if entity @e[limit=1,x=0,type=marker,tag=SelRRNG,tag=RMisRNG,tag=RHeavyRNG] run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"red",text:" - "},{color:"red",selector:"@e[x=0,type=marker,tag=SelRRNG,tag=RMisRNG,tag=RHeavyRNG]",separator:{color:"gray",text:", "}}]

kill @e[x=0,type=marker,tag=RankedRNG]
tellraw @a[x=0] ""

#Enable/disable heavys
execute if predicate game:item_pool/__all_heavy_missiles_disabled run scoreboard players set $config_overrides.disabled_item_category/heavy_missiles match_components 1

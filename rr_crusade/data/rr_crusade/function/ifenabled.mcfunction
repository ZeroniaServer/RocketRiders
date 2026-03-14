#management
tag @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] add enabled
execute if entity @s[tag=SignsRefreshed] run function rr_crusade:arenaclear/customizer

execute unless score @s SetGamemode = @e[x=0,type=armor_stand,tag=rr_crusade,limit=1] gamemodeID run function rr_crusade:disable

#tips
function rr_crusade:tip

# facade
particle minecraft:end_rod -89.5 201.5 73.5 0.25 0.25 0.1 0 1 force @a[x=0,predicate=!custom:in_arena,tag=!noParticles]
particle minecraft:end_rod -99.5 201.5 73.5 0.25 0.25 0.1 0 1 force @a[x=0,predicate=!custom:in_arena,tag=!noParticles]
particle minecraft:end_rod -89.5 201.5 84.5 0.25 0.25 0.1 0 1 force @a[x=0,predicate=!custom:in_arena,tag=!noParticles]
particle minecraft:end_rod -99.5 201.5 84.5 0.25 0.25 0.1 0 1 force @a[x=0,predicate=!custom:in_arena,tag=!noParticles]

execute if predicate custom:coin_flip run particle minecraft:trail{duration:100,color:0xFFFFFF,target:[-94.5,199.5,65.5]} -89.5 201.5 73.5 0.3 0.3 0.0 0 1 force @a[x=0,predicate=!custom:in_arena,tag=!noParticles]
execute if predicate custom:coin_flip run particle minecraft:trail{duration:100,color:0xFFFFFF,target:[-94.5,199.5,65.5]} -99.5 201.5 73.5 0.3 0.3 0.0 0 1 force @a[x=0,predicate=!custom:in_arena,tag=!noParticles]
execute if predicate custom:coin_flip run particle minecraft:trail{duration:100,color:0xFFFFFF,target:[-94.5,199.5,91.5]} -89.5 201.5 84.5 0.3 0.3 0.0 0 1 force @a[x=0,predicate=!custom:in_arena,tag=!noParticles]
execute if predicate custom:coin_flip run particle minecraft:trail{duration:100,color:0xFFFFFF,target:[-94.5,199.5,91.5]} -99.5 201.5 84.5 0.3 0.3 0.0 0 1 force @a[x=0,predicate=!custom:in_arena,tag=!noParticles]

#game
function rr_crusade:game/gamestart
execute if predicate game:phase/match run function rr_crusade:game/while_phase/match
execute if predicate game:phase/match/play run function rr_crusade:game/while_phase/match/play
execute if predicate game:phase/match/closing run function rr_crusade:game/while_phase/match/closing

#reset
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] run function game:edited_settings
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @a[x=0] remove informMe
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging as @a[x=0] at @s run function arenaclear:notifystart
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tellraw @a[x=0] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Game Mode: ","color":"#ca00ca"},{"text":"Crusade","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy crystals and portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Players choose Kits at their bases\n"},{"text":"- Bases are castles made of deepslate bricks\n"},{"text":"- Platform between the bases allows close combat\n"},{"text":"- Destroy both enemy crystals to unlock enemy portal\n"},{"text":"- Item Stacking is enabled\n"},{"text":"Kits:\n","color":"aqua"},{"text":"- Archers get a Shooting Saber and lightning missiles\n"},{"text":"- Knights get a Knight Sword/Shield and heavy missiles\n"},{"text":"- Mages get a Spell Wand and normal missiles"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run function modifiers:notifymodifiers
execute if entity @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] if predicate game:phase/staging run tag @s add crusadeLast
tag @e[x=0,type=marker,tag=PlacerClear,tag=Cleared] add BasePlaced

#inform late joiners of active settings
execute if predicate game:joinable_match_phase as @a[x=0,tag=informMe] run function arenaclear:notifystart
execute if predicate game:joinable_match_phase run tellraw @a[x=0,tag=informMe] ["",{"text":"|","bold":true,"color":"dark_gray"},{"text":" Game Mode: ","color":"#ca00ca"},{"text":"Crusade","color":"light_purple","hover_event":{"action":"show_text","value":["",{"text":"Objective:","color":"gold"},{"text":" Destroy enemy crystals and portals\n","color":"yellow"},{"text":"Specifics:\n","color":"dark_aqua"},{"text":"- Players choose Kits at their bases\n"},{"text":"- Bases are castles made of deepslate bricks\n"},{"text":"- Platform between the bases allows close combat\n"},{"text":"- Destroy both enemy crystals to unlock enemy portal\n"},{"text":"- Item Stacking is enabled\n"},{"text":"Kits:\n","color":"aqua"},{"text":"- Archers get a Shooting Saber and lightning missiles\n"},{"text":"- Knights get a Knight Sword/Shield and heavy missiles\n"},{"text":"- Mages get a Spell Wand and normal missiles"}]}},{"text":" (hover name for info)","italic":true,"color":"dark_gray"}]
execute if predicate game:joinable_match_phase if entity @a[x=0,tag=informMe] run function modifiers:informmodifiers
tag @a[x=0,tag=informMe] remove informMe
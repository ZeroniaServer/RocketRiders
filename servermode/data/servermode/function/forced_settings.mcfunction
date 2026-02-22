# mode-specific overrides
execute if entity @s[tag=crusadeEnabled] as @a[x=0] run function servermode:forced_settings/crusade_mode_override
execute if entity @s[tag=crusadeEnabled] run return 1
execute if entity @s[tag=swapEnabled] as @a[x=0] run function servermode:forced_settings/swap_mode_override
execute if entity @s[tag=swapEnabled] run return 1

#######################################################
## The lines below make it so 12 items are selected. ##
##        Thanks to Llewv for the suggestion!        ##
#######################################################

tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"aqua",text:" Active Items:",hover_event:{action:"show_text",value:{text:"A set of 12 items is randomly generated for each game.",color:"white"}}},{color:"dark_gray",italic:true,text:" (hover for info)"}]
execute if predicate game:item_pool/arrow run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"light_purple",text:" - Arrows"},{color:"gray",text:", "},{color:"light_purple",text:"Canopy"},{color:"gray",text:", "},{color:"light_purple",text:"Splash"},{color:"gray",text:", "},{color:"light_purple",text:"Vortex"}]
execute unless predicate game:item_pool/arrow run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"light_purple",text:" - Canopy"},{color:"gray",text:", "},{color:"light_purple",text:"Splash"},{color:"gray",text:", "},{color:"light_purple",text:"Vortex"}]

## Utilities
# Disable either Shield or Obsidian Shield (if required)
execute if predicate game:gamemode_components/cubekrowd/disable_shield_or_obsidian_shield store result score $choice var run random value 0..1
execute if predicate game:gamemode_components/cubekrowd/disable_shield_or_obsidian_shield if score $choice var matches 0 run scoreboard players set $disable_item/shield config 1
execute if predicate game:gamemode_components/cubekrowd/disable_shield_or_obsidian_shield if score $choice var matches 1 run scoreboard players set $disable_item/obsidian_shield config 1

# Disable either Nova Rocket or Fireball (if required)
execute if predicate game:gamemode_components/cubekrowd/disable_nova_rocket_or_fireball store result score $choice var run random value 0..1
execute if predicate game:gamemode_components/cubekrowd/disable_nova_rocket_or_fireball if score $choice var matches 0 run scoreboard players set $disable_item/fireball config 1
execute if predicate game:gamemode_components/cubekrowd/disable_nova_rocket_or_fireball if score $choice var matches 1 run scoreboard players set $disable_item/nova_rocket config 1

# Announce extra utils
data modify storage rocketriders:main forced_settings.utilities set value []
execute if predicate game:item_pool/shield run data modify storage rocketriders:main forced_settings.utilities append value {name:"Shield"}
execute if predicate game:item_pool/obsidian_shield run data modify storage rocketriders:main forced_settings.utilities append value {name:"Obsidian Shield"}
execute if predicate game:item_pool/fireball run data modify storage rocketriders:main forced_settings.utilities append value {name:"Fireball"}
execute if predicate game:item_pool/nova_rocket run data modify storage rocketriders:main forced_settings.utilities append value {name:"Nova Rocket"}
tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"light_purple",text:" - "},{color:"light_purple",storage:"rocketriders:main",nbt:"forced_settings.utilities[].name",interpret:true,separator:{color:"gray",text:", "}}]

## Missiles
data modify storage rocketriders:main forced_settings.missiles set value []

# Disable all but 5 non-lightning missiles (if required)
execute if predicate game:gamemode_components/cubekrowd/disable_all_but_5_non_lightning_missiles run function servermode:forced_settings/disable_all_but_5_non_lightning_missiles
execute unless predicate game:gamemode_components/cubekrowd/disable_all_but_5_non_lightning_missiles run function servermode:forced_settings/list_enabled_non_lightning_missiles

# Disable one lightning missile (if required)
execute if predicate game:gamemode_components/cubekrowd/disable_one_lightning_missile store result score $choice var run random value 0..1
execute if predicate game:gamemode_components/cubekrowd/disable_one_lightning_missile if score $choice var matches 0 run scoreboard players set $disable_item/missile/thunderbolt config 1
execute if predicate game:gamemode_components/cubekrowd/disable_one_lightning_missile if score $choice var matches 1 run scoreboard players set $disable_item/missile/hurricane config 1
execute if predicate game:item_pool/missile/thunderbolt run data modify storage rocketriders:main forced_settings.missiles append value {name:"Thunderbolt",category:"lightning"}
execute if predicate game:item_pool/missile/hurricane run data modify storage rocketriders:main forced_settings.missiles append value {name:"Hurricane",category:"lightning"}

# Announce missiles
execute if data storage rocketriders:main forced_settings.missiles[{category:"normal"}] run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"green",text:" - "},{color:"green",storage:"rocketriders:main",nbt:'forced_settings.missiles[{category:"normal"}].name',interpret:true,separator:{color:"gray",text:", "}}]
execute if data storage rocketriders:main forced_settings.missiles[{category:"lightning"}] run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"gold",text:" - "},{color:"gold",storage:"rocketriders:main",nbt:'forced_settings.missiles[{category:"lightning"}].name',interpret:true,separator:{color:"gray",text:", "}}]
execute if data storage rocketriders:main forced_settings.missiles[{category:"heavy"}] run tellraw @a[x=0] ["",{bold:true,color:"dark_gray",text:"|"},{color:"red",text:" - "},{color:"red",storage:"rocketriders:main",nbt:'forced_settings.missiles[{category:"heavy"}].name',interpret:true,separator:{color:"gray",text:", "}}]

tellraw @a[x=0] ""

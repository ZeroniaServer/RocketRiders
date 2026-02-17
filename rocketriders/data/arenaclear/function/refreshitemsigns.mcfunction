# Refreshes signs for individual items/categories (placing warped/crimson signs)

## Categories
#Normal Missiles
execute unless predicate game:game_rules/disable_item_category/normal_missiles/on run setblock -69 193 83 warped_wall_sign[facing=east]{front_text:{messages:[{color:"green",text:"Normal Damage"},{color:"green",text:"Missiles"},"",""]}}
execute if predicate game:game_rules/disable_item_category/normal_missiles/on run setblock -69 193 83 crimson_wall_sign[facing=east]{front_text:{messages:[{color:"green",text:"Normal Damage"},{color:"green",text:"Missiles"},"",""]}}
data modify block -69 193 83 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_category_template {category_id:"normal_missiles",category_name:"Normal Missiles"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item_category/normal_missiles/on run data modify block -69 193 83 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item_category/normal_missiles/on run data modify block -69 193 83 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item_category/normal_missiles/locked run data modify block -69 193 83 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -69 193 83 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Lightning Missiles
execute unless predicate game:game_rules/disable_item_category/lightning_missiles/on run setblock -69 191 83 warped_wall_sign[facing=east]{front_text:{messages:[{color:"gold",text:"Lightning Speed"},{color:"gold",text:"Missiles"},"",""]}}
execute if predicate game:game_rules/disable_item_category/lightning_missiles/on run setblock -69 191 83 crimson_wall_sign[facing=east]{front_text:{messages:[{color:"gold",text:"Lightning Speed"},{color:"gold",text:"Missiles"},"",""]}}
data modify block -69 191 83 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_category_template {category_id:"lightning_missiles",category_name:"Lightning Missiles"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item_category/lightning_missiles/on run data modify block -69 191 83 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item_category/lightning_missiles/on run data modify block -69 191 83 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item_category/lightning_missiles/locked run data modify block -69 191 83 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -69 191 83 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Heavy Missiles
execute unless predicate game:game_rules/disable_item_category/heavy_missiles/on run setblock -69 191 81 warped_wall_sign[facing=east]{front_text:{messages:[{color:"red",text:"Heavy Damage"},{color:"red",text:"Missiles"},"",""]}}
execute if predicate game:game_rules/disable_item_category/heavy_missiles/on run setblock -69 191 81 crimson_wall_sign[facing=east]{front_text:{messages:[{color:"red",text:"Heavy Damage"},{color:"red",text:"Missiles"},"",""]}}
data modify block -69 191 81 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_category_template {category_id:"heavy_missiles",category_name:"Heavy Missiles"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item_category/heavy_missiles/on run data modify block -69 191 81 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item_category/heavy_missiles/on run data modify block -69 191 81 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item_category/heavy_missiles/locked run data modify block -69 191 81 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -69 191 81 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Utilities
execute unless predicate game:game_rules/disable_item_category/utilities/on run setblock -69 193 81 warped_wall_sign[facing=east]{front_text:{messages:[{color:"light_purple",text:"Utility Items"},"","",""]}}
execute if predicate game:game_rules/disable_item_category/utilities/on run setblock -69 193 81 crimson_wall_sign[facing=east]{front_text:{messages:[{color:"light_purple",text:"Utility Items"},"","",""]}}
data modify block -69 193 81 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_category_template {category_id:"utilities",category_name:"Utilities"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item_category/utilities/on run data modify block -69 193 81 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item_category/utilities/on run data modify block -69 193 81 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item_category/utilities/locked run data modify block -69 193 81 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -69 193 81 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}


## Normal Missiles
#TomaTwo
execute unless predicate game:game_rules/disable_item/missile/tomatwo/on run setblock -67 193 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"TomaTwo"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/tomatwo/on run setblock -67 193 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"TomaTwo"},"","",""]}}
data modify block -67 193 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/tomatwo",category_id:"normal_missiles",plural_item_name:"TomaTwos"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/tomatwo/on run data modify block -67 193 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/tomatwo/on run data modify block -67 193 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/tomatwo/locked run data modify block -67 193 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -67 193 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Blade
execute unless predicate game:game_rules/disable_item/missile/blade/on run setblock -67 192 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Blade"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/blade/on run setblock -67 192 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Blade"},"","",""]}}
data modify block -67 192 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/blade",category_id:"normal_missiles",plural_item_name:"Blades"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/blade/on run data modify block -67 192 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/blade/on run data modify block -67 192 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/blade/locked run data modify block -67 192 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -67 192 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#A.N.T.
execute unless predicate game:game_rules/disable_item/missile/ant/on run setblock -66 193 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"A.N.T."},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/ant/on run setblock -66 193 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"A.N.T."},"","",""]}}
data modify block -66 193 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/ant",category_id:"normal_missiles",plural_item_name:"A.N.T.s"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/ant/on run data modify block -66 193 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/ant/on run data modify block -66 193 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/ant/locked run data modify block -66 193 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -66 193 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Catapult
execute unless predicate game:game_rules/disable_item/missile/catapult/on run setblock -66 192 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Catapult"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/catapult/on run setblock -66 192 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Catapult"},"","",""]}}
data modify block -66 192 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/catapult",category_id:"normal_missiles",plural_item_name:"Catapults"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/catapult/on run data modify block -66 192 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/catapult/on run data modify block -66 192 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/catapult/locked run data modify block -66 192 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -66 192 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Slasher
execute unless predicate game:game_rules/disable_item/missile/slasher/on run setblock -65 193 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Slasher"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/slasher/on run setblock -65 193 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Slasher"},"","",""]}}
data modify block -65 193 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/slasher",category_id:"normal_missiles",plural_item_name:"Slashers"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/slasher/on run data modify block -65 193 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/slasher/on run data modify block -65 193 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/slasher/locked run data modify block -65 193 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -65 193 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Lifter
execute unless predicate game:game_rules/disable_item/missile/lifter/on run setblock -65 192 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Lifter"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/lifter/on run setblock -65 192 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Lifter"},"","",""]}}
data modify block -65 192 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/lifter",category_id:"normal_missiles",plural_item_name:"Lifters"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/lifter/on run data modify block -65 192 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/lifter/on run data modify block -65 192 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/lifter/locked run data modify block -65 192 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -65 192 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Chronullifier
execute unless predicate game:game_rules/disable_item/missile/chronullifier/on run setblock -64 193 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Chronullifier"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/chronullifier/on run setblock -64 193 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Chronullifier"},"","",""]}}
data modify block -64 193 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/chronullifier",category_id:"normal_missiles",plural_item_name:"Chronullifiers"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/chronullifier/on run data modify block -64 193 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/chronullifier/on run data modify block -64 193 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/chronullifier/locked run data modify block -64 193 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -64 193 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Elder Guardian
execute unless predicate game:game_rules/disable_item/missile/elder_guardian/on run setblock -64 192 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Elder Guardian"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/elder_guardian/on run setblock -64 192 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Elder Guardian"},"","",""]}}
data modify block -64 192 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/elder_guardian",category_id:"normal_missiles",plural_item_name:"Elder Guardians"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/elder_guardian/on run data modify block -64 192 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/elder_guardian/on run data modify block -64 192 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/elder_guardian/locked run data modify block -64 192 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -64 192 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Citadel
execute unless predicate game:game_rules/disable_item/missile/citadel/on run setblock -63 193 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Citadel"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/citadel/on run setblock -63 193 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Citadel"},"","",""]}}
data modify block -63 193 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/citadel",category_id:"normal_missiles",plural_item_name:"Citadels"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/citadel/on run data modify block -63 193 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/citadel/on run data modify block -63 193 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/citadel/locked run data modify block -63 193 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -63 193 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Gemini
execute unless predicate game:game_rules/disable_item/missile/gemini/on run setblock -63 192 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Gemini"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/gemini/on run setblock -63 192 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"green",text:"Gemini"},"","",""]}}
data modify block -63 192 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/gemini",category_id:"normal_missiles",plural_item_name:"Geminis"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/gemini/on run data modify block -63 192 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/gemini/on run data modify block -63 192 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/gemini/locked run data modify block -63 192 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -63 192 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}


## Lightning Missiles
#Thunderbolt
execute unless predicate game:game_rules/disable_item/missile/thunderbolt/on run setblock -62 193 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"gold",text:"Thunderbolt"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/thunderbolt/on run setblock -62 193 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"gold",text:"Thunderbolt"},"","",""]}}
data modify block -62 193 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/thunderbolt",category_id:"lightning_missiles",plural_item_name:"Thunderbolts"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/thunderbolt/on run data modify block -62 193 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/thunderbolt/on run data modify block -62 193 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/thunderbolt/locked run data modify block -62 193 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -62 193 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Hurricane
execute unless predicate game:game_rules/disable_item/missile/hurricane/on run setblock -62 192 72 warped_wall_sign[facing=south]{front_text:{messages:[{color:"gold",text:"Hurricane"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/hurricane/on run setblock -62 192 72 crimson_wall_sign[facing=south]{front_text:{messages:[{color:"gold",text:"Hurricane"},"","",""]}}
data modify block -62 192 72 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/hurricane",category_id:"lightning_missiles",plural_item_name:"Hurricanes"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/hurricane/on run data modify block -62 192 72 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/hurricane/on run data modify block -62 192 72 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/hurricane/locked run data modify block -62 192 72 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -62 192 72 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}


## Heavy Missiles
#Warhead
execute unless predicate game:game_rules/disable_item/missile/warhead/on run setblock -62 193 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"red",text:"Warhead"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/warhead/on run setblock -62 193 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"red",text:"Warhead"},"","",""]}}
data modify block -62 193 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/warhead",category_id:"heavy_missiles",plural_item_name:"Warheads"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/warhead/on run data modify block -62 193 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/warhead/on run data modify block -62 193 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/warhead/locked run data modify block -62 193 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -62 193 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Juggerbuster
execute unless predicate game:game_rules/disable_item/missile/juggerbuster/on run setblock -62 192 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"red",text:"Juggerbuster"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/juggerbuster/on run setblock -62 192 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"red",text:"Juggerbuster"},"","",""]}}
data modify block -62 192 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/juggerbuster",category_id:"heavy_missiles",plural_item_name:"Juggerbusters"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/juggerbuster/on run data modify block -62 192 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/juggerbuster/on run data modify block -62 192 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/juggerbuster/locked run data modify block -62 192 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -62 192 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Rifter
execute unless predicate game:game_rules/disable_item/missile/rifter/on run setblock -63 193 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"red",text:"Rifter"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/rifter/on run setblock -63 193 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"red",text:"Rifter"},"","",""]}}
data modify block -63 193 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/rifter",category_id:"heavy_missiles",plural_item_name:"Rifters"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/rifter/on run data modify block -63 193 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/rifter/on run data modify block -63 193 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/rifter/locked run data modify block -63 193 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -63 193 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Auxiliary
execute unless predicate game:game_rules/disable_item/missile/auxiliary/on run setblock -63 192 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"red",text:"Auxiliary"},"","",""]}}
execute if predicate game:game_rules/disable_item/missile/auxiliary/on run setblock -63 192 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"red",text:"Auxiliary"},"","",""]}}
data modify block -63 192 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"missile/auxiliary",category_id:"heavy_missiles",plural_item_name:"Auxiliaries"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/missile/auxiliary/on run data modify block -63 192 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/auxiliary/on run data modify block -63 192 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/missile/auxiliary/locked run data modify block -63 192 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -63 192 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}


## Utilities
#Arrows
execute unless predicate game:game_rules/disable_item/arrow/on run setblock -64 193 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Arrows"},"","",""]}}
execute if predicate game:game_rules/disable_item/arrow/on run setblock -64 193 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Arrows"},"","",""]}}
data modify block -64 193 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"arrow",category_id:"utilities",plural_item_name:"Arrows"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/arrow/on run data modify block -64 193 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/arrow/on run data modify block -64 193 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/arrow/locked run data modify block -64 193 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -64 193 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Vortex
execute unless predicate game:gamemode_components/item_signs/replace_vortex_with_icbm unless predicate game:game_rules/disable_item/vortex/on run setblock -64 192 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Vortex"},"","",""]}}
execute unless predicate game:gamemode_components/item_signs/replace_vortex_with_icbm if predicate game:game_rules/disable_item/vortex/on run setblock -64 192 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Vortex"},"","",""]}}
execute unless predicate game:gamemode_components/item_signs/replace_vortex_with_icbm run data modify block -64 192 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"vortex",category_id:"utilities",plural_item_name:"Vortices"}'}
execute unless predicate game:gamemode_components/item_signs/replace_vortex_with_icbm unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/vortex/on run data modify block -64 192 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/item_signs/replace_vortex_with_icbm unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/vortex/on run data modify block -64 192 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/item_signs/replace_vortex_with_icbm unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/vortex/locked run data modify block -64 192 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute unless predicate game:gamemode_components/item_signs/replace_vortex_with_icbm if predicate game:gamemode_components/duel_settings_locked run data modify block -64 192 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}
execute if predicate game:gamemode_components/item_signs/replace_vortex_with_icbm unless predicate game:game_rules/disable_item/icbm/on run setblock -64 192 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"ICBM"},"","",""]}}
execute if predicate game:gamemode_components/item_signs/replace_vortex_with_icbm if predicate game:game_rules/disable_item/icbm/on run setblock -64 192 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"ICBM"},"","",""]}}
execute if predicate game:gamemode_components/item_signs/replace_vortex_with_icbm run data modify block -64 192 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"icbm",category_id:"utilities",plural_item_name:"ICBMs"}'}
execute if predicate game:gamemode_components/item_signs/replace_vortex_with_icbm unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/icbm/on run data modify block -64 192 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute if predicate game:gamemode_components/item_signs/replace_vortex_with_icbm unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/icbm/on run data modify block -64 192 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute if predicate game:gamemode_components/item_signs/replace_vortex_with_icbm unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/icbm/locked run data modify block -64 192 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/item_signs/replace_vortex_with_icbm if predicate game:gamemode_components/duel_settings_locked run data modify block -64 192 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}
execute if predicate game:gamemode_components/item_signs/replace_vortex_with_icbm if predicate game:gamemode_components/decreased_icbm_flight_duration run data modify block -64 192 84 front_text.messages[3] set value {"color":"gray","text":"Reduced Distance"}
# horrible hardcoded exception for crusade mode to lump both onto the same sign at once (but both are locked so I can get away with just doing this this)
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] run data modify block -64 192 84 front_text.messages set value [{color:"light_purple",text:"Vortex/ICBM",click_event:{action:"run_command",command:"function arenaclear:modification_room_signs/interact_with_item_sign/vortex_icbm_sign"}},{bold:true,color:"green",text:"Enabled"},{bold:true,color:"white",text:"Locked"},""]
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] if predicate game:gamemode_components/decreased_icbm_flight_duration run data modify block -64 192 84 front_text.messages[3] set value {"color":"gray","font":"minecraft:uniform","text":"Reduced ICBM Distance"}

#Obsidian Shield
execute unless predicate game:game_rules/disable_item/obsidian_shield/on run setblock -65 193 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Obsidian Shield"},"","",""]}}
execute if predicate game:game_rules/disable_item/obsidian_shield/on run setblock -65 193 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Obsidian Shield"},"","",""]}}
data modify block -65 193 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"obsidian_shield",category_id:"utilities",plural_item_name:"Obsidian Shields"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/obsidian_shield/on run data modify block -65 193 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/obsidian_shield/on run data modify block -65 193 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/obsidian_shield/locked run data modify block -65 193 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -65 193 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Splash
execute unless predicate game:game_rules/disable_item/splash/on run setblock -65 192 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Splash"},"","",""]}}
execute if predicate game:game_rules/disable_item/splash/on run setblock -65 192 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Splash"},"","",""]}}
data modify block -65 192 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"splash",category_id:"utilities",plural_item_name:"Splashes"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/splash/on run data modify block -65 192 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/splash/on run data modify block -65 192 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/splash/locked run data modify block -65 192 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -65 192 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Fireball
execute unless predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball unless predicate game:game_rules/disable_item/fireball/on run setblock -66 193 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Fireball"},"","",""]}}
execute unless predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball if predicate game:game_rules/disable_item/fireball/on run setblock -66 193 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Fireball"},"","",""]}}
execute unless predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball run data modify block -66 193 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"fireball",category_id:"utilities",plural_item_name:"Fireballs"}'}
execute unless predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/fireball/on run data modify block -66 193 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/fireball/on run data modify block -66 193 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/fireball/locked run data modify block -66 193 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute unless predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball if predicate game:gamemode_components/duel_settings_locked run data modify block -66 193 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}
execute if predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball unless predicate game:game_rules/disable_item/cluster_fireball/on run setblock -66 193 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Cluster Fireball"},"","",""]}}
execute if predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball if predicate game:game_rules/disable_item/cluster_fireball/on run setblock -66 193 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Cluster Fireball"},"","",""]}}
execute if predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball run data modify block -66 193 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"cluster_fireball",category_id:"utilities",plural_item_name:"Cluster Fireballs"}'}
execute if predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/cluster_fireball/on run data modify block -66 193 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute if predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/cluster_fireball/on run data modify block -66 193 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute if predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/cluster_fireball/locked run data modify block -66 193 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/item_signs/replace_fireball_with_cluster_fireball if predicate game:gamemode_components/duel_settings_locked run data modify block -66 193 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Canopy
execute unless predicate game:game_rules/disable_item/canopy/on run setblock -66 192 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Canopy"},"","",""]}}
execute if predicate game:game_rules/disable_item/canopy/on run setblock -66 192 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Canopy"},"","",""]}}
data modify block -66 192 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"canopy",category_id:"utilities",plural_item_name:"Canopies"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/canopy/on run data modify block -66 192 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/canopy/on run data modify block -66 192 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/canopy/locked run data modify block -66 192 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -66 192 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Nova Rocket
execute unless predicate game:game_rules/disable_item/nova_rocket/on run setblock -67 193 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Nova Rocket"},"","",""]}}
execute if predicate game:game_rules/disable_item/nova_rocket/on run setblock -67 193 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Nova Rocket"},"","",""]}}
data modify block -67 193 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"nova_rocket",category_id:"utilities",plural_item_name:"Nova Rockets"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/nova_rocket/on run data modify block -67 193 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/nova_rocket/on run data modify block -67 193 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/nova_rocket/locked run data modify block -67 193 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -67 193 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

#Shield
execute unless predicate game:game_rules/disable_item/shield/on run setblock -67 192 84 warped_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Shield"},"","",""]}}
execute if predicate game:game_rules/disable_item/shield/on run setblock -67 192 84 crimson_wall_sign[facing=north]{front_text:{messages:[{color:"light_purple",text:"Shield"},"","",""]}}
data modify block -67 192 84 front_text.messages[0].click_event set value {action:"run_command",command:'function arenaclear:modification_room_signs/interact_with_item_sign/disable_item_template {item_id:"shield",category_id:"utilities",plural_item_name:"Shields"}'}
execute unless predicate game:gamemode_components/duel_settings_locked unless predicate game:game_rules/disable_item/shield/on run data modify block -67 192 84 front_text.messages[1] set value {bold:true,color:"green",text:"Enabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/shield/on run data modify block -67 192 84 front_text.messages[1] set value {bold:true,color:"red",text:"Disabled"}
execute unless predicate game:gamemode_components/duel_settings_locked if predicate game:game_rules/disable_item/shield/locked run data modify block -67 192 84 front_text.messages[2] set value {bold:true,color:"white",text:"Locked"}
execute if predicate game:gamemode_components/duel_settings_locked run data modify block -67 192 84 front_text.messages[1] set value {"text":"Locked","color":"white","bold":true}

tag @s add SignsRefreshed
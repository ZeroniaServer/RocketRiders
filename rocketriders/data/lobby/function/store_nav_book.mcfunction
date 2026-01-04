# description
data modify storage rocketriders:navbook description set value {color:"dark_gray",text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nIn the Modification Room, you can easily customize the game with many gamemodes, modifiers, and other settings to play with."}
execute if predicate rr:server_mode/cubekrowd_voting run data modify storage rocketriders:navbook description set value {color:"dark_gray",text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nAfter each game, you can vote between several gamemodes, modifiers, and base designs to play with for the next round."}
execute if predicate rr:server_mode/cubekrowd_duels run data modify storage rocketriders:navbook description set value {color:"dark_gray",text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nIn 1v1 Duel Mode, players challenge each other to a best of three, one-on-one tournament with sets of 12 random items."}

# modroom
data modify storage rocketriders:navbook modroom set value ""
execute if predicate rr:has_modification_room run data modify storage rocketriders:navbook modroom set value ["\n",{text:"* ",color:"gray",hover_event:{action:"show_text",value:{text:"Click to teleport to the Modification Room.",italic:true}},click_event:{action:"run_command","command":"/trigger LobbyWarp set 2"}},{text:"Modification Room",color:"dark_purple",hover_event:{action:"show_text",value:{text:"Click to teleport to the Modification Room.",italic:true}},click_event:{action:"run_command","command":"/trigger LobbyWarp set 2"}}]

# parkour instructions
data modify storage rocketriders:navbook parkourtips set value ""
execute if predicate rr:has_parkour run data modify storage rocketriders:navbook parkourtips set value ["\n\n",{bold:true,text:"\N{ZERO WIDTH NON-JOINER}"},[{text:"[Parkour",color:"dark_gray",hover_event:{action:"show_text",value:{text:"Click to toggle Parkour instructions.",italic:true}},click_event:{action:"run_command",command:"/trigger toggle_parkour_instructions set 1"}},{bold:true,text:"\N{ZERO WIDTH NON-JOINER}\N{ZERO WIDTH NON-JOINER}"},"Instructions]"]]

# default spell and crusade kit settings
data modify storage rocketriders:navbook crusade_mode_settings set value ""
execute if entity @e[limit=1,x=0,type=armor_stand,tag=gamemodeAS,tag=rr_crusade] run data modify storage rocketriders:navbook crusade_mode_settings set value ["\n\n  ",{text:"[Default Spell Book]",color:"dark_gray",hover_event:{action:"show_text",value:{text:"Click to change your default Spell Book in Crusade mode.",italic:true}},click_event:{action:"run_command",command:"/trigger change_default_spell set 1"}},"\n      ",{text:"[Crusade Kit]",color:"dark_gray",hover_event:{action:"show_text",value:{text:"Click to change your starting kit in Crusade mode.",italic:true}},click_event:{action:"run_command",command:"/trigger change_crusade_kit set 1"}}]

# resolve
execute summon minecraft:item_display run function lobby:__store_nav_book__/as_entity

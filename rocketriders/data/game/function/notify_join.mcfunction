data modify storage rocketriders:main notify_join.message_ending set value " to leave the match."
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run data modify storage rocketriders:main notify_join.message_ending set value " to forfeit the match."

## CK Mode
execute if predicate rr:is_cubekrowd unless predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run return run tellraw @s [{color:"red",italic:true,text:"Use "},{bold:true,color:"blue",italic:false,text:"/leave "},{storage:"rocketriders:main",nbt:"notify_join.message_ending",interpret:true}]
execute if predicate rr:is_cubekrowd if predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run return run tellraw @s [{color:"dark_aqua",italic:true,text:"Use "},{bold:true,color:"blue",italic:false,text:"/leave "},{storage:"rocketriders:main",nbt:"notify_join.message_ending",interpret:true}]
execute if predicate rr:is_cubekrowd if predicate custom:team/yellow run return run tellraw @s [{color:"yellow",italic:true,text:"Use "},{bold:true,color:"gold",italic:false,text:"/leave "},{storage:"rocketriders:main",nbt:"notify_join.message_ending",interpret:true}]

## Normal
# Main Item Name
data modify storage rocketriders:main notify_join.item_name set value "main weapon"
execute if predicate game:gamemode_components/main_item/shooting_saber run data modify storage rocketriders:main notify_join.item_name set value {text:"Shooting Saber"}
execute if predicate game:gamemode_components/main_item/piercing_pickaxe run data modify storage rocketriders:main notify_join.item_name set value {text:"Piercing Pickaxe"}
execute if predicate game:gamemode_components/main_item/rocket_nomicon run data modify storage rocketriders:main notify_join.item_name set value {text:"",extra:[{color:"blue",text:"Rocket"},{color:"gray",text:"-"},{color:"gold",text:"nomicon"}]}
execute if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/knight run data modify storage rocketriders:main notify_join.item_name set value {text:"Knight Sword"}
execute if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer run data modify storage rocketriders:main notify_join.item_name set value {text:"Shooting Saber"}
execute if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/mage run data modify storage rocketriders:main notify_join.item_name set value {text:"Spell Wand"}
data modify storage rocketriders:main notify_join.item_name merge value {bold:true,italic:false}

# Main Item Color
execute unless predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run data modify storage rocketriders:main notify_join.item_name merge value {color:"blue"}
execute if predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run data modify storage rocketriders:main notify_join.item_name merge value {color:"dark_red"}
execute if predicate custom:team/yellow run data modify storage rocketriders:main notify_join.item_name merge value {color:"gold"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 1 run data modify storage rocketriders:main notify_join.item_name merge value {color:"blue"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 2 run data modify storage rocketriders:main notify_join.item_name merge value {color:"yellow"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 3 run data modify storage rocketriders:main notify_join.item_name merge value {color:"red"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 4 run data modify storage rocketriders:main notify_join.item_name merge value {color:"green"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 5 run data modify storage rocketriders:main notify_join.item_name merge value {color:"dark_purple"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 6 run data modify storage rocketriders:main notify_join.item_name merge value {color:"light_purple"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 7 run data modify storage rocketriders:main notify_join.item_name merge value {color:"gold"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 8 run data modify storage rocketriders:main notify_join.item_name merge value {color:"#ff5d94"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 9 run data modify storage rocketriders:main notify_join.item_name merge value {color:"#65ffd4"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 10 run data modify storage rocketriders:main notify_join.item_name merge value {color:"#d4ff95"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 11 run data modify storage rocketriders:main notify_join.item_name merge value {color:"#f9ff74"}
execute if predicate game:gamemode_components/custom_team_colors if score @s custom_team_color matches 12 run data modify storage rocketriders:main notify_join.item_name merge value {color:"#7289da"}
execute if predicate game:gamemode_components/custom_team_colors unless score @s custom_team_color matches 1..12 run data modify storage rocketriders:main notify_join.item_name merge value {color:"white"}

# Message
execute unless predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run return run tellraw @s [{color:"dark_aqua",italic:true,text:"Drop your "},{storage:"rocketriders:main",nbt:"notify_join.item_name",interpret:true},{storage:"rocketriders:main",nbt:"notify_join.message_ending",interpret:true}]
execute if predicate game:gamemode_components/red_for_blue if predicate custom:team/blue run return run tellraw @s [{color:"red",italic:true,text:"Drop your "},{storage:"rocketriders:main",nbt:"notify_join.item_name",interpret:true},{storage:"rocketriders:main",nbt:"notify_join.message_ending",interpret:true}]
execute if predicate custom:team/yellow run return run tellraw @s [{color:"yellow",italic:true,text:"Drop your "},{storage:"rocketriders:main",nbt:"notify_join.item_name",interpret:true},{storage:"rocketriders:main",nbt:"notify_join.message_ending",interpret:true}]

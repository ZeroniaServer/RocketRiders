data modify storage rocketriders:main notify_join.message_ending set value " to leave the match."
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=duelEnabled] run data modify storage rocketriders:main notify_join.message_ending set value " to forfeit the match."

## CK Mode
execute if predicate rr:is_cubekrowd run return run tellraw @s [{italic:true,score:{name:"*",objective:"text.accent_color"}},"Use ",[{score:{name:"*",objective:"text.main_color"}},{bold:true,italic:false,text:"/leave"}],{storage:"rocketriders:main",nbt:"notify_join.message_ending",interpret:true}]

## Normal
data modify storage rocketriders:main notify_join.item_name set value "main weapon"
execute if predicate game:gamemode_components/main_item/shooting_saber run data modify storage rocketriders:main notify_join.item_name set value {text:"Shooting Saber"}
execute if predicate game:gamemode_components/main_item/piercing_pickaxe run data modify storage rocketriders:main notify_join.item_name set value {text:"Piercing Pickaxe"}
execute if predicate game:gamemode_components/main_item/rocket_nomicon run data modify storage rocketriders:main notify_join.item_name set value {text:"",extra:[{color:"blue",text:"Rocket"},{color:"gray",text:"-"},{color:"gold",text:"nomicon"}]}
execute if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/knight run data modify storage rocketriders:main notify_join.item_name set value {text:"Knight Sword"}
execute if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/archer run data modify storage rocketriders:main notify_join.item_name set value {text:"Shooting Saber"}
execute if predicate game:gamemode_components/main_item/crusade_kit_dependent if predicate rr_crusade:kit/mage run data modify storage rocketriders:main notify_join.item_name set value {text:"Spell Wand"}
data modify storage rocketriders:main notify_join.item_name merge value {bold:true,italic:false}

tellraw @s [{italic:true,score:{name:"*",objective:"text.accent_color"}},"Drop your ",[{score:{name:"*",objective:"text.main_color"}},{storage:"rocketriders:main",nbt:"notify_join.item_name",interpret:true}],{storage:"rocketriders:main",nbt:"notify_join.message_ending",interpret:true}]

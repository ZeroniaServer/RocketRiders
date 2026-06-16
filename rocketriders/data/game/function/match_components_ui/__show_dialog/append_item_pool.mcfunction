data modify storage rocketriders:main match_components_ui.item_pool set value []

execute if score $item_pool.arrow match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"arrow"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.arrow match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"arrow"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.canopy match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"canopy"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.canopy match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"canopy"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.cluster_fireball match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"cluster_fireball"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.cluster_fireball match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"cluster_fireball"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.fireball match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"fireball"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.fireball match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"fireball"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.icbm match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"icbm"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.icbm match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"icbm"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/ant match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/ant"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/ant match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/ant"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/auxiliary match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/auxiliary"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/auxiliary match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/auxiliary"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/blade match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/blade"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/blade match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/blade"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/broadsword match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/broadsword"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/broadsword match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/broadsword"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/bullet match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/bullet"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/bullet match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/bullet"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/catapult match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/catapult"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/catapult match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/catapult"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/chronullifier match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/chronullifier"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/chronullifier match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/chronullifier"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/citadel match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/citadel"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/citadel match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/citadel"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/duplex match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/duplex"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/duplex match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/duplex"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/elder_guardian match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/elder_guardian"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/elder_guardian match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/elder_guardian"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/gemini match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/gemini"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/gemini match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/gemini"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/hurricane match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/hurricane"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/hurricane match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/hurricane"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/hypersonic match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/hypersonic"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/hypersonic match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/hypersonic"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/juggerbuster match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/juggerbuster"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/juggerbuster match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/juggerbuster"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/lifter match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/lifter"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/lifter match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/lifter"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/rifter match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/rifter"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/rifter match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/rifter"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/slasher match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/slasher"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/slasher match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/slasher"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/thunderbolt match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/thunderbolt"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/thunderbolt match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/thunderbolt"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/tomatwo match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/tomatwo"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/tomatwo match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/tomatwo"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.missile/warhead match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/warhead"},'"'],": ",{color:"gold",text:"false"}]
execute if score $item_pool.missile/warhead match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",['"',{color:"aqua",text:"missile/warhead"},'"'],": ",{color:"gold",text:"true"}]

execute if score $item_pool.lava_splash match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"lava_splash"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.lava_splash match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"lava_splash"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.nova_rocket match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"nova_rocket"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.nova_rocket match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"nova_rocket"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.obsidian_shield match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"obsidian_shield"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.obsidian_shield match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"obsidian_shield"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.shield match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"shield"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.shield match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"shield"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.slap_fish match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"slap_fish"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.slap_fish match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"slap_fish"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.spell_book match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"spell_book"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.spell_book match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"spell_book"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.splash match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"splash"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.splash match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"splash"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.stinging_shield match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"stinging_shield"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.stinging_shield match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"stinging_shield"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.surprise_egg match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"surprise_egg"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.surprise_egg match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"surprise_egg"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.tipped_arrow_blindness match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"tipped_arrow_blindness"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.tipped_arrow_blindness match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"tipped_arrow_blindness"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.tipped_arrow_levitation match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"tipped_arrow_levitation"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.tipped_arrow_levitation match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"tipped_arrow_levitation"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.tipped_arrow_slowness match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"tipped_arrow_slowness"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.tipped_arrow_slowness match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"tipped_arrow_slowness"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.tipped_arrow_wither match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"tipped_arrow_wither"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.tipped_arrow_wither match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"tipped_arrow_wither"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.trident match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"trident"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.trident match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"trident"},": ",{color:"gold",text:"true"}]

execute if score $item_pool.vortex match_components matches -1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"vortex"},": ",{color:"gold",text:"false"}]
execute if score $item_pool.vortex match_components matches 1 run data modify storage rocketriders:main match_components_ui.item_pool append value ["",{color:"aqua",text:"vortex"},": ",{color:"gold",text:"true"}]


data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"item_pool",label:"🔒 item_pool",width:300,options:[{id:"",display:"{}"}]}
function custom:resolve_text_component {text_component:["{",{storage:"rocketriders:main",nbt:'match_components_ui.item_pool[]',interpret:true,separator:", "},"}"],write_to:"storage rocketriders:main match_components.dialog.inputs[-1].options[].display"}

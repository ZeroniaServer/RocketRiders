data modify storage rocketriders:main match_components_ui.arena_base_materials set from storage rocketriders:match components."arena/base_materials"

execute if data storage rocketriders:main match_components_ui.arena_base_materials.blue{front:"stained_glass"} run data remove storage rocketriders:main match_components_ui.arena_base_materials.blue.front
execute if data storage rocketriders:main match_components_ui.arena_base_materials.blue{middle:"stained_glass"} run data remove storage rocketriders:main match_components_ui.arena_base_materials.blue.middle
execute if data storage rocketriders:main match_components_ui.arena_base_materials.blue{back:"stained_glass"} run data remove storage rocketriders:main match_components_ui.arena_base_materials.blue.back
execute if data storage rocketriders:main match_components_ui.arena_base_materials.blue{detail:"stained_glass"} run data remove storage rocketriders:main match_components_ui.arena_base_materials.blue.detail

execute if data storage rocketriders:main match_components_ui.arena_base_materials.yellow{front:"stained_glass"} run data remove storage rocketriders:main match_components_ui.arena_base_materials.yellow.front
execute if data storage rocketriders:main match_components_ui.arena_base_materials.yellow{middle:"stained_glass"} run data remove storage rocketriders:main match_components_ui.arena_base_materials.yellow.middle
execute if data storage rocketriders:main match_components_ui.arena_base_materials.yellow{back:"stained_glass"} run data remove storage rocketriders:main match_components_ui.arena_base_materials.yellow.back
execute if data storage rocketriders:main match_components_ui.arena_base_materials.yellow{detail:"stained_glass"} run data remove storage rocketriders:main match_components_ui.arena_base_materials.yellow.detail

data modify storage rocketriders:main match_components_ui.arena_base_materials_copy set from storage rocketriders:main match_components_ui.arena_base_materials.blue
execute store success score $different var run data modify storage rocketriders:main match_components_ui.arena_base_materials_copy set from storage rocketriders:main match_components_ui.arena_base_materials.yellow
execute if score $different var matches 0 run data modify storage rocketriders:main match_components_ui.arena_base_materials set from storage rocketriders:main match_components_ui.arena_base_materials.blue

data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__base_materials",label:"🔒 arena/base_materials",width:300,options:[{id:"",display:"{}"}]}
function custom:resolve_text_component {text_component:{storage:"rocketriders:main",nbt:'match_components_ui.arena_base_materials'},write_to:"storage rocketriders:main match_components.dialog.inputs[-1].options[].display"}

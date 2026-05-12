data modify storage rocketriders:main match_components_ui.arena_base_colors set from storage rocketriders:match components."arena/base_colors"

execute if data storage rocketriders:main match_components_ui.arena_base_colors.blue{front:"main"} run data remove storage rocketriders:main match_components_ui.arena_base_colors.blue.front
execute if data storage rocketriders:main match_components_ui.arena_base_colors.blue{middle:"accent"} run data remove storage rocketriders:main match_components_ui.arena_base_colors.blue.middle
execute if data storage rocketriders:main match_components_ui.arena_base_colors.blue{back:"white"} run data remove storage rocketriders:main match_components_ui.arena_base_colors.blue.back
execute if data storage rocketriders:main match_components_ui.arena_base_colors.blue{detail:"black"} run data remove storage rocketriders:main match_components_ui.arena_base_colors.blue.detail

execute if data storage rocketriders:main match_components_ui.arena_base_colors.yellow{front:"main"} run data remove storage rocketriders:main match_components_ui.arena_base_colors.yellow.front
execute if data storage rocketriders:main match_components_ui.arena_base_colors.yellow{middle:"accent"} run data remove storage rocketriders:main match_components_ui.arena_base_colors.yellow.middle
execute if data storage rocketriders:main match_components_ui.arena_base_colors.yellow{back:"white"} run data remove storage rocketriders:main match_components_ui.arena_base_colors.yellow.back
execute if data storage rocketriders:main match_components_ui.arena_base_colors.yellow{detail:"black"} run data remove storage rocketriders:main match_components_ui.arena_base_colors.yellow.detail

data modify storage rocketriders:main match_components_ui.arena_base_colors_copy set from storage rocketriders:main match_components_ui.arena_base_colors.blue
execute store success score $different var run data modify storage rocketriders:main match_components_ui.arena_base_colors_copy set from storage rocketriders:main match_components_ui.arena_base_colors.yellow
execute if score $different var matches 0 run data modify storage rocketriders:main match_components_ui.arena_base_colors set from storage rocketriders:main match_components_ui.arena_base_colors.blue

data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"arena__base_colors",label:"🔒 arena/base_colors",width:300,options:[{id:"",display:"{}"}]}
function custom:resolve_text_component {text_component:{storage:"rocketriders:main",nbt:'match_components_ui.arena_base_colors'},write_to:"storage rocketriders:main match_components.dialog.inputs[-1].options[].display"}

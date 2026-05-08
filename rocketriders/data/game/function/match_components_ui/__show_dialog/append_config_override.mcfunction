data modify storage rocketriders:main match_components_ui.config_override set value []

execute if score $config_override.arena_details/bottom match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/bottom"},'"'],": ",['"',{color:"green",text:"none"},'"']]
execute if score $config_override.arena_details/bottom match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/bottom"},'"'],": ",['"',{color:"green",text:"slime_pad"},'"']]
execute if score $config_override.arena_details/bottom match_components matches 2 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/bottom"},'"'],": ",['"',{color:"green",text:"spikes"},'"']]
execute if score $config_override.arena_details/bottom match_components matches 3 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/bottom"},'"'],": ",['"',{color:"green",text:"cannon"},'"']]

execute if score $config_override.arena_details/middle match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/middle"},'"'],": ",['"',{color:"green",text:"none"},'"']]
execute if score $config_override.arena_details/middle match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/middle"},'"'],": ",['"',{color:"green",text:"slime_pads"},'"']]
execute if score $config_override.arena_details/middle match_components matches 2 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/middle"},'"'],": ",['"',{color:"green",text:"spikes"},'"']]
execute if score $config_override.arena_details/middle match_components matches 3 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/middle"},'"'],": ",['"',{color:"green",text:"layered"},'"']]

execute if score $config_override.arena_details/portal match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/portal"},'"'],": ",['"',{color:"green",text:"none"},'"']]
execute if score $config_override.arena_details/portal match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/portal"},'"'],": ",['"',{color:"green",text:"glass_rim"},'"']]
execute if score $config_override.arena_details/portal match_components matches 2 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/portal"},'"'],": ",['"',{color:"green",text:"glass_cover"},'"']]
execute if score $config_override.arena_details/portal match_components matches 3 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/portal"},'"'],": ",['"',{color:"green",text:"end_stone_cover"},'"']]
execute if score $config_override.arena_details/portal match_components matches 4 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/portal"},'"'],": ",['"',{color:"green",text:"hole_in_one"},'"']]

execute if score $config_override.arena_details/top match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/top"},'"'],": ",['"',{color:"green",text:"none"},'"']]
execute if score $config_override.arena_details/top match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/top"},'"'],": ",['"',{color:"green",text:"arch"},'"']]
execute if score $config_override.arena_details/top match_components matches 2 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/top"},'"'],": ",['"',{color:"green",text:"towers"},'"']]
execute if score $config_override.arena_details/top match_components matches 3 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/top"},'"'],": ",['"',{color:"green",text:"spikes"},'"']]
execute if score $config_override.arena_details/top match_components matches 4 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/top"},'"'],": ",['"',{color:"green",text:"castle"},'"']]

execute if score $config_override.arena_details/top_sides match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/top_sides"},'"'],": ",['"',{color:"green",text:"none"},'"']]
execute if score $config_override.arena_details/top_sides match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/top_sides"},'"'],": ",['"',{color:"green",text:"platform"},'"']]
execute if score $config_override.arena_details/top_sides match_components matches 2 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/top_sides"},'"'],": ",['"',{color:"green",text:"spikes"},'"']]
execute if score $config_override.arena_details/top_sides match_components matches 3 run data modify storage rocketriders:main match_components_ui.config_override append value ["",['"',{color:"aqua",text:"arena_details/top_sides"},'"'],": ",['"',{color:"green",text:"cannons"},'"']]

execute if score $config_override.clutter_collector match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"clutter_collector"},": ",{color:"gold",text:"false"}]
execute if score $config_override.clutter_collector match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"clutter_collector"},": ",{color:"gold",text:"true"}]

execute if score $config_override.collision_control match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"collision_control"},": ",{color:"gold",text:"false"}]
execute if score $config_override.collision_control match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"collision_control"},": ",{color:"gold",text:"true"}]

execute if score $config_override.disable_cannoning match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_cannoning"},": ",{color:"gold",text:"false"}]
execute if score $config_override.disable_cannoning match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_cannoning"},": ",{color:"gold",text:"true"}]

execute if score $config_override.disable_hotbar_limit match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_hotbar_limit"},": ",{color:"gold",text:"false"}]
execute if score $config_override.disable_hotbar_limit match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_hotbar_limit"},": ",{color:"gold",text:"true"}]

execute if score $config_override.disable_overtime match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_overtime"},": ",{color:"gold",text:"false"}]
execute if score $config_override.disable_overtime match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_overtime"},": ",{color:"gold",text:"true"}]

execute if score $config_override.disable_pierce_prevention match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_pierce_prevention"},": ",{color:"gold",text:"false"}]
execute if score $config_override.disable_pierce_prevention match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_pierce_prevention"},": ",{color:"gold",text:"true"}]

execute if score $config_override.disable_team_balancing match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_team_balancing"},": ",{color:"gold",text:"false"}]
execute if score $config_override.disable_team_balancing match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"disable_team_balancing"},": ",{color:"gold",text:"true"}]

execute if score $config_override.double_portal match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"double_portal"},": ",{color:"gold",text:"false"}]
execute if score $config_override.double_portal match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"double_portal"},": ",{color:"gold",text:"true"}]

execute if score $config_override.explosive match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"explosive"},": ",{color:"gold",text:"false"}]
execute if score $config_override.explosive match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"explosive"},": ",{color:"gold",text:"true"}]

execute if score $config_override.friendly_tnt_damage match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"friendly_tnt_damage"},": ",{color:"gold",text:"false"}]
execute if score $config_override.friendly_tnt_damage match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"friendly_tnt_damage"},": ",{color:"gold",text:"true"}]

execute if score $config_override.hardcore match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"hardcore"},": ",{color:"gold",text:"false"}]
execute if score $config_override.hardcore match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"hardcore"},": ",{color:"gold",text:"true"}]

execute if score $config_override.hobbits match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"hobbits"},": ",{color:"gold",text:"false"}]
execute if score $config_override.hobbits match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"hobbits"},": ",{color:"gold",text:"true"}]

execute if score $config_override.impact_utilities match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"impact_utilities"},": ",{color:"gold",text:"false"}]
execute if score $config_override.impact_utilities match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"impact_utilities"},": ",{color:"gold",text:"true"}]

execute if score $config_override.instamine match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"instamine"},": ",{color:"gold",text:"false"}]
execute if score $config_override.instamine match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"instamine"},": ",{color:"gold",text:"true"}]

execute if score $config_override.instant_tnt match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"instant_tnt"},": ",{color:"gold",text:"false"}]
execute if score $config_override.instant_tnt match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"instant_tnt"},": ",{color:"gold",text:"true"}]

execute if score $config_override.long_arms match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"long_arms"},": ",{color:"gold",text:"false"}]
execute if score $config_override.long_arms match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"long_arms"},": ",{color:"gold",text:"true"}]

execute if score $config_override.minute_mix match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"minute_mix"},": ",{color:"gold",text:"false"}]
execute if score $config_override.minute_mix match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"minute_mix"},": ",{color:"gold",text:"true"}]

execute if score $config_override.molerat match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"molerat"},": ",{color:"gold",text:"false"}]
execute if score $config_override.molerat match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"molerat"},": ",{color:"gold",text:"true"}]

execute if score $config_override.ninja_jump match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"ninja_jump"},": ",{color:"gold",text:"false"}]
execute if score $config_override.ninja_jump match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"ninja_jump"},": ",{color:"gold",text:"true"}]

execute if score $config_override.no_fall match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"no_fall"},": ",{color:"gold",text:"false"}]
execute if score $config_override.no_fall match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"no_fall"},": ",{color:"gold",text:"true"}]

execute if score $config_override.punchable_tnt match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"punchable_tnt"},": ",{color:"gold",text:"false"}]
execute if score $config_override.punchable_tnt match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"punchable_tnt"},": ",{color:"gold",text:"true"}]

execute if score $config_override.rocket_residers match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"rocket_residers"},": ",{color:"gold",text:"false"}]
execute if score $config_override.rocket_residers match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"rocket_residers"},": ",{color:"gold",text:"true"}]

execute if predicate game:feature_flags/1_4_0_update/on if score $config_override.rotting match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"rotting"},": ",{color:"gold",text:"false"}]
execute if predicate game:feature_flags/1_4_0_update/on if score $config_override.rotting match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"rotting"},": ",{color:"gold",text:"true"}]

execute if score $config_override.snipe_portals match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"snipe_portals"},": ",{color:"gold",text:"false"}]
execute if score $config_override.snipe_portals match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"snipe_portals"},": ",{color:"gold",text:"true"}]

execute if score $config_override.sonar match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"sonar"},": ",{color:"gold",text:"false"}]
execute if score $config_override.sonar match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"sonar"},": ",{color:"gold",text:"true"}]

execute if score $config_override.spam_click match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"spam_click"},": ",{color:"gold",text:"false"}]
execute if score $config_override.spam_click match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"spam_click"},": ",{color:"gold",text:"true"}]

execute if score $config_override.special_treatment match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"special_treatment"},": ",{color:"gold",text:"false"}]
execute if score $config_override.special_treatment match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"special_treatment"},": ",{color:"gold",text:"true"}]

execute if score $config_override.splash_streams match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"splash_streams"},": ",{color:"gold",text:"false"}]
execute if score $config_override.splash_streams match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"splash_streams"},": ",{color:"gold",text:"true"}]

execute if score $config_override.tie_window_length match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"tie_window_length"},": ",{color:"gold",text:"0"}]
execute if score $config_override.tie_window_length match_components matches 1.. run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"tie_window_length"},": ",{color:"gold",text:"1"}]
execute if score $config_override.tie_window_length match_components matches 1.. store result storage rocketriders:main match_components_ui.config_override[-1][-1].text int 1 run scoreboard players get $config_override.tie_window_length match_components
execute if score $config_override.tie_window_length match_components matches 1.. run data modify storage rocketriders:main match_components_ui.config_override[-1][-1].text set string storage rocketriders:main match_components_ui.config_override[-1][-1].text

execute if score $config_override.unstable_tnt match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"unstable_tnt"},": ",{color:"gold",text:"false"}]
execute if score $config_override.unstable_tnt match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"unstable_tnt"},": ",{color:"gold",text:"true"}]

execute if score $config_override.wind_down match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"wind_down"},": ",{color:"gold",text:"false"}]
execute if score $config_override.wind_down match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"wind_down"},": ",{color:"gold",text:"true"}]

execute if predicate game:feature_flags/1_4_0_update/on if score $config_override.yes_fall match_components matches -1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"yes_fall"},": ",{color:"gold",text:"false"}]
execute if predicate game:feature_flags/1_4_0_update/on if score $config_override.yes_fall match_components matches 1 run data modify storage rocketriders:main match_components_ui.config_override append value ["",{color:"aqua",text:"yes_fall"},": ",{color:"gold",text:"true"}]


data modify storage rocketriders:main match_components.dialog.inputs append value {type:"minecraft:single_option",key:"config_override",label:"🔒 config_override",width:300,options:[{id:"",display:"{}"}]}
function custom:resolve_text_component {text_component:["{",{storage:"rocketriders:main",nbt:'match_components_ui.config_override[]',interpret:true,separator:", "},"}"],write_to:"storage rocketriders:main match_components.dialog.inputs[-1].options[].display"}

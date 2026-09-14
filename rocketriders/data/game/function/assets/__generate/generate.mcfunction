$function game:assets/__generate/types/$(asset_type) with storage rocketriders:assets remaining_assets[-1]

execute if predicate game:game_rules/show_debug_logs/on unless data storage rocketriders:assets remaining_assets[-1].name run function custom:log {message:["[assets] Generated ",{storage:"rocketriders:assets",nbt:"remaining_assets[-1].asset_type",interpret:true}]}
execute if predicate game:game_rules/show_debug_logs/on if data storage rocketriders:assets remaining_assets[-1].name run function custom:log {message:["[assets] Generated ",{storage:"rocketriders:assets",nbt:"remaining_assets[-1].asset_type",interpret:true}," (",{storage:"rocketriders:assets",nbt:"remaining_assets[-1].name",interpret:true},")"]}

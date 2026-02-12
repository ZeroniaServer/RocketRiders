execute unless score $tick global matches 1 run return fail

execute if score $thread_finished global matches 0 run function rr:thread_manager/report {thread:"entities_custom/damage_spell"}

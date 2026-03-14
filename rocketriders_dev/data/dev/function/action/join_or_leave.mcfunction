execute if predicate game:phase/staging/configuration run return run tellraw @s {color:"red",text:"Teams are not open yet."}

# Leave
execute if predicate custom:team/any_arena_team run return run trigger leave

# Join
trigger join

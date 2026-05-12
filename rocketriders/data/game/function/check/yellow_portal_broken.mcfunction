execute if predicate game:portal_type/none run return fail

# The portal must be revealed before it can register as broken
execute unless predicate game:yellow_portal_revealed run return fail

# Normal type
execute if predicate game:portal_type/normal if predicate game:modifiers/double_portal/on in minecraft:overworld unless block -9 38 74 minecraft:nether_portal unless block 13 38 74 minecraft:nether_portal run return run scoreboard players reset $yellow_single_portal match_data
execute if predicate game:portal_type/normal if predicate game:modifiers/double_portal/on run return run function game:double_portal/yellow_check
execute if predicate game:portal_type/normal in minecraft:overworld unless block -9 38 74 minecraft:nether_portal run return 1
execute if predicate game:portal_type/normal in minecraft:overworld unless block 13 38 74 minecraft:nether_portal run return 1
execute if predicate game:portal_type/normal run return fail

# Small type
execute if predicate game:portal_type/small in minecraft:overworld unless block 4 45 67 minecraft:nether_portal run return 1
execute if predicate game:portal_type/small run return fail

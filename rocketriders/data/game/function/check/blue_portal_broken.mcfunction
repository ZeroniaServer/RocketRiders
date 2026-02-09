execute if predicate game:portal_type/none run return fail

# The portal must be revealed before it can register as broken
execute unless predicate game:blue_portal_revealed run return fail

# Default type
execute if predicate game:portal_type/default if predicate game:modifiers/double_portal/on in minecraft:overworld unless block -9 38 -74 minecraft:nether_portal unless block 13 38 -74 minecraft:nether_portal run return run scoreboard players reset $blue_single_portal var
execute if predicate game:portal_type/default if predicate game:modifiers/double_portal/on run return run function game:double_portal/blue_check
execute if predicate game:portal_type/default in minecraft:overworld unless block -9 38 -74 minecraft:nether_portal run return 1
execute if predicate game:portal_type/default in minecraft:overworld unless block 13 38 -74 minecraft:nether_portal run return 1
execute if predicate game:portal_type/default run return fail

# Small type
execute if predicate game:portal_type/small in minecraft:overworld unless block 4 45 -67 minecraft:nether_portal run return 1
execute if predicate game:portal_type/small run return fail

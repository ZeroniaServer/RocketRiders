execute if predicate game:portal_type/none run return fail

# If Crusade Mode is enabled, the portal must be revealed before it can register as broken
execute if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=crusadeEnabled] unless predicate rr_crusade:yellow_portal_revealed run return fail

# Default type
execute if predicate game:portal_type/default if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=DoublePortal] unless block -9 38 74 minecraft:nether_portal unless block 13 38 74 minecraft:nether_portal run return 1
execute if predicate game:portal_type/default if entity @e[limit=1,x=0,type=armor_stand,tag=Selection,tag=DoublePortal] run return fail
execute if predicate game:portal_type/default unless block -9 38 74 minecraft:nether_portal run return 1
execute if predicate game:portal_type/default unless block 13 38 74 minecraft:nether_portal run return 1

# Small (crusade) type
execute if predicate game:portal_type/crusade unless block 4 45 67 minecraft:nether_portal run return 1
execute if predicate game:portal_type/crusade run return fail

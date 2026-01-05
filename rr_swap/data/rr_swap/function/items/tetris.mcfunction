#game customizer compatibility
execute unless predicate game:item_pool/missile/auxiliary run tag @s add givenAux
execute unless predicate game:item_pool/missile/warhead run tag @s add givenWar

execute unless predicate game:item_pool/missile/hurricane run tag @s add givenHur
execute unless predicate game:item_pool/missile/thunderbolt run tag @s add givenBolt

execute unless predicate game:item_pool/arrow run tag @s add givenArrows
execute unless predicate game:item_pool/fireball run tag @s add givenFireball
execute unless predicate game:item_pool/obsidian_shield run tag @s add givenObshield
execute unless predicate game:item_pool/shield run tag @s add givenShield
execute unless predicate game:item_pool/icbm run tag @s add givenICBM
execute if predicate game:item_pool_meta/all_utilities_disabled run tag @s add givenAllUtil

tag @s remove givenArrowsTwice
tag @s remove givenFireballTwice
tag @s remove givenShieldTwice

tag @s[tag=givenAux,tag=givenWar,tag=givenBull,tag=givenDuplex] add givenAllHeavy
tag @s[tag=givenHur,tag=givenBolt,tag=givenHyper,tag=givenBroad] add givenAllLightning
tag @s[tag=givenICBM,tag=givenShield] add givenAllDUtil
tag @s[tag=givenFireball,tag=givenObshield] add givenAllLUtil

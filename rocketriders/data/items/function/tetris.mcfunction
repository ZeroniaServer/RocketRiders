########################################
## TETRIS: The Tetris bag-like system ##
## that prevents against repeat items ##
########################################

##Game Customizer Compatibility with Tetris system
#Normal
execute unless predicate game:item_pool/missile/ant run tag @s add givenAnt
execute unless predicate game:item_pool/missile/blade run tag @s add givenBlade
execute unless predicate game:item_pool/missile/catapult run tag @s add givenCata
execute unless predicate game:item_pool/missile/citadel run tag @s add givenCita
execute unless predicate game:item_pool/missile/elder_guardian run tag @s add givenGuard
execute unless predicate game:item_pool/missile/gemini run tag @s add givenGemi
execute unless predicate game:item_pool/missile/lifter run tag @s add givenLift
execute unless predicate game:item_pool/missile/chronullifier run tag @s add givenNull
execute unless predicate game:item_pool/missile/slasher run tag @s add givenSlash
execute unless predicate game:item_pool/missile/tomatwo run tag @s add givenToma
execute if predicate game:item_pool/__all_normal_missiles_disabled run tag @s add givenAllNormal

#Heavy
execute unless predicate game:item_pool/missile/auxiliary run tag @s add givenAux
execute unless predicate game:item_pool/missile/juggerbuster run tag @s add givenJbust
execute unless predicate game:item_pool/missile/rifter run tag @s add givenRift
execute unless predicate game:item_pool/missile/warhead run tag @s add givenWar
execute if predicate game:item_pool/__all_heavy_missiles_disabled run tag @s add givenAllHeavy

#Lightning
execute unless predicate game:item_pool/missile/hurricane run tag @s add givenHur
execute unless predicate game:item_pool/missile/thunderbolt run tag @s add givenBolt
execute if predicate game:item_pool/__all_lightning_missiles_disabled run tag @s add givenAllLightning

#Utility
execute unless predicate game:item_pool/arrow run tag @s add givenArrows
execute unless predicate game:item_pool/arrow run tag @s add givenArrowsTwice
execute unless predicate game:item_pool/canopy run tag @s add givenCanopy
execute unless predicate game:item_pool/fireball run tag @s add givenFireball
execute unless predicate game:item_pool/fireball run tag @s add givenFireballTwice
execute unless predicate game:item_pool/nova_rocket run tag @s add givenNova
execute unless predicate game:item_pool/obsidian_shield run tag @s add givenObshield
execute unless predicate game:item_pool/shield run tag @s add givenShield
execute unless predicate game:item_pool/shield run tag @s add givenShieldTwice
execute unless predicate game:item_pool/splash run tag @s add givenSplash
execute unless predicate game:item_pool/vortex run tag @s add givenVortex
execute if predicate game:item_pool/__all_utilities_disabled run tag @s add givenAllUtil

##Tetris bag logic
tag @s[tag=givenAnt,tag=givenBlade,tag=givenCata,tag=givenCita,tag=givenGuard,tag=givenGemi,tag=givenLift,tag=givenNull,tag=givenSlash,tag=givenToma] add givenAllNormal
tag @s[tag=givenAux,tag=givenJbust,tag=givenRift,tag=givenWar] add givenAllHeavy
tag @s[tag=givenHur,tag=givenBolt] add givenAllLightning
tag @s[tag=givenBroad,tag=givenBull,tag=givenDuplex,tag=givenHyper] add givenAllSpecial
tag @s[tag=givenObshield,tag=givenCanopy,tag=givenSplash,tag=givenVortex,tag=givenNova,tag=givenArrowsTwice,tag=givenFireballTwice,tag=givenShieldTwice] add givenAllUtil
########################################
## TETRIS: The Tetris bag-like system ##
## that prevents against repeat items ##
########################################

##Tetris bag logic
tag @s[tag=givenAnt,tag=givenBlade,tag=givenCata,tag=givenCita,tag=givenGuard,tag=givenGemi,tag=givenLift,tag=givenNull,tag=givenSlash,tag=givenToma] add givenAllNormal
tag @s[tag=givenAux,tag=givenJbust,tag=givenRift,tag=givenWar] add givenAllHeavy
tag @s[tag=givenHur,tag=givenBolt] add givenAllLightning
tag @s[tag=givenBroad,tag=givenBull,tag=givenDuplex,tag=givenHyper] add givenAllSpecial
tag @s[tag=givenObshield,tag=givenCanopy,tag=givenSplash,tag=givenVortex,tag=givenNova,tag=givenArrowsTwice,tag=givenFireballTwice,tag=givenShieldTwice] add givenAllUtil

##Condition for Tetris bag resetting
execute if entity @s[tag=!Chaos,tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllUtil] run function items:tetrisreset
execute if entity @s[tag=Chaos,tag=givenAllNormal,tag=givenAllHeavy,tag=givenAllLightning,tag=givenAllSpecial,tag=givenAllUtil] run function items:tetrisreset
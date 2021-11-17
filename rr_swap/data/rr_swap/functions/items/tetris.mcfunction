tag @s remove givenArrowsTwice
tag @s remove givenFireballTwice
tag @s remove givenShieldTwice

tag @s[tag=givenAux,tag=givenWar,tag=givenBull,tag=givenDuplex] add givenAllHeavy
tag @s[tag=givenHur,tag=givenBolt,tag=givenHyper,tag=givenBroad] add givenAllLightning
tag @s[tag=givenICBM,tag=givenShield] add givenAllDUtil
tag @s[tag=givenFireball,tag=givenObshield] add givenAllLUtil

execute if entity @s[tag=givenAllHeavy,tag=givenAllDUtil] run function rr_swap:items/tetrisreset
execute if entity @s[tag=givenAllLightning,tag=givenAllLUtil] run function rr_swap:items/tetrisreset
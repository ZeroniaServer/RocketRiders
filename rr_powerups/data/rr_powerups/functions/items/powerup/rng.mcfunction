execute if entity @s[tag=!givenBull] run summon marker 0 0 0 {Tags:["rngBull","rng2"]}
execute if entity @s[tag=!givenElytra] run summon marker 0 0 0 {Tags:["rngElytra","rng2"]}
execute if entity @s[tag=!givenHyper] run summon marker 0 0 0 {Tags:["rngHyper","rng2"]}
execute if entity @s[tag=!givenInfinity] run summon marker 0 0 0 {Tags:["rngInfinity","rng2"]}
execute if entity @s[tag=!givenLavaSplash] run summon marker 0 0 0 {Tags:["rngLavaSplash","rng2"]}
execute if entity @s[tag=!givenFish] run summon marker 0 0 0 {Tags:["rngSlapFish","rng2"]}
execute if entity @s[tag=!givenTotem] run summon marker 0 0 0 {Tags:["rngTotem","rng2"]}
execute if entity @s[tag=!givenTrident] run summon marker 0 0 0 {Tags:["rngTrident","rng2"]}
execute if entity @s[tag=!givenBee] run summon marker 0 0 0 {Tags:["rngBeeShield","rng2"]}
execute if entity @s[tag=!givenDuplex] run summon marker 0 0 0 {Tags:["rngDuplex","rng2"]}
execute if entity @s[tag=!givenBroad] run summon marker 0 0 0 {Tags:["rngBroad","rng2"]}
tag @e[tag=rng2,sort=random,limit=1,type=marker] add rngSelected
execute as @e[tag=rngSelected,tag=rngBull,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function items:missile/special/givebull
execute as @e[tag=rngSelected,tag=rngBull,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function items:missile/special/givebull
execute as @e[tag=rngSelected,tag=rngElytra,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/powerup/giveelytra
execute as @e[tag=rngSelected,tag=rngElytra,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/powerup/giveelytra
execute as @e[tag=rngSelected,tag=rngHyper,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function items:missile/special/givehyper
execute as @e[tag=rngSelected,tag=rngHyper,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function items:missile/special/givehyper
execute as @e[tag=rngSelected,tag=rngInfinity,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/powerup/giveinfinity
execute as @e[tag=rngSelected,tag=rngInfinity,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/powerup/giveinfinity
execute as @e[tag=rngSelected,tag=rngLavaSplash,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/powerup/givelavasplash
execute as @e[tag=rngSelected,tag=rngLavaSplash,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/powerup/givelavasplash
execute as @e[tag=rngSelected,tag=rngSlapFish,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/powerup/giveslapfish
execute as @e[tag=rngSelected,tag=rngSlapFish,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/powerup/giveslapfish
execute as @e[tag=rngSelected,tag=rngTotem,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/powerup/givetotem
execute as @e[tag=rngSelected,tag=rngTotem,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/powerup/givetotem
execute as @e[tag=rngSelected,tag=rngTrident,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/powerup/givetrident
execute as @e[tag=rngSelected,tag=rngTrident,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/powerup/givetrident
execute as @e[tag=rngSelected,tag=rngBeeShield,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function rr_powerups:items/powerup/givebeeshield
execute as @e[tag=rngSelected,tag=rngBeeShield,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function rr_powerups:items/powerup/givebeeshield
execute as @e[tag=rngSelected,tag=rngDuplex,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function items:missile/special/giveduplex
execute as @e[tag=rngSelected,tag=rngDuplex,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function items:missile/special/giveduplex
execute as @e[tag=rngSelected,tag=rngBroad,type=marker] as @e[scores={capturePoint=1},type=marker] as @a[team=Blue] run function items:missile/special/givebroad
execute as @e[tag=rngSelected,tag=rngBroad,type=marker] as @e[scores={capturePoint=2},type=marker] as @a[team=Yellow] run function items:missile/special/givebroad

#item announcements
execute as @e[tag=rngSelected,tag=rngBull,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Bullet","color":"blue","italic":true}]
execute as @e[tag=rngSelected,tag=rngBull,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Bullet","color":"gold","italic":true}]
execute as @e[tag=rngSelected,tag=rngElytra,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Elytra","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngElytra,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Elytra","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngHyper,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Hypersonic","color":"blue","italic":true}]
execute as @e[tag=rngSelected,tag=rngHyper,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Hypersonic","color":"gold","italic":true}]
execute as @e[tag=rngSelected,tag=rngInfinity,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Infinity Sabers","color":"dark_purple","bold":true,"italic":true},{"text":" (Expires in 30 seconds)","color":"red","italic":true,"bold":false}]
execute as @e[tag=rngSelected,tag=rngInfinity,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Infinity Sabers","color":"dark_purple","bold":true,"italic":true},{"text":" (Expires in 30 seconds)","color":"red","italic":true,"bold":false}]
execute as @e[tag=rngSelected,tag=rngLavaSplash,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Lava Splash","color":"blue","italic":true}]
execute as @e[tag=rngSelected,tag=rngLavaSplash,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Lava Splash","color":"gold","italic":true}]
execute as @e[tag=rngSelected,tag=rngSlapFish,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Slap Fish","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngSlapFish,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Slap Fish","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngTotem,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Totem of Undying","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngTotem,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Totem of Undying","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngTrident,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"Trident","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngTrident,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"Trident","color":"dark_purple","bold":true,"italic":true}]
execute as @e[tag=rngSelected,tag=rngBeeShield,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Stinging Shield","color":"blue","italic":true}]
execute as @e[tag=rngSelected,tag=rngBeeShield,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Utility] ","color":"dark_purple","bold":true,"italic":true},{"text":"Stinging Shield","color":"gold","italic":true}]
execute as @e[tag=rngSelected,tag=rngDuplex,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Duplex","color":"blue","italic":true}]
execute as @e[tag=rngSelected,tag=rngDuplex,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Duplex","color":"gold","italic":true}]
execute as @e[tag=rngSelected,tag=rngBroad,type=marker] as @e[scores={capturePoint=1},type=marker] run tellraw @a[team=!Lobby] [{"text":"Blue ","color":"blue","bold":true},{"text":"received: ","color":"aqua","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Broadsword","color":"blue","italic":true}]
execute as @e[tag=rngSelected,tag=rngBroad,type=marker] as @e[scores={capturePoint=2},type=marker] run tellraw @a[team=!Lobby] [{"text":"Yellow ","color":"gold","bold":true},{"text":"received: ","color":"yellow","bold":false},{"text":"[Special] ","color":"dark_purple","bold":true,"italic":true},{"text":"Broadsword","color":"gold","italic":true}]

#hotbar full exceptions
execute if entity @e[tag=rngSelected,tag=rngInfinity,type=marker] run tag @s add noHotbarWarn
execute if entity @e[tag=rngSelected,tag=rngInfinity,type=marker] run function rr_powerups:everytick/saberfix
execute if entity @e[tag=rngSelected,tag=rngElytra,type=marker] run tag @s add noHotbarWarn

kill @e[tag=rng2,type=marker]
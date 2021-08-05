kill @e[type=marker,tag=crusadeRNG]
summon marker ~ ~ ~ {Tags:["CrusadeEntity","crusadeRNG","KnightRNG"]}
summon marker ~ ~ ~ {Tags:["CrusadeEntity","crusadeRNG","ArcherRNG"]}
summon marker ~ ~ ~ {Tags:["CrusadeEntity","crusadeRNG","MageRNG"]}

scoreboard players set @e[type=marker,tag=crusadeRNG] RNGmax 8
execute as @e[type=marker,tag=crusadeRNG] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=crusadeRNG] store result score @s RNGscore run scoreboard players operation @s RNGscore %= @s RNGmax

#Knight RNG
execute as @e[type=marker,tag=KnightRNG,scores={RNGscore=0}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] run function items:missile/normal/givecitadel
execute as @e[type=marker,tag=KnightRNG,scores={RNGscore=1}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] run function items:missile/heavy/givejbuster
execute as @e[type=marker,tag=KnightRNG,scores={RNGscore=2}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] run function items:missile/heavy/givewar
execute as @e[type=marker,tag=KnightRNG,scores={RNGscore=3}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] run function items:missile/heavy/giveaux
execute as @e[type=marker,tag=KnightRNG,scores={RNGscore=4}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] run function items:missile/heavy/giverift
execute as @e[type=marker,tag=KnightRNG,scores={RNGscore=5}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] run function items:util/giveshield
execute as @e[type=marker,tag=KnightRNG,scores={RNGscore=6}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] run function items:util/giveobshield
execute as @e[type=marker,tag=KnightRNG,scores={RNGscore=7}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=1}] run function rr_crusade:items/util/giveicbm

#Archer RNG
execute as @e[type=marker,tag=ArcherRNG,scores={RNGscore=0}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function items:missile/normal/givegemi
execute as @e[type=marker,tag=ArcherRNG,scores={RNGscore=1}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function items:missile/normal/giveslash
execute as @e[type=marker,tag=ArcherRNG,scores={RNGscore=2}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function items:missile/lightning/givethun
execute as @e[type=marker,tag=ArcherRNG,scores={RNGscore=3}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function items:missile/lightning/givehur
execute as @e[type=marker,tag=ArcherRNG,scores={RNGscore=4}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function items:missile/special/givebroad
execute as @e[type=marker,tag=ArcherRNG,scores={RNGscore=5}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function items:util/givearrows
execute as @e[type=marker,tag=ArcherRNG,scores={RNGscore=6}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function items:util/givecanopy
execute as @e[type=marker,tag=ArcherRNG,scores={RNGscore=7}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=2}] run function items:util/givesplash

#Mage RNG
execute as @e[type=marker,tag=MageRNG,scores={RNGscore=0}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] run function items:missile/normal/giveant
execute as @e[type=marker,tag=MageRNG,scores={RNGscore=1}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] run function items:missile/normal/givetoma
execute as @e[type=marker,tag=MageRNG,scores={RNGscore=2}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] run function items:missile/normal/givecata
execute as @e[type=marker,tag=MageRNG,scores={RNGscore=3}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] run function items:missile/normal/givelift
execute as @e[type=marker,tag=MageRNG,scores={RNGscore=4}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] run function items:missile/normal/givenull
execute as @e[type=marker,tag=MageRNG,scores={RNGscore=5}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] run function items:util/givevortex
execute as @e[type=marker,tag=MageRNG,scores={RNGscore=6}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] run function items:util/givenova
execute as @e[type=marker,tag=MageRNG,scores={RNGscore=7}] as @a[team=!Lobby,team=!Spectator,team=!Developer,scores={crusadekit=3}] run function items:util/givefireball
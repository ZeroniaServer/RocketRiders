tag @s add missile

execute if entity @a[limit=1,tag=placer,predicate=!custom:team/yellow] run tag @s add bluemissile
execute if entity @a[limit=1,tag=placer,predicate=custom:team/yellow] run tag @s add yellowmissile

execute if data storage rocketriders:main spawn_egg{missile:"ant"} run scoreboard players add @a[limit=1,tag=placer] AntsSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"ant"} run tag @s[tag=bluemissile] add BlueAnt
execute if data storage rocketriders:main spawn_egg{missile:"ant"} run tag @s[tag=yellowmissile] add YellowAnt

execute if data storage rocketriders:main spawn_egg{missile:"auxiliary"} run scoreboard players add @a[limit=1,tag=placer] AuxSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"auxiliary"} run tag @s[tag=bluemissile] add BlueAux
execute if data storage rocketriders:main spawn_egg{missile:"auxiliary"} run tag @s[tag=yellowmissile] add YellowAux

execute if data storage rocketriders:main spawn_egg{missile:"blade"} run scoreboard players add @a[limit=1,tag=placer] BladeSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"blade"} run tag @s[tag=bluemissile] add BlueBlade
execute if data storage rocketriders:main spawn_egg{missile:"blade"} run tag @s[tag=yellowmissile] add YellowBlade

execute if data storage rocketriders:main spawn_egg{missile:"bullet"} run scoreboard players add @a[limit=1,tag=placer] BulletSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"bullet"} run tag @s[tag=bluemissile] add BlueBull
execute if data storage rocketriders:main spawn_egg{missile:"bullet"} run tag @s[tag=yellowmissile] add YellowBull

execute if data storage rocketriders:main spawn_egg{missile:"broadsword"} run scoreboard players add @a[limit=1,tag=placer] BroadSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"broadsword"} run tag @s[tag=bluemissile] add BlueBroad
execute if data storage rocketriders:main spawn_egg{missile:"broadsword"} run tag @s[tag=yellowmissile] add YellowBroad

execute if data storage rocketriders:main spawn_egg{missile:"catapult"} run scoreboard players add @a[limit=1,tag=placer] CataSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"catapult"} run tag @s[tag=bluemissile] add BlueCata
execute if data storage rocketriders:main spawn_egg{missile:"catapult"} run tag @s[tag=yellowmissile] add YellowCata

execute if data storage rocketriders:main spawn_egg{missile:"chronullifier"} run scoreboard players add @a[limit=1,tag=placer] NullSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"chronullifier"} run tag @s[tag=bluemissile] add BlueNull
execute if data storage rocketriders:main spawn_egg{missile:"chronullifier"} run tag @s[tag=yellowmissile] add YellowNull

execute if data storage rocketriders:main spawn_egg{missile:"citadel"} run scoreboard players add @a[limit=1,tag=placer] CitaSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"citadel"} run tag @s[tag=bluemissile] add BlueCitadel
execute if data storage rocketriders:main spawn_egg{missile:"citadel"} run tag @s[tag=yellowmissile] add YellowCitadel

execute if data storage rocketriders:main spawn_egg{missile:"duplex"} run scoreboard players add @a[limit=1,tag=placer] DuplexSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"duplex"} run tag @s[tag=bluemissile] add BlueDuplex
execute if data storage rocketriders:main spawn_egg{missile:"duplex"} run tag @s[tag=yellowmissile] add YellowDuplex

execute if data storage rocketriders:main spawn_egg{missile:"elder_guardian"} run scoreboard players add @a[limit=1,tag=placer] GuardSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"elder_guardian"} run tag @s[tag=bluemissile] add BlueGuard
execute if data storage rocketriders:main spawn_egg{missile:"elder_guardian"} run tag @s[tag=yellowmissile] add YellowGuard

execute if data storage rocketriders:main spawn_egg{missile:"gemini"} run scoreboard players add @a[limit=1,tag=placer] GemiSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"gemini"} run tag @s[tag=bluemissile] add BlueGemi
execute if data storage rocketriders:main spawn_egg{missile:"gemini"} run tag @s[tag=yellowmissile] add YellowGemi

execute if data storage rocketriders:main spawn_egg{missile:"hurricane"} run scoreboard players add @a[limit=1,tag=placer] HurSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"hurricane"} run tag @s[tag=bluemissile] add BlueHur
execute if data storage rocketriders:main spawn_egg{missile:"hurricane"} run tag @s[tag=yellowmissile] add YellowHur

execute if data storage rocketriders:main spawn_egg{missile:"hypersonic"} run scoreboard players add @a[limit=1,tag=placer] HyperSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"hypersonic"} run tag @s[tag=bluemissile] add BlueHyper
execute if data storage rocketriders:main spawn_egg{missile:"hypersonic"} run tag @s[tag=yellowmissile] add YellowHyper

execute if data storage rocketriders:main spawn_egg{missile:"juggerbuster"} run scoreboard players add @a[limit=1,tag=placer] JugbSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"juggerbuster"} run tag @s[tag=bluemissile] add BlueJug
execute if data storage rocketriders:main spawn_egg{missile:"juggerbuster"} run tag @s[tag=yellowmissile] add YellowJug

execute if data storage rocketriders:main spawn_egg{missile:"lifter"} run scoreboard players add @a[limit=1,tag=placer] LifterSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"lifter"} run tag @s[tag=bluemissile] add BlueLift
execute if data storage rocketriders:main spawn_egg{missile:"lifter"} run tag @s[tag=yellowmissile] add YellowLift

execute if data storage rocketriders:main spawn_egg{missile:"rifter"} run scoreboard players add @a[limit=1,tag=placer] RifterSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"rifter"} run tag @s[tag=bluemissile] add BlueRift
execute if data storage rocketriders:main spawn_egg{missile:"rifter"} run tag @s[tag=yellowmissile] add YellowRift

execute if data storage rocketriders:main spawn_egg{missile:"slasher"} run scoreboard players add @a[limit=1,tag=placer] SlashSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"slasher"} run tag @s[tag=bluemissile] add BlueSlash
execute if data storage rocketriders:main spawn_egg{missile:"slasher"} run tag @s[tag=yellowmissile] add YellowSlash

execute if data storage rocketriders:main spawn_egg{missile:"thunderbolt"} run scoreboard players add @a[limit=1,tag=placer] ThunSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"thunderbolt"} run tag @s[tag=bluemissile] add BlueBolt
execute if data storage rocketriders:main spawn_egg{missile:"thunderbolt"} run tag @s[tag=yellowmissile] add YellowBolt

execute if data storage rocketriders:main spawn_egg{missile:"tomatwo"} run scoreboard players add @a[limit=1,tag=placer] TomaSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"tomatwo"} run tag @s[tag=bluemissile] add BlueToma
execute if data storage rocketriders:main spawn_egg{missile:"tomatwo"} run tag @s[tag=yellowmissile] add YellowToma

execute if data storage rocketriders:main spawn_egg{missile:"warhead"} run scoreboard players add @a[limit=1,tag=placer] WarSpawned 1
execute if data storage rocketriders:main spawn_egg{missile:"warhead"} run tag @s[tag=bluemissile] add BlueWar
execute if data storage rocketriders:main spawn_egg{missile:"warhead"} run tag @s[tag=yellowmissile] add YellowWar

function items:spawnmissiles

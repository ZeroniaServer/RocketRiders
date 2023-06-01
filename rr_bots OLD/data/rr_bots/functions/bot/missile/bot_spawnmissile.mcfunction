execute at @s if entity @e[predicate=custom:indimension,type=armor_stand,scores={botmisspawn=1..},distance=2..6] run scoreboard players set @s botmisspawn 61

scoreboard players add @s botmisspawn 1

execute if entity @s[tag=BotHasToma,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGToma","BMRNG"]}
execute if entity @s[tag=BotHasAux,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGAux","BMRNG"]}
execute if entity @s[tag=BotHasBlade,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGBlade","BMRNG"]}
execute if entity @s[tag=BotHasAnt,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGAnt","BMRNG"]}
execute if entity @s[tag=BotHasCata,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGCata","BMRNG"]}
execute if entity @s[tag=BotHasCita,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGCita","BMRNG"]}
execute if entity @s[tag=BotHasNull,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGNull","BMRNG"]}
execute if entity @s[tag=BotHasGuard,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGGuard","BMRNG"]}
execute if entity @s[tag=BotHasGemi,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGGemi","BMRNG"]}
execute if entity @s[tag=BotHasHur,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGHur","BMRNG"]}
execute if entity @s[tag=BotHasJug,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGJug","BMRNG"]}
execute if entity @s[tag=BotHasLift,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGLift","BMRNG"]}
execute if entity @s[tag=BotHasRift,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGRift","BMRNG"]}
execute if entity @s[tag=BotHasSlash,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGSlash","BMRNG"]}
execute if entity @s[tag=BotHasBolt,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGBolt","BMRNG"]}
execute if entity @s[tag=BotHasWar,scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["BMRNGWar","BMRNG"]}
execute if entity @s[scores={botmisspawn=1}] at @s run tag @e[predicate=custom:indimension,type=marker,tag=BMRNG,distance=..1,limit=1,sort=random] add SelectedBMRNG

execute if entity @s[scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["RideRNG","RideTrue"]}
execute if entity @s[scores={botmisspawn=1}] at @s unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run summon marker ~ ~ ~ {Tags:["RideRNG","RideFalse"]}
execute if entity @s[scores={botmisspawn=1}] at @s run tag @e[predicate=custom:indimension,type=marker,tag=RideRNG,distance=..1,limit=1,sort=random] add SelectedRide

execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGToma,distance=..1,limit=1] run tag @s add BotTomaSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGAux,distance=..1,limit=1] run tag @s add BotAuxSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGBlade,distance=..1,limit=1] run tag @s add BotBladeSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGAnt,distance=..1,limit=1] run tag @s add BotAntSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGCata,distance=..1,limit=1] run tag @s add BotCataSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGCita,distance=..1,limit=1] run tag @s add BotCitaSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGNull,distance=..1,limit=1] run tag @s add BotNullSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGGuard,distance=..1,limit=1] run tag @s add BotGuardSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGGemi,distance=..1,limit=1] run tag @s add BotGemiSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGHur,distance=..1,limit=1] run tag @s add BotHurSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGJug,distance=..1,limit=1] run tag @s add BotJugSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGLift,distance=..1,limit=1] run tag @s add BotLiftSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGRift,distance=..1,limit=1] run tag @s add BotRiftSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGSlash,distance=..1,limit=1] run tag @s add BotSlashSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGBolt,distance=..1,limit=1] run tag @s add BotBoltSpawn
execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedBMRNG,tag=BMRNGWar,distance=..1,limit=1] run tag @s add BotWarSpawn

execute if entity @s[scores={botmisspawn=1}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=SelectedRide,tag=RideTrue,distance=..1,limit=1] run tag @s add BotRider

kill @e[predicate=custom:indimension,type=marker,tag=RideRNG]
kill @e[predicate=custom:indimension,type=marker,tag=BMRNG]


execute if entity @s[tag=BotTomaSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with creeper_spawn_egg
execute if entity @s[tag=BotAuxSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with mooshroom_spawn_egg
execute if entity @s[tag=BotBladeSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with husk_spawn_egg
execute if entity @s[tag=BotAntSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with bat_spawn_egg
execute if entity @s[tag=BotCataSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with cave_spider_spawn_egg
execute if entity @s[tag=BotCitaSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with wandering_trader_spawn_egg
execute if entity @s[tag=BotNullSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with phantom_spawn_egg
execute if entity @s[tag=BotGuardSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with elder_guardian_spawn_egg
execute if entity @s[tag=BotGemiSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with fox_spawn_egg
execute if entity @s[tag=BotHurSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with drowned_spawn_egg
execute if entity @s[tag=BotJugSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with zombie_horse_spawn_egg
execute if entity @s[tag=BotLiftSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with dolphin_spawn_egg
execute if entity @s[tag=BotRiftSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with salmon_spawn_egg
execute if entity @s[tag=BotSlashSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with shulker_spawn_egg
execute if entity @s[tag=BotBoltSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with vex_spawn_egg
execute if entity @s[tag=BotWarSpawn,scores={botmisspawn=5}] run item replace entity @s weapon.offhand with silverfish_spawn_egg



execute if entity @s[tag=BotTomaSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotAuxSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotBladeSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotAntSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotCataSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotCitaSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotNullSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotGuardSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotGemiSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotHurSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotJugSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotLiftSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotRiftSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotSlashSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotBoltSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41
execute if entity @s[tag=BotWarSpawn,scores={botmisspawn=20..39}] at @s if entity @e[predicate=custom:indimension,type=marker,tag=RecentBotSpawn,distance=..7] run scoreboard players set @s botmisspawn 41

# Bot spawning - Blue
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotTomaSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/tomatwo
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAuxSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/auxiliary
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBladeSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/blade
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotAntSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/ant
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCataSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/catapult
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotCitaSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/citadel
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotNullSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/chronul
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGuardSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/elderguard
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotGemiSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/gemini
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotHurSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/hurricane
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotJugSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/jbust
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotLiftSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/lifter
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotRiftSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/rifter
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotSlashSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/slasher
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotBoltSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/thunderbolt
execute if entity @s[tag=BlueBot,tag=!DoneSpawning,tag=BotWarSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/warhead


# Bot spawning - Yellow
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotTomaSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/tomatwo
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAuxSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/auxiliary
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBladeSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/blade
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotAntSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/ant
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCataSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/catapult
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotCitaSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/citadel
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotNullSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/chronul
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGuardSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/elderguard
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotGemiSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/gemini
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotHurSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/hurricane
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotJugSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/jbust
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotLiftSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/lifter
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotRiftSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/rifter
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotSlashSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/slasher
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotBoltSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/thunderbolt
execute if entity @s[tag=YellowBot,tag=!DoneSpawning,tag=BotWarSpawn,scores={botmisspawn=40}] at @s if block ~ ~-3 ~-4 air unless entity @e[predicate=custom:indimension,type=marker,tag=RecentBotspawn,distance=..7] run function rr_bots:bot/missile/spawns/warhead





tag @s[tag=DoneSpawning] remove BotTomaSpawn
tag @s[tag=DoneSpawning] remove BotAuxSpawn
tag @s[tag=DoneSpawning] remove BotBladeSpawn
tag @s[tag=DoneSpawning] remove BotAntSpawn
tag @s[tag=DoneSpawning] remove BotCataSpawn
tag @s[tag=DoneSpawning] remove BotCitaSpawn
tag @s[tag=DoneSpawning] remove BotNullSpawn
tag @s[tag=DoneSpawning] remove BotGuardSpawn
tag @s[tag=DoneSpawning] remove BotGemiSpawn
tag @s[tag=DoneSpawning] remove BotHurSpawn
tag @s[tag=DoneSpawning] remove BotJugSpawn
tag @s[tag=DoneSpawning] remove BotLiftSpawn
tag @s[tag=DoneSpawning] remove BotRiftSpawn
tag @s[tag=DoneSpawning] remove BotSlashSpawn
tag @s[tag=DoneSpawning] remove BotBoltSpawn
tag @s[tag=DoneSpawning] remove BotWarSpawn







execute if entity @s[scores={botmisspawn=40..}] run item replace entity @s weapon.offhand with air

tag @s[tag=!BotHasToma,scores={botmisspawn=40..}] remove BotTomaSpawn
tag @s[tag=!BotHasAux,scores={botmisspawn=40..}] remove BotAuxSpawn
tag @s[tag=!BotHasBlade,scores={botmisspawn=40..}] remove BotBladeSpawn
tag @s[tag=!BotHasAnt,scores={botmisspawn=40..}] remove BotAntSpawn
tag @s[tag=!BotHasCata,scores={botmisspawn=40..}] remove BotCataSpawn
tag @s[tag=!BotHasCita,scores={botmisspawn=40..}] remove BotCitaSpawn
tag @s[tag=!BotHasNull,scores={botmisspawn=40..}] remove BotNullSpawn
tag @s[tag=!BotHasGuard,scores={botmisspawn=40..}] remove BotGuardSpawn
tag @s[tag=!BotHasGemi,scores={botmisspawn=40..}] remove BotGemiSpawn
tag @s[tag=!BotHasHur,scores={botmisspawn=40..}] remove BotHurSpawn
tag @s[tag=!BotHasJug,scores={botmisspawn=40..}] remove BotJugSpawn
tag @s[tag=!BotHasLift,scores={botmisspawn=40..}] remove BotLiftSpawn
tag @s[tag=!BotHasRift,scores={botmisspawn=40..}] remove BotRiftSpawn
tag @s[tag=!BotHasSlash,scores={botmisspawn=40..}] remove BotSlashSpawn
tag @s[tag=!BotHasBolt,scores={botmisspawn=40..}] remove BotBoltSpawn
tag @s[tag=!BotHasWar,scores={botmisspawn=40..}] remove BotWarSpawn

tag @s[scores={botmisspawn=60..}] remove DoneSpawning
tag @s[scores={botmisspawn=60..}] remove BotMissiles
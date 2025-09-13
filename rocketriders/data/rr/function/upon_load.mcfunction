## Actions to be performed (upon the world loading and after a data pack reload) once all the chunks in the map have been loaded, but before the game starts ticking

schedule function lobby:credits/restart_indimension 3t append
scoreboard players add $reloaded CmdData 1

#Add teams for Paper compatibility
team add Lobby
team add Blue
team add Yellow
team add Spectator
team add Developer

team modify Lobby color green
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run team modify Blue color blue
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run team modify Blue color dark_red
team modify Yellow color gold
team modify Spectator color dark_gray
team modify Developer color dark_green

team modify Lobby collisionRule never
team modify Blue collisionRule never
team modify Yellow collisionRule never
team modify Spectator collisionRule never
team modify Developer collisionRule never

team modify Lobby friendlyFire false
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run team modify Blue friendlyFire false
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run team modify Blue friendlyFire true
team modify Yellow friendlyFire false
team modify Spectator friendlyFire false
team modify Developer friendlyFire false

#Gamerules
gamerule logAdminCommands false
gamerule playersNetherPortalCreativeDelay 2147483647
gamerule playersNetherPortalDefaultDelay 2147483647
gamerule locatorBar false
gamerule waterSourceConversion false
#use freezeDamage to control ender pearl damage
gamerule freezeDamage false

#Difficulty Easy
difficulty easy

#Bossbars
bossbar add rr:startgame ""

#Useful blocks
setblock 0 184 -16 yellow_shulker_box{lock:{count:-1}} strict

#Scores
scoreboard objectives add global dummy
scoreboard objectives add var dummy

scoreboard objectives add config dummy
scoreboard objectives add gamemode_components dummy

scoreboard objectives add constant dummy
scoreboard players set $ticks_per_second constant 20
scoreboard players set $-1 constant -1
scoreboard players set $1 constant 1
scoreboard players set $2 constant 2
scoreboard players set $3 constant 3
scoreboard players set $4 constant 4
scoreboard players set $5 constant 5
scoreboard players set $6 constant 6
scoreboard players set $7 constant 7
scoreboard players set $8 constant 8
scoreboard players set $9 constant 9
scoreboard players set $10 constant 10
scoreboard players set $15 constant 15
scoreboard players set $16 constant 16
scoreboard players set $20 constant 20
scoreboard players set $26 constant 26
scoreboard players set $60 constant 60
scoreboard players set $64 constant 64
scoreboard players set $100 constant 100
scoreboard players set $300 constant 300
scoreboard players set $400 constant 400
scoreboard players set $1000 constant 1000
scoreboard players set $1200 constant 1200
scoreboard players set $24000 constant 24000

scoreboard objectives add event.player_dies custom:deaths
scoreboard objectives add event.player_uses_written_book used:written_book
scoreboard objectives add event.player_uses_pig_spawn_egg used:pig_spawn_egg
scoreboard objectives add flag.is_dead dummy
scoreboard objectives add flag.is_nova_attached dummy
scoreboard objectives add entity.age dummy
scoreboard objectives add entity.speed dummy
scoreboard objectives add entity.canopy.movement_cooldown dummy
scoreboard objectives add entity.vortex.fuse dummy
scoreboard objectives add time_since_tnt_punch custom:play_time
scoreboard objectives add custom_team_color dummy
scoreboard objectives add tnt.explosion_timestamp dummy
scoreboard objectives add intangible_arrow.despawn_buffer dummy
scoreboard objectives add cluster_fireball.time dummy
scoreboard objectives add flag_tablist_display dummy
scoreboard objectives modify flag_tablist_display numberformat blank

scoreboard objectives add shooting_saber.infinity_time dummy
scoreboard objectives add shooting_saber.multishot_time dummy

scoreboard objectives add primary_damage_origin_uuid.0 dummy
scoreboard objectives add primary_damage_origin_uuid.1 dummy
scoreboard objectives add primary_damage_origin_uuid.2 dummy
scoreboard objectives add primary_damage_origin_uuid.3 dummy
scoreboard objectives add secondary_damage_origin_uuid.0 dummy
scoreboard objectives add secondary_damage_origin_uuid.1 dummy
scoreboard objectives add secondary_damage_origin_uuid.2 dummy
scoreboard objectives add secondary_damage_origin_uuid.3 dummy
scoreboard objectives add time_since_damage custom:play_time
scoreboard objectives add time_since_attack custom:play_time

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy
scoreboard objectives add CmdData dummy
scoreboard objectives add playerUUID dummy
scoreboard objectives add PlatTime dummy
scoreboard objectives add ClearArena dummy
scoreboard objectives add GamesPlayed dummy
scoreboard objectives add largerTeam dummy
scoreboard objectives add LeaveMidgame trigger
scoreboard objectives add FallDistance dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add respawn deathCount
scoreboard objectives add deathCooldown dummy
scoreboard objectives add bestParkourMins dummy
scoreboard objectives add bestParkourSecs dummy
scoreboard objectives add bestParkourDeci dummy
scoreboard objectives add bestParkourDeci2 dummy
scoreboard objectives add bestParkourTime dummy
scoreboard objectives add parkourMins dummy
scoreboard objectives add parkourSecs dummy
scoreboard objectives add parkourDeci dummy
scoreboard objectives add parkourDeci2 dummy
scoreboard objectives add checkpoint dummy
scoreboard objectives add finalParkourTime dummy
scoreboard objectives add parkourTimer dummy
scoreboard objectives add chkpntCooldown dummy
scoreboard objectives add dropCompass minecraft.dropped:minecraft.compass
scoreboard objectives add dropClock minecraft.dropped:minecraft.clock
scoreboard objectives add dropBarrier minecraft.dropped:minecraft.barrier
scoreboard objectives add regifts dummy
scoreboard objectives add gravShot dummy
scoreboard objectives add useful dummy
scoreboard objectives add RepeatSettings dummy
scoreboard objectives add bMissileCount dummy
scoreboard objectives add yMissileCount dummy
scoreboard objectives add splashCount dummy
scoreboard objectives add MaxItemTime dummy
scoreboard objectives add MaxItemSec dummy
scoreboard objectives add RandomItem dummy
scoreboard objectives add UKTimer dummy
scoreboard objectives add daytime trigger
scoreboard objectives add leaveSpec trigger
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add LobbyWarp trigger
scoreboard objectives add informMeLate dummy
scoreboard objectives add ThrowPlat minecraft.used:ender_pearl
scoreboard objectives add ThrowSplash minecraft.used:minecraft.lingering_potion
scoreboard objectives add count dummy
scoreboard objectives add dropBow minecraft.dropped:minecraft.bow
scoreboard objectives add endtimer dummy
scoreboard objectives add origBCount dummy
scoreboard objectives add bluesCount dummy
scoreboard objectives add origYCount dummy
scoreboard objectives add yellowsCount dummy
scoreboard objectives add soulKills dummy
scoreboard objectives add kills playerKillCount
scoreboard objectives add jumps minecraft.custom:minecraft.jump
scoreboard objectives add SDtime dummy
scoreboard objectives add endFireball dummy
scoreboard objectives add SetGamemode dummy
scoreboard objectives add gamemodeID dummy
scoreboard objectives add invCount dummy
scoreboard objectives add actionbardelay dummy
scoreboard objectives add PortalDeco dummy
scoreboard objectives add FellVoid dummy
scoreboard objectives add LaunchCrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add CreditCycle dummy
scoreboard objectives add RNGmax dummy
scoreboard objectives add RNGscore dummy
scoreboard objectives add PlayerCap dummy
scoreboard objectives add WinStreak dummy
scoreboard objectives add HasFlag dummy
scoreboard objectives add TopDeco dummy
scoreboard objectives add TopCorner dummy
scoreboard objectives add BottomDeco dummy
scoreboard objectives add MiddleDeco dummy
scoreboard objectives add refreshsigns dummy
scoreboard objectives add xp_level dummy
scoreboard objectives add xp_progress dummy
scoreboard objectives add xp_buffer dummy
scoreboard objectives add xp_bar dummy
scoreboard objectives add DealtDamage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add arrowtime dummy
scoreboard objectives add ShowTip dummy
scoreboard objectives add modifierID dummy
scoreboard objectives add testplat dummy
scoreboard objectives add testplat2 dummy
scoreboard objectives add canopySmoke dummy
scoreboard objectives add firstJoined dummy
scoreboard objectives add shieldplacement dummy
scoreboard objectives add breakobshield dummy
scoreboard objectives add obmove dummy
scoreboard objectives add obshieldtime dummy
scoreboard objectives add obshieldTick dummy
scoreboard objectives add regenTimer dummy
scoreboard objectives add teamDiff dummy
scoreboard objectives add smallerTeamCount dummy
scoreboard objectives add largerTeamCount dummy
scoreboard objectives add smallerTeam dummy
scoreboard objectives add splashtick dummy
scoreboard objectives add MissilesSpawned dummy
scoreboard objectives add creditsSet dummy
scoreboard objectives add HasAux dummy
scoreboard objectives add HasToma dummy
scoreboard objectives add HasBlade dummy
scoreboard objectives add HasWar dummy
scoreboard objectives add HasAnt dummy
scoreboard objectives add HasBolt dummy
scoreboard objectives add HasGuard dummy
scoreboard objectives add HasRift dummy
scoreboard objectives add HasJug dummy
scoreboard objectives add HasNull dummy
scoreboard objectives add HasHur dummy
scoreboard objectives add HasSlash dummy
scoreboard objectives add HasCata dummy
scoreboard objectives add HasCitadel dummy
scoreboard objectives add HasGemi dummy
scoreboard objectives add HasLift dummy
scoreboard objectives add HasBroad dummy
scoreboard objectives add HasHyper dummy
scoreboard objectives add HasBullet dummy
scoreboard objectives add HasDuplex dummy
scoreboard objectives add HasSurprise dummy
scoreboard objectives add HasArrows dummy
scoreboard objectives add HasPlat dummy
scoreboard objectives add HasShield dummy
scoreboard objectives add HasObshield dummy
scoreboard objectives add HasFireball dummy
scoreboard objectives add HasSplash dummy
scoreboard objectives add HasNova dummy
scoreboard objectives add HasVortex dummy
scoreboard objectives add Volume dummy
scoreboard objectives add Unable dummy
scoreboard objectives add redundantX dummy
scoreboard objectives add redundantY dummy
scoreboard objectives add redundantZ dummy
scoreboard objectives add AuxSpawned minecraft.used:minecraft.mooshroom_spawn_egg
scoreboard objectives add TomaSpawned minecraft.used:minecraft.creeper_spawn_egg
scoreboard objectives add NullSpawned minecraft.used:minecraft.phantom_spawn_egg
scoreboard objectives add WarSpawned minecraft.used:minecraft.silverfish_spawn_egg
scoreboard objectives add ThunSpawned minecraft.used:minecraft.vex_spawn_egg
scoreboard objectives add HurSpawned minecraft.used:minecraft.drowned_spawn_egg
scoreboard objectives add GuardSpawned minecraft.used:minecraft.elder_guardian_spawn_egg
scoreboard objectives add AntsSpawned minecraft.used:minecraft.bat_spawn_egg
scoreboard objectives add BladeSpawned minecraft.used:minecraft.husk_spawn_egg
scoreboard objectives add RifterSpawned minecraft.used:minecraft.salmon_spawn_egg
scoreboard objectives add JugbSpawned minecraft.used:minecraft.zombie_horse_spawn_egg
scoreboard objectives add SlashSpawned minecraft.used:minecraft.shulker_spawn_egg
scoreboard objectives add CataSpawned minecraft.used:minecraft.cave_spider_spawn_egg
scoreboard objectives add CitaSpawned minecraft.used:minecraft.wandering_trader_spawn_egg
scoreboard objectives add GemiSpawned minecraft.used:minecraft.fox_spawn_egg
scoreboard objectives add LifterSpawned minecraft.used:minecraft.dolphin_spawn_egg
scoreboard objectives add HyperSpawned minecraft.used:minecraft.turtle_spawn_egg
scoreboard objectives add BulletSpawned minecraft.used:minecraft.skeleton_horse_spawn_egg
scoreboard objectives add DuplexSpawned minecraft.used:minecraft.parrot_spawn_egg
scoreboard objectives add BroadSpawned minecraft.used:minecraft.magma_cube_spawn_egg
scoreboard objectives add ObshieldSpawned minecraft.used:minecraft.enderman_spawn_egg
scoreboard objectives add FireballSpawned minecraft.used:minecraft.blaze_spawn_egg
scoreboard objectives add BSurpriseSpawned minecraft.used:minecraft.squid_spawn_egg
scoreboard objectives add YSurpriseSpawned minecraft.used:minecraft.cod_spawn_egg
scoreboard objectives add BowShot minecraft.used:minecraft.bow
scoreboard objectives add notBackwards dummy
scoreboard objectives add standStill dummy
scoreboard objectives add timeSinceJump dummy
scoreboard objectives add jumping minecraft.custom:minecraft.jump
scoreboard objectives add movement dummy
scoreboard objectives add impulse_cooldown dummy
scoreboard objectives add leavecheck dummy
scoreboard objectives add wins dummy
scoreboard objectives add losses dummy
scoreboard objectives add prevMinedTNT dummy
scoreboard objectives add prevUseful dummy
scoreboard objectives add fireballkill dummy
scoreboard objectives add prevfireballkill dummy
scoreboard objectives add prevFellVoid dummy
scoreboard objectives add prevKills dummy
scoreboard objectives remove cancelMatch
scoreboard objectives add editSettings trigger
scoreboard players add $curr leavecheck 0

#Book Config
execute unless data storage rocketriders:navbook modroom run data modify storage rocketriders:navbook modroom set value ["\n",{text:"* ",color:"gray",hover_event:{action:"show_text",value:{text:"Click to teleport to the Modification Room.",italic:true}},click_event:{action:"run_command","command":"/trigger LobbyWarp set 2"}},{text:"Modification Room",color:"dark_purple",hover_event:{action:"show_text",value:{text:"Click to teleport to the Modification Room.",italic:true}},click_event:{action:"run_command","command":"/trigger LobbyWarp set 2"}}]
execute unless data storage rocketriders:navbook description run data modify storage rocketriders:navbook description set value {text:"\nRocket Riders is a tactical game where two teams ride missiles to the enemy base to destroy their portals.\n\nIn the Modification Room, you can easily customize the game with many gamemodes, modifiers, and other settings to play with.",color:"dark_gray"}
execute unless data storage rocketriders:navbook parkourtips run data modify storage rocketriders:navbook parkourtips set value ["\n\n     ",{text:"[Parkour Tips]",color:"dark_gray",hover_event:{action:"show_text",value:{text:"Click to toggle Parkour instructions.",italic:true}},click_event:{action:"run_command",command:"/trigger toggleParkourTips set 1"}}]

# Nomicon Dialog Data
function rr_sandbox:nomicon/load_pages

# Item Custom Data ID to Loot Table Map
data modify storage rocketriders:items id_to_loot_table_map set value {\
    "canopy": "items:util/canopy",\
    "cluster_fireball": "items:util/cluster_fireball",\
    "fireball": "items:util/fireball",\
    "icbm": "items:util/icbm",\
    "lava_splash": "items:util/lava_splash",\
    "nova_rocket": "items:util/nova_rocket",\
    "obsidian_shield": "items:util/obsidian_shield",\
    "shield": "items:util/shield",\
    "splash": "items:util/splash",\
    "stinging_shield": "items:util/stinging_shield",\
    "vortex": "items:util/vortex",\
    "arrow": "items:misc/arrow",\
    "elytra": "items:misc/elytra",\
    "knight_shield": "items:misc/knight_shield",\
    "knight_sword": "items:misc/knight_sword",\
    "piercing_pickaxe": "items:misc/piercing_pickaxe",\
    "shooting_saber": "items:misc/shooting_saber",\
    "slap_fish": "items:misc/slap_fish",\
    "spell_wand": "items:misc/spell_wand",\
    "tipped_arrow_blindness": "items:misc/tipped_arrow_blindness",\
    "tipped_arrow_levitation": "items:misc/tipped_arrow_levitation",\
    "tipped_arrow_slowness": "items:misc/tipped_arrow_slowness",\
    "tipped_arrow_wither": "items:misc/tipped_arrow_wither",\
    "totem_of_undying": "items:misc/totem_of_undying",\
    "trident": "items:misc/trident",\
    "building_block": "items:experimental/building_block",\
    "invisibility_potion": "items:experimental/invisibility_potion",\
    "jump_boost_potion": "items:experimental/jump_boost_potion",\
    "spectral_arrow": "items:experimental/spectral_arrow",\
    "celebratory_elytra": "items:ending/celebratory_elytra",\
    "celebratory_fireworks": "items:ending/celebratory_fireworks",\
    "loser_banner": "items:ending/loser_banner",\
    "rocket_nomicon": "items:books/nomicon/in_game",\
    "rocket_nomicon/post_game": "items:books/nomicon/post_game",\
    "rocket_nomicon/pre_game": "items:books/nomicon/pre_game",\
    "missile/auxiliary": "items:missile/heavy/auxiliary",\
    "missile/juggerbuster": "items:missile/heavy/juggerbuster",\
    "missile/rifter": "items:missile/heavy/rifter",\
    "missile/warhead": "items:missile/heavy/warhead",\
    "missile/hurricane": "items:missile/lightning/hurricane",\
    "missile/thunderbolt": "items:missile/lightning/thunderbolt",\
    "missile/ant": "items:missile/normal/ant",\
    "missile/blade": "items:missile/normal/blade",\
    "missile/catapult": "items:missile/normal/catapult",\
    "missile/chronullifier": "items:missile/normal/chronullifier",\
    "missile/citadel": "items:missile/normal/citadel",\
    "missile/elder_guardian": "items:missile/normal/elder_guardian",\
    "missile/gemini": "items:missile/normal/gemini",\
    "missile/lifter": "items:missile/normal/lifter",\
    "missile/slasher": "items:missile/normal/slasher",\
    "missile/tomatwo": "items:missile/normal/tomatwo",\
    "missile/broadsword": "items:missile/special/broadsword",\
    "missile/bullet": "items:missile/special/bullet",\
    "missile/duplex": "items:missile/special/duplex",\
    "missile/hypersonic": "items:missile/special/hypersonic",\
    "surprise_missile/all": "items:missile/surprise/all",\
    "surprise_missile/heavy": "items:missile/surprise/heavy",\
    "surprise_missile/lightning": "items:missile/surprise/lightning",\
    "surprise_missile/normal": "items:missile/surprise/normal",\
    "surprise_missile/special": "items:missile/surprise/special",\
}

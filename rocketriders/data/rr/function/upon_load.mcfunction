## Actions to be performed (upon the world loading and after a data pack reload) once all the chunks in the map have been loaded, but before the game starts ticking

schedule function lobby:credits/restart_indimension 3t append
scoreboard players add $reloaded CmdData 1

#Useful blocks
setblock 0 184 -16 yellow_shulker_box{lock:{count:-1}} strict

# delete "main" (volatile) storage
function custom:delete_storage {storage_id:"rocketriders:main"}

#Add teams for Paper compatibility
team add rocketriders.sort_000.blue "Blue"
team add rocketriders.sort_001.yellow "Yellow"
team add rocketriders.sort_100.spectator "Spectator"
team add rocketriders.sort_200.lobby "Lobby"
team add rocketriders.sort_999.developer "Developer"

team modify rocketriders.sort_200.lobby color green
execute unless predicate game:gamemode_components/red_for_blue run team modify rocketriders.sort_000.blue color blue
execute if predicate game:gamemode_components/red_for_blue run team modify rocketriders.sort_000.blue color dark_red
team modify rocketriders.sort_001.yellow color gold
team modify rocketriders.sort_100.spectator color dark_gray
team modify rocketriders.sort_999.developer color dark_green

team modify rocketriders.sort_200.lobby collisionRule never
team modify rocketriders.sort_000.blue collisionRule never
team modify rocketriders.sort_001.yellow collisionRule never
team modify rocketriders.sort_100.spectator collisionRule never
team modify rocketriders.sort_999.developer collisionRule never

team modify rocketriders.sort_200.lobby friendlyFire false
execute unless entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run team modify rocketriders.sort_000.blue friendlyFire false
execute if entity @e[x=0,type=armor_stand,tag=Selection,limit=1,tag=chaseEnabled] run team modify rocketriders.sort_000.blue friendlyFire true
team modify rocketriders.sort_001.yellow friendlyFire false
team modify rocketriders.sort_100.spectator friendlyFire false
team modify rocketriders.sort_999.developer friendlyFire false

#Gamerules
function rr:upon_load/game_rules

#Difficulty Easy
difficulty easy

#Bossbars
bossbar add rr:startgame ""

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
scoreboard players set $12 constant 12
scoreboard players set $15 constant 15
scoreboard players set $16 constant 16
scoreboard players set $20 constant 20
scoreboard players set $26 constant 26
scoreboard players set $40 constant 40
scoreboard players set $60 constant 60
scoreboard players set $64 constant 64
scoreboard players set $100 constant 100
scoreboard players set $180 constant 180
scoreboard players set $300 constant 300
scoreboard players set $360 constant 360
scoreboard players set $400 constant 400
scoreboard players set $1000 constant 1000
scoreboard players set $1200 constant 1200
scoreboard players set $2400 constant 2400
scoreboard players set $24000 constant 24000

scoreboard objectives add event.player_joins_overworld.state custom:leave_game
scoreboard objectives add time_since_joined_overworld custom:play_time
scoreboard objectives add event.player_dies custom:deaths
scoreboard objectives add event.player_uses_writable_book used:writable_book
scoreboard objectives add event.player_uses_written_book used:written_book
scoreboard objectives add event.player_uses_pig_spawn_egg used:pig_spawn_egg
scoreboard objectives add flag.is_dead dummy
scoreboard objectives add flag.is_nova_attached dummy
scoreboard objectives add entity.age dummy
scoreboard objectives add entity.speed dummy
scoreboard objectives add entity.canopy.movement_cooldown dummy
scoreboard objectives add entity.vortex.fuse dummy
scoreboard objectives add entity.vortex.arms dummy
scoreboard objectives add entity.vortex_arm.index dummy
scoreboard objectives add entity.spell.bee_cooldown dummy
scoreboard objectives add time_since_tnt_punch custom:play_time
scoreboard objectives add custom_team_color dummy
scoreboard objectives add tnt.explosion_timestamp dummy
scoreboard objectives add intangible_arrow.despawn_buffer dummy
scoreboard objectives add cluster_fireball.time dummy
scoreboard objectives add flag_tablist_display dummy
scoreboard objectives modify flag_tablist_display numberformat blank
scoreboard objectives add default_spell dummy
scoreboard objectives add start_as_crusade_kit dummy
scoreboard objectives add was_on_arena_team dummy

scoreboard objectives add shooting_saber.infinity_time dummy
scoreboard objectives add shooting_saber.multishot_time dummy
scoreboard objectives add elytra_time dummy

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

scoreboard objectives add set_item_delay trigger
scoreboard objectives add set_time_of_day trigger
scoreboard objectives add editSettings trigger
scoreboard objectives add LeaveMidgame trigger
scoreboard objectives add leaveSpec trigger
scoreboard objectives add LobbyWarp trigger
scoreboard objectives add change_default_spell trigger
scoreboard objectives add change_crusade_kit trigger
scoreboard objectives add toggle_auto_fill_hotbar trigger
scoreboard objectives add toggle_particles trigger
scoreboard objectives add toggle_parkour_instructions trigger
scoreboard objectives add toggle_ingame_tips trigger

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
scoreboard objectives add FallDistance dummy
scoreboard objectives add deaths deathCount
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
scoreboard objectives add regifts dummy
scoreboard objectives add gravShot dummy
scoreboard objectives add MaxItemTime dummy
scoreboard objectives add RandomItem dummy
scoreboard objectives add UKTimer dummy
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add informMeLate dummy
scoreboard objectives add ThrowPlat minecraft.used:ender_pearl
scoreboard objectives add ThrowSplash minecraft.used:minecraft.lingering_potion
scoreboard objectives add count dummy
scoreboard objectives add endtimer dummy
scoreboard objectives add soulKills dummy
scoreboard objectives add kills playerKillCount
scoreboard objectives add jumps minecraft.custom:minecraft.jump
scoreboard objectives add SDtime dummy
scoreboard objectives add endFireball dummy
scoreboard objectives add SetGamemode dummy
scoreboard objectives add gamemodeID dummy
scoreboard objectives add invCount dummy
scoreboard objectives add actionbardelay dummy
scoreboard objectives add FellVoid dummy
scoreboard objectives add CreditCycle dummy
scoreboard objectives add RNGmax dummy
scoreboard objectives add RNGscore dummy
scoreboard objectives add PlayerCap dummy
scoreboard objectives add WinStreak dummy
scoreboard objectives add HasFlag dummy
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
scoreboard objectives add shieldplacement dummy
scoreboard objectives add breakobshield dummy
scoreboard objectives add obmove dummy
scoreboard objectives add obshieldtime dummy
scoreboard objectives add obshieldTick dummy
scoreboard objectives add regenTimer dummy
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
scoreboard objectives add minedTNT dummy
scoreboard objectives add prevMinedTNT dummy
scoreboard objectives add useful dummy
scoreboard objectives add prevUseful dummy
scoreboard objectives add fireballkill dummy
scoreboard objectives add prevFellVoid dummy
scoreboard objectives add prevKills dummy
scoreboard objectives remove cancelMatch
scoreboard players add $curr leavecheck 0

# Fix join pad sprite depending on version
function rr:upon_load/join_pad_sprite

# Nav Book Config
function lobby:store_nav_book

# Nomicon Dialog Data
function rr_sandbox:nomicon/load_pages

# Item Custom Data ID to Loot Table Map
data modify storage rocketriders:items id_to_loot_table_map set value {\
    "arrow": "items:misc/arrow",\
    "booster_rocket": "items:experimental/booster_rocket",\
    "lunging_spear": "items:experimental/lunging_spear",\
    "building_block": "items:experimental/building_block",\
    "canopy": "items:util/canopy",\
    "celebratory_elytra": "items:ending/celebratory_elytra",\
    "celebratory_fireworks": "items:ending/celebratory_fireworks",\
    "cluster_fireball": "items:util/cluster_fireball",\
    "elytra": "items:misc/elytra",\
    "fireball": "items:util/fireball",\
    "icbm": "items:util/icbm",\
    "invisibility_potion": "items:experimental/invisibility_potion",\
    "jump_boost_potion": "items:experimental/jump_boost_potion",\
    "knight_shield": "items:misc/knight_shield",\
    "knight_sword": "items:misc/knight_sword",\
    "lava_splash": "items:util/lava_splash",\
    "loser_banner": "items:ending/loser_banner",\
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
    "nova_rocket": "items:util/nova_rocket",\
    "obsidian_shield": "items:util/obsidian_shield",\
    "parkour/quit_parkour": "lobby:parkour/quit_parkour",\
    "parkour/return_to_checkpoint": "lobby:parkour/return_to_checkpoint",\
    "parkour/return_to_start": "lobby:parkour/return_to_start",\
    "piercing_pickaxe": "items:misc/piercing_pickaxe",\
    "rocket_nomicon": "items:misc/rocket_nomicon",\
    "shield": "items:util/shield",\
    "splash": "items:util/splash",\
    "stinging_shield": "items:util/stinging_shield",\
    "shooting_saber": "items:misc/shooting_saber",\
    "slap_fish": "items:misc/slap_fish",\
    "spectral_arrow": "items:experimental/spectral_arrow",\
    "spell_book": "items:misc/spell_book",\
    "spell_wand": "items:misc/spell_wand",\
    "surprise_missile/all": "items:missile/surprise/all",\
    "surprise_missile/heavy": "items:missile/surprise/heavy",\
    "surprise_missile/lightning": "items:missile/surprise/lightning",\
    "surprise_missile/normal": "items:missile/surprise/normal",\
    "surprise_missile/special": "items:missile/surprise/special",\
    "tipped_arrow_blindness": "items:misc/tipped_arrow_blindness",\
    "tipped_arrow_levitation": "items:misc/tipped_arrow_levitation",\
    "tipped_arrow_slowness": "items:misc/tipped_arrow_slowness",\
    "tipped_arrow_wither": "items:misc/tipped_arrow_wither",\
    "totem_of_undying": "items:misc/totem_of_undying",\
    "trident": "items:misc/trident",\
    "vortex": "items:util/vortex",\
}

##Actions to be performed upon world load
schedule function lobby:credits/restart_indimension 3t append
scoreboard players set $barriers CmdData 73
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

#Check updates
schedule function world_updates:check_updates_indimension 2s replace

#Bossbars
bossbar add rr:startgame ""

#Scores
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy
scoreboard objectives add CmdData dummy
scoreboard objectives add playerUUID dummy
scoreboard objectives add gametime dummy
scoreboard objectives add PlatTime dummy
scoreboard objectives add ClearArena dummy
scoreboard objectives add GamesPlayed dummy
scoreboard objectives add largerTeam dummy
scoreboard objectives add LeaveMidgame trigger
scoreboard objectives add FallDistance dummy
scoreboard objectives add PlayerDeaths dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add death deathCount
scoreboard objectives add respawn deathCount
scoreboard objectives add deathCooldown dummy
scoreboard objectives add novattach dummy
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
scoreboard objectives add splashOwnerUUID dummy
scoreboard objectives add RepeatSettings dummy
scoreboard objectives add bMissileCount dummy
scoreboard objectives add yMissileCount dummy
scoreboard objectives add splashCount dummy
scoreboard objectives add shieldCount dummy
scoreboard objectives add canopyCount dummy
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
scoreboard objectives add pearlOwnerUUID dummy
scoreboard objectives add PlayerKills playerKillCount
scoreboard objectives add kills playerKillCount
scoreboard objectives add jumps minecraft.custom:minecraft.jump
scoreboard objectives add SDtime dummy
scoreboard objectives add endFireball dummy
scoreboard objectives add SetGamemode dummy
scoreboard objectives add gamemodeID dummy
scoreboard objectives add VortexID dummy
scoreboard objectives add invCount dummy
scoreboard objectives add actionbardelay dummy
scoreboard objectives add PortalDeco dummy
scoreboard objectives add FellVoid dummy
scoreboard objectives add LaunchCrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add HasFirework dummy
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
scoreboard objectives add xp_mod dummy
scoreboard objectives add xp_mult dummy
scoreboard objectives add xp_div dummy
scoreboard objectives add xp_buffer dummy
scoreboard objectives add xp_bar dummy
scoreboard objectives add DealtDamage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add arrowtime dummy
scoreboard objectives add ShowTip dummy
scoreboard objectives add modifierID dummy
scoreboard objectives add voidNoFallCount dummy
scoreboard objectives add novatimer dummy
scoreboard objectives add testplat dummy
scoreboard objectives add testplat2 dummy
scoreboard objectives add canopyExtraLogs dummy
scoreboard objectives add canopySmoke dummy
scoreboard objectives add NovaShot minecraft.broken:minecraft.crossbow
scoreboard objectives add NovaNear dummy
scoreboard objectives add firstJoined dummy
scoreboard objectives add vortexBoom dummy
scoreboard objectives add vortexChain dummy
scoreboard objectives add vortextimer dummy
scoreboard objectives add shieldplacement dummy
scoreboard objectives add breakobshield dummy
scoreboard objectives add obmove dummy
scoreboard objectives add obshieldtime dummy
scoreboard objectives add obshieldTick dummy
scoreboard objectives add regenTimer dummy
scoreboard objectives add shieldtest dummy
scoreboard objectives add shieldtest2 dummy
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
scoreboard objectives add ThrowShield minecraft.used:minecraft.snowball
scoreboard objectives add infinity dummy
scoreboard objectives add notBackwards dummy
scoreboard objectives add standStill dummy
scoreboard objectives add timeSinceJump dummy
scoreboard objectives add jumping minecraft.custom:minecraft.jump
scoreboard objectives add movement dummy
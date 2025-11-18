scoreboard players set @s event.player_joins_overworld.state -1
scoreboard players set @s time_since_joined_overworld 0

function everytick:welcome_titles

# Reset team
function custom:team/join_lobby

# Update is_dead flag
execute in minecraft:overworld run scoreboard players set @a[x=0] flag.is_dead 1
execute in minecraft:overworld run scoreboard players set @e[x=0,type=player] flag.is_dead 0

# Remove tags
tag @s remove last_dialog_opened.gamemode_components_ui

# Reset triggers
scoreboard players reset @s LeaveMidgame
scoreboard players reset @s daytime
scoreboard players reset @s leaveSpec
scoreboard players reset @s LobbyWarp
scoreboard players reset @s editSettings
scoreboard players reset @s dropWand
scoreboard players reset @s useWand
scoreboard players reset @s toggleParticles
scoreboard players reset @s toggleTips
scoreboard players reset @s toggleParkourTips
scoreboard players reset @s toggleHotbarAutoFill
scoreboard players reset @s dev
scoreboard players reset @s options

# Reset scores
scoreboard players reset @s event.player_dies
scoreboard players reset @s event.player_uses_written_book
scoreboard players reset @s event.player_uses_pig_spawn_egg
scoreboard players reset @s flag.is_nova_attached
scoreboard players reset @s time_since_tnt_punch
scoreboard players reset @s custom_team_color
scoreboard players reset @s flag_tablist_display

scoreboard players reset @s shooting_saber.infinity_time
scoreboard players reset @s shooting_saber.multishot_time

scoreboard players reset @s primary_damage_origin_uuid.0
scoreboard players reset @s primary_damage_origin_uuid.1
scoreboard players reset @s primary_damage_origin_uuid.2
scoreboard players reset @s primary_damage_origin_uuid.3
scoreboard players reset @s secondary_damage_origin_uuid.0
scoreboard players reset @s secondary_damage_origin_uuid.1
scoreboard players reset @s secondary_damage_origin_uuid.2
scoreboard players reset @s secondary_damage_origin_uuid.3
scoreboard players reset @s time_since_damage
scoreboard players reset @s time_since_attack

scoreboard players reset @s dropCompass
scoreboard players reset @s dropClock
scoreboard players reset @s dropBarrier
scoreboard players reset @s ThrowPlat
scoreboard players reset @s ThrowSplash
scoreboard players reset @s dropBow
scoreboard players reset @s kills
scoreboard players reset @s jumps
scoreboard players reset @s DealtDamage
scoreboard players reset @s AuxSpawned
scoreboard players reset @s TomaSpawned
scoreboard players reset @s NullSpawned
scoreboard players reset @s WarSpawned
scoreboard players reset @s ThunSpawned
scoreboard players reset @s HurSpawned
scoreboard players reset @s GuardSpawned
scoreboard players reset @s AntsSpawned
scoreboard players reset @s BladeSpawned
scoreboard players reset @s RifterSpawned
scoreboard players reset @s JugbSpawned
scoreboard players reset @s SlashSpawned
scoreboard players reset @s CataSpawned
scoreboard players reset @s CitaSpawned
scoreboard players reset @s GemiSpawned
scoreboard players reset @s LifterSpawned
scoreboard players reset @s HyperSpawned
scoreboard players reset @s BulletSpawned
scoreboard players reset @s DuplexSpawned
scoreboard players reset @s BroadSpawned
scoreboard players reset @s ObshieldSpawned
scoreboard players reset @s FireballSpawned
scoreboard players reset @s BSurpriseSpawned
scoreboard players reset @s YSurpriseSpawned
scoreboard players reset @s BowShot
scoreboard players reset @s jumping

# Load data
function custom:player_action/playerdata/load

# First join
execute unless score @s firstJoined matches 1.. run function custom:event/player_joins_overworld/new_player

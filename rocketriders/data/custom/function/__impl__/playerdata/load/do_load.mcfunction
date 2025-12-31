# arguments: UUID

# Do nothing if there is no entry saved
$execute unless data storage rocketriders.data:playerdata players."$(UUID)" run return fail

# Load data
$execute store result score @s confirmed_dev run data get storage rocketriders.data:playerdata players."$(UUID)".data.confirmed_dev
execute unless score @s confirmed_dev matches 1 run scoreboard players reset @s confirmed_dev

$execute store result score @s wins run data get storage rocketriders.data:playerdata players."$(UUID)".data.wins
$execute store result score @s losses run data get storage rocketriders.data:playerdata players."$(UUID)".data.losses
$execute store result score @s GamesPlayed run data get storage rocketriders.data:playerdata players."$(UUID)".data.games_played
$execute store result score @s XP run data get storage rocketriders.data:playerdata players."$(UUID)".data.xp

tag @s remove hideTips
$execute if data storage rocketriders.data:playerdata players."$(UUID)".data{hide_tips:1b} run tag @s add hideTips

tag @s remove hideParkourTips
$execute if data storage rocketriders.data:playerdata players."$(UUID)".data{hide_parkour_tips:1b} run tag @s add hideParkourTips

tag @s remove hideParticles
$execute if data storage rocketriders.data:playerdata players."$(UUID)".data{hide_particles:1b} run tag @s add hideParticles

tag @s remove do_hotbar_auto_fill
$execute if data storage rocketriders.data:playerdata players."$(UUID)".data{do_hotbar_auto_fill:1b} run tag @s add do_hotbar_auto_fill

$execute store result score @s crusadekit run data get storage rocketriders.data:playerdata players."$(UUID)".data.crusadekit
execute unless score @s crusadekit matches 1..3 run scoreboard players reset @s crusadekit

$execute store result score @s default_spell run data get storage rocketriders.data:playerdata players."$(UUID)".data.default_spell
execute unless score @s default_spell matches 1..3 run scoreboard players reset @s default_spell

#for all-time achievement tracking
$execute store result score @s fireballKill run data get storage rocketriders.data:playerdata players."$(UUID)".data.total_fireball_kills
$execute store result score @s minedTNT store result score @s prevMinedTNT run data get storage rocketriders.data:playerdata players."$(UUID)".data.total_tnt_mined
$execute store result score @s useful store result score @s prevUseful run data get storage rocketriders.data:playerdata players."$(UUID)".data.total_primed_tnt_splashed

# success
return 1

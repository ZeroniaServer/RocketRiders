# arguments: UUID

# Do nothing if there is no entry saved
$execute unless data storage rocketriders.data:playerdata players."$(UUID)" run return fail

# Load data
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

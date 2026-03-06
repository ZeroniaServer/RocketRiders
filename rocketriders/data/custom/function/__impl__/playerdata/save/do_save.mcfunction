# arguments: UUID

# Reset entry
$data modify storage rocketriders.data:playerdata players."$(UUID)" set value {data_version:0,data:{}}

# Save data into entry
$execute if score @s confirmed_dev matches 1.. run data modify storage rocketriders.data:playerdata players."$(UUID)".data.confirmed_dev set value 1b
$execute if score @s wins matches 1.. store result storage rocketriders.data:playerdata players."$(UUID)".data.wins int 1 run scoreboard players get @s wins
$execute if score @s losses matches 1.. store result storage rocketriders.data:playerdata players."$(UUID)".data.losses int 1 run scoreboard players get @s losses
$execute if score @s GamesPlayed matches 1.. store result storage rocketriders.data:playerdata players."$(UUID)".data.games_played int 1 run scoreboard players get @s GamesPlayed
$execute if score @s XP matches 1..1300 store result storage rocketriders.data:playerdata players."$(UUID)".data.xp short 1 run scoreboard players get @s XP
$execute if score @s XP matches 1301.. run data modify storage rocketriders.data:playerdata players."$(UUID)".data.xp set value 1300s
$execute if entity @s[tag=hideTips] run data modify storage rocketriders.data:playerdata players."$(UUID)".data.hide_tips set value 1b
$execute if entity @s[tag=hideParkourTips] run data modify storage rocketriders.data:playerdata players."$(UUID)".data.hide_parkour_tips set value 1b
$execute if entity @s[tag=hideParticles] run data modify storage rocketriders.data:playerdata players."$(UUID)".data.hide_particles set value 1b
$execute if entity @s[tag=do_hotbar_auto_fill] run data modify storage rocketriders.data:playerdata players."$(UUID)".data.auto_fill_hotbar set value 1b
$execute if score @s start_as_crusade_kit matches 1..3 store result storage rocketriders.data:playerdata players."$(UUID)".data.crusade_kit byte 1 run scoreboard players get @s start_as_crusade_kit
$execute if score @s default_spell matches 1..3 store result storage rocketriders.data:playerdata players."$(UUID)".data.default_spell byte 1 run scoreboard players get @s default_spell
$execute if score @s fireballKill matches 1.. store result storage rocketriders.data:playerdata players."$(UUID)".data.total_fireball_kills int 1 run scoreboard players get @s fireballKill
$execute if score @s minedTNT matches 1.. store result storage rocketriders.data:playerdata players."$(UUID)".data.total_tnt_mined int 1 run scoreboard players get @s minedTNT
$execute if score @s useful matches 1.. store result storage rocketriders.data:playerdata players."$(UUID)".data.total_primed_tnt_splashed int 1 run scoreboard players get @s useful

$execute if score @s player_statistics.chase_play_time matches 20..2559 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.chase byte 0.05 run scoreboard players get @s player_statistics.chase_play_time
$execute if score @s player_statistics.chase_play_time matches 2560..655359 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.chase short 0.05 run scoreboard players get @s player_statistics.chase_play_time
$execute if score @s player_statistics.chase_play_time matches 655360.. store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.chase int 0.05 run scoreboard players get @s player_statistics.chase_play_time

$execute if score @s player_statistics.crusade_play_time matches 20..2559 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.crusade byte 0.05 run scoreboard players get @s player_statistics.crusade_play_time
$execute if score @s player_statistics.crusade_play_time matches 2560..655359 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.crusade short 0.05 run scoreboard players get @s player_statistics.crusade_play_time
$execute if score @s player_statistics.crusade_play_time matches 655360.. store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.crusade int 0.05 run scoreboard players get @s player_statistics.crusade_play_time

$execute if score @s player_statistics.ctf_play_time matches 20..2559 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.ctf byte 0.05 run scoreboard players get @s player_statistics.ctf_play_time
$execute if score @s player_statistics.ctf_play_time matches 2560..655359 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.ctf short 0.05 run scoreboard players get @s player_statistics.ctf_play_time
$execute if score @s player_statistics.ctf_play_time matches 655360.. store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.ctf int 0.05 run scoreboard players get @s player_statistics.ctf_play_time

$execute if score @s player_statistics.duel_play_time matches 20..2559 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.duel byte 0.05 run scoreboard players get @s player_statistics.duel_play_time
$execute if score @s player_statistics.duel_play_time matches 2560..655359 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.duel short 0.05 run scoreboard players get @s player_statistics.duel_play_time
$execute if score @s player_statistics.duel_play_time matches 655360.. store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.duel int 0.05 run scoreboard players get @s player_statistics.duel_play_time

$execute if score @s player_statistics.normal_play_time matches 20..2559 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.normal byte 0.05 run scoreboard players get @s player_statistics.normal_play_time
$execute if score @s player_statistics.normal_play_time matches 2560..655359 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.normal short 0.05 run scoreboard players get @s player_statistics.normal_play_time
$execute if score @s player_statistics.normal_play_time matches 655360.. store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.normal int 0.05 run scoreboard players get @s player_statistics.normal_play_time

$execute if score @s player_statistics.powerups_play_time matches 20..2559 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.powerups byte 0.05 run scoreboard players get @s player_statistics.powerups_play_time
$execute if score @s player_statistics.powerups_play_time matches 2560..655359 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.powerups short 0.05 run scoreboard players get @s player_statistics.powerups_play_time
$execute if score @s player_statistics.powerups_play_time matches 655360.. store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.powerups int 0.05 run scoreboard players get @s player_statistics.powerups_play_time

$execute if score @s player_statistics.sandbox_play_time matches 20..2559 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.sandbox byte 0.05 run scoreboard players get @s player_statistics.sandbox_play_time
$execute if score @s player_statistics.sandbox_play_time matches 2560..655359 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.sandbox short 0.05 run scoreboard players get @s player_statistics.sandbox_play_time
$execute if score @s player_statistics.sandbox_play_time matches 655360.. store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.sandbox int 0.05 run scoreboard players get @s player_statistics.sandbox_play_time

$execute if score @s player_statistics.swap_play_time matches 20..2559 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.swap byte 0.05 run scoreboard players get @s player_statistics.swap_play_time
$execute if score @s player_statistics.swap_play_time matches 2560..655359 store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.swap short 0.05 run scoreboard players get @s player_statistics.swap_play_time
$execute if score @s player_statistics.swap_play_time matches 655360.. store result storage rocketriders.data:playerdata players."$(UUID)".data.play_time.swap int 0.05 run scoreboard players get @s player_statistics.swap_play_time

# success
return 1

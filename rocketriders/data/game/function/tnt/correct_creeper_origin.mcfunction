# arguments: owner

$data modify entity @s owner set from storage rocketriders:explosions creeper_to_player_map."$(owner)".uuid
$execute if data storage rocketriders:explosions creeper_to_player_map."$(owner)"{pre_death_projectile:true} run data modify entity @s data.pre_death_projectile set value true

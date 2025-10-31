# arguments: UUID

$data modify storage rocketriders:explosions creeper_to_player_map."$(UUID)".uuid set from storage rocketriders:main explosion.modifiers.nbt.data.explosion.origin
$execute if predicate custom:pre_death_projectile run data modify storage rocketriders:explosions creeper_to_player_map."$(UUID)".pre_death_projectile set value true

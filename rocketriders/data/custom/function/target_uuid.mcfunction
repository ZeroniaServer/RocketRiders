# arguments: read_from, run

data modify storage rocketriders:main target_uuid set value {}
$data modify storage rocketriders:main target_uuid.uuid set from $(read_from)
$execute if data storage rocketriders:main target_uuid.uuid positioned ~ ~-1000000 ~ summon snowball positioned ~ ~1000000 ~ if function custom:_target_uuid_/as_snowball on origin run return run $(run)
return fail

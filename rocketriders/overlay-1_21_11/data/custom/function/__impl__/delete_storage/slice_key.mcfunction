# arguments: min_index, (...)

# slice key from string (including any quotes)
$data modify storage rocketriders:delete_storage data.key set string storage rocketriders:delete_storage data.string 0 $(min_index)

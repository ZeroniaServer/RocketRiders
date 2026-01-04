# arguments: min_index, (...)

# slice key from string (including any quotes)
$data modify storage rocketriders:main delete_storage.key set string storage rocketriders:main delete_storage.string 0 $(min_index)

## Kills trident entities unless its owner doesn't already have a trident
execute on origin unless predicate custom:has_trident_in_inventory run return 0
kill

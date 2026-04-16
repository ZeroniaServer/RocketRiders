execute unless entity @s[tag=resetting_inventory] run function custom:player/reset_inventory
advancement revoke @s only lobby:inventory_changed_while_in_lobby

# Open dialog from trigger (1)
execute if score @s sandbox.rocket_nomicon matches 1 run function rr_sandbox:nomicon/pages/main_menu
execute if score @s sandbox.rocket_nomicon matches 1 run return run scoreboard players reset @s sandbox.rocket_nomicon

# Close dialog button (1000001..9999999)
execute if score @s sandbox.rocket_nomicon matches 1000001 run dialog clear @s
# Other pages
execute if score @s sandbox.rocket_nomicon matches 1000002 run function rr_sandbox:nomicon/pages/utilities
execute if score @s sandbox.rocket_nomicon matches 1000003 run function rr_sandbox:nomicon/pages/missiles
execute if score @s sandbox.rocket_nomicon matches 1000004 run function rr_sandbox:nomicon/pages/all
execute if score @s sandbox.rocket_nomicon matches 1000005 run function rr_sandbox:nomicon/pages/powerups
execute if score @s sandbox.rocket_nomicon matches 1000006 run function rr_sandbox:nomicon/pages/weapons_and_tools
execute if score @s sandbox.rocket_nomicon matches 1000007 run function rr_sandbox:nomicon/pages/experimental
execute if score @s sandbox.rocket_nomicon matches 1000001..1999999 run return run scoreboard players reset @s sandbox.rocket_nomicon
# Other actions
execute if score @s sandbox.rocket_nomicon matches 2000001 run function rr_sandbox:nomicon/switch_team
execute if score @s sandbox.rocket_nomicon matches 2000002 run function rr_sandbox:nomicon/clear_inventory
execute if score @s sandbox.rocket_nomicon matches 2000001..2999999 run return run scoreboard players reset @s sandbox.rocket_nomicon

# Give random item (100001..999999)
execute if score @s sandbox.rocket_nomicon matches 100001 run function rr_sandbox:nomicon/pages/utilities
execute if score @s sandbox.rocket_nomicon matches 100001.. run return run scoreboard players reset @s sandbox.rocket_nomicon

# Give items (2..999_99)
scoreboard players set $count var 0
execute if score @s sandbox.rocket_nomicon matches 0..99 run scoreboard players set $count var 1
execute if score @s sandbox.rocket_nomicon matches 100.. run scoreboard players operation $count var = @s sandbox.rocket_nomicon
execute if score @s sandbox.rocket_nomicon matches 100.. run scoreboard players operation $count var %= $100 constant
execute if score @s sandbox.rocket_nomicon matches 100.. run scoreboard players operation @s sandbox.rocket_nomicon /= $100 constant
execute unless score $count var matches 1.. run scoreboard players set $count var 1
execute if score $count var matches 100.. run scoreboard players set $count var 99
execute if score $count var matches 1.. store result storage rocketriders:main nomicon.count int 1 run scoreboard players get $count var
execute if score $count var matches 1.. run function rr_sandbox:nomicon/give_items
scoreboard players reset @s sandbox.rocket_nomicon

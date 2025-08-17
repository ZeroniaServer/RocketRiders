# Open dialog from trigger (1)
execute if score @s nomicon matches 1 run function rr_sandbox:nomicon/pages/main_menu
execute if score @s nomicon matches 1 run return run scoreboard players reset @s nomicon

# Close dialog button (1000001..9999999)
execute if score @s nomicon matches 1000001 run dialog clear @s
# Other pages
execute if score @s nomicon matches 1000002 run function rr_sandbox:nomicon/pages/utilities
execute if score @s nomicon matches 1000003 run function rr_sandbox:nomicon/pages/missiles
execute if score @s nomicon matches 1000004 run function rr_sandbox:nomicon/pages/all
execute if score @s nomicon matches 1000005 run function rr_sandbox:nomicon/pages/powerups
execute if score @s nomicon matches 1000006 run function rr_sandbox:nomicon/pages/weapons_and_tools
execute if score @s nomicon matches 1000001.. run return run scoreboard players reset @s nomicon

# Give random item (100001..999999)
execute if score @s nomicon matches 100001 run function rr_sandbox:nomicon/pages/utilities
execute if score @s nomicon matches 100001.. run return run scoreboard players reset @s nomicon

# Give items (2..999_99)
scoreboard players set $rolls var 0

execute if score @s nomicon matches 0..99 run scoreboard players set $rolls var 1
execute if score @s nomicon matches 100.. run scoreboard players operation $rolls var = @s nomicon
execute if score @s nomicon matches 100.. run scoreboard players operation $rolls var %= $100 constant
execute if score @s nomicon matches 100.. run scoreboard players operation @s nomicon /= $100 constant
execute unless score $rolls var matches 1.. run scoreboard players set $rolls var 1
execute if score $rolls var matches 100.. run scoreboard players set $rolls var 99

execute if score $rolls var matches 1.. run function rr_sandbox:nomicon/give_items
scoreboard players reset @s nomicon

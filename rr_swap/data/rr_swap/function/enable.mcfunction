scoreboard players reset * gamemode_components
scoreboard players set $armor/swap gamemode_components 1
scoreboard players set $config_override.special_treatment gamemode_components -1
scoreboard players set $config_override.splash_streams gamemode_components -1
scoreboard players set $config_override.surprise_eggs gamemode_components -1
scoreboard players set $item_signs/replace_fireball_with_cluster_fireball gamemode_components 1
scoreboard players set $item_signs/replace_vortex_with_icbm gamemode_components 1
scoreboard players set $main_item/shooting_saber gamemode_components 1

tag @s remove switchGamemodes
tag @s add swapEnabled
summon marker 12 55 0 {Tags:["swapplatform"]}

# items
scoreboard players set $config_override.disable_item_category/heavy_missiles gamemode_components -1
scoreboard players set $item_pool.missile/auxiliary gamemode_components 1
scoreboard players set $item_pool.missile/juggerbuster gamemode_components -1
scoreboard players set $item_pool.missile/rifter gamemode_components -1
scoreboard players set $item_pool.missile/warhead gamemode_components 1

scoreboard players set $config_override.disable_item_category/lightning_missiles gamemode_components -1
scoreboard players set $item_pool.missile/hurricane gamemode_components 1
scoreboard players set $item_pool.missile/thunderbolt gamemode_components 1

scoreboard players set $item_pool.missile/ant gamemode_components -1
scoreboard players set $item_pool.missile/blade gamemode_components -1
scoreboard players set $item_pool.missile/catapult gamemode_components -1
scoreboard players set $item_pool.missile/chronullifier gamemode_components -1
scoreboard players set $item_pool.missile/citadel gamemode_components -1
scoreboard players set $item_pool.missile/elder_guardian gamemode_components -1
scoreboard players set $item_pool.missile/gemini gamemode_components -1
scoreboard players set $item_pool.missile/lifter gamemode_components -1
scoreboard players set $item_pool.missile/slasher gamemode_components -1
scoreboard players set $item_pool.missile/tomatwo gamemode_components -1

scoreboard players set $config_override.disable_item_category/utilities gamemode_components -1
scoreboard players set $item_pool.arrow gamemode_components 1
scoreboard players set $item_pool.canopy gamemode_components -1
scoreboard players set $item_pool.cluster_fireball gamemode_components 1
scoreboard players set $item_pool.fireball gamemode_components -1
scoreboard players set $item_pool.icbm gamemode_components 1
scoreboard players set $item_pool.nova_rocket gamemode_components -1
scoreboard players set $item_pool.obsidian_shield gamemode_components 1
scoreboard players set $item_pool.shield gamemode_components 1
scoreboard players set $item_pool.splash gamemode_components -1
scoreboard players set $item_pool.vortex gamemode_components -1

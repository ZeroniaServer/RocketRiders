tag @s remove switchGamemodes
tag @s add crusadeEnabled

scoreboard players reset * gamemode_components
scoreboard players set $arena/castle gamemode_components 1
scoreboard players set $armor/crusade_kit_dependent gamemode_components 1
scoreboard players set $arrow_pickup/only_crusade_mode_archer_kit gamemode_components 1
scoreboard players set $config_override.clutter_collector gamemode_components -1
scoreboard players set $config_override.hardcore gamemode_components -1
scoreboard players set $config_override.item_stacking gamemode_components 1
scoreboard players set $config_override.molerat gamemode_components -1
scoreboard players set $config_override.rocket_residers gamemode_components -1
scoreboard players set $config_override.special_treatment gamemode_components -1
scoreboard players set $config_override.surprise_eggs gamemode_components -1
scoreboard players set $custom_pierce_prevention gamemode_components 1
scoreboard players set $decreased_icbm_flight_duration gamemode_components 1
scoreboard players set $decreased_shooting_saber_attack_damage gamemode_components 1
scoreboard players set $disable_arrow_stacking gamemode_components 1
scoreboard players set $main_item/crusade_kit_dependent gamemode_components 1
scoreboard players set $portal_crystal_protection gamemode_components 1
scoreboard players set $small_portals gamemode_components 1

# items
scoreboard players set $item_pool.missile/auxiliary gamemode_components 1
scoreboard players set $item_pool.missile/juggerbuster gamemode_components 1
scoreboard players set $item_pool.missile/rifter gamemode_components -1
scoreboard players set $item_pool.missile/warhead gamemode_components 1

scoreboard players set $item_pool.missile/hurricane gamemode_components 1
scoreboard players set $item_pool.missile/thunderbolt gamemode_components 1

scoreboard players set $item_pool.missile/ant gamemode_components 1
scoreboard players set $item_pool.missile/blade gamemode_components 1
scoreboard players set $item_pool.missile/catapult gamemode_components 1
scoreboard players set $item_pool.missile/chronullifier gamemode_components 1
scoreboard players set $item_pool.missile/citadel gamemode_components 1
scoreboard players set $item_pool.missile/elder_guardian gamemode_components 1
scoreboard players set $item_pool.missile/gemini gamemode_components 1
scoreboard players set $item_pool.missile/lifter gamemode_components 1
scoreboard players set $item_pool.missile/slasher gamemode_components 1
scoreboard players set $item_pool.missile/tomatwo gamemode_components 1

scoreboard players set $item_pool.arrow gamemode_components 1
scoreboard players set $item_pool.canopy gamemode_components 1
scoreboard players set $item_pool.cluster_fireball gamemode_components -1
scoreboard players set $item_pool.fireball gamemode_components 1
scoreboard players set $item_pool.icbm gamemode_components 1
scoreboard players set $item_pool.nova_rocket gamemode_components 1
scoreboard players set $item_pool.obsidian_shield gamemode_components 1
scoreboard players set $item_pool.shield gamemode_components 1
scoreboard players set $item_pool.splash gamemode_components 1
scoreboard players set $item_pool.vortex gamemode_components 1

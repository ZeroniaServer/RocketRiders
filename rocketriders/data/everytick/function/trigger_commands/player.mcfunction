advancement revoke @s only everytick:check_trigger_commands

## options
# Options menu multi-input functionality
execute if score @s options = @s options unless score @s options matches 0 run function everytick:trigger_commands/options/main
scoreboard players reset @s options
scoreboard players enable @s options

## options.tips
# Nav book Ingame Tips option functionality
execute if score @s options.tips = @s options.tips unless score @s options.tips matches 0 run function everytick:trigger_commands/options.tips/main
scoreboard players reset @s options.tips
scoreboard players enable @s options.tips

## options.parkour_instructions
# Nav book Parkour Instructions option functionality
execute if score @s options.parkour_instructions = @s options.parkour_instructions unless score @s options.parkour_instructions matches 0 run function everytick:trigger_commands/options.parkour_instructions/main
scoreboard players reset @s options.parkour_instructions
scoreboard players enable @s options.parkour_instructions

## options.particles
# Nav book Particles option functionality
execute if score @s options.particles = @s options.particles unless score @s options.particles matches 0 run function everytick:trigger_commands/options.particles/main
scoreboard players reset @s options.particles
scoreboard players enable @s options.particles

## options.auto_fill_hotbar
# Nav book Auto-Fill Hotbar option functionality
execute if score @s options.auto_fill_hotbar = @s options.auto_fill_hotbar unless score @s options.auto_fill_hotbar matches 0 run function everytick:trigger_commands/options.auto_fill_hotbar/main
scoreboard players reset @s options.auto_fill_hotbar
scoreboard players enable @s options.auto_fill_hotbar

## options.crusade.default_spell
# Nav book Default Spell Book option functionality
execute if score @s options.crusade.default_spell = @s options.crusade.default_spell unless score @s options.crusade.default_spell matches 0 run function everytick:trigger_commands/options.crusade.default_spell/main
scoreboard players reset @s options.crusade.default_spell
scoreboard players enable @s options.crusade.default_spell

## options.crusade.starting_kit
# Nav book Starting Crusade Kit option functionality (disabled if `/trigger crusade.respawn_as_kit` is enabled to avoid confusion between the two in the triggers tab-complete list)
execute unless entity @s[predicate=game:match_components/main_item/crusade_kit_dependent,predicate=custom:team/any_playing_team] if score @s options.crusade.starting_kit = @s options.crusade.starting_kit unless score @s options.crusade.starting_kit matches 0 run function everytick:trigger_commands/options.crusade.starting_kit/main
scoreboard players reset @s options.crusade.starting_kit
execute unless entity @s[predicate=game:match_components/main_item/crusade_kit_dependent,predicate=custom:team/any_playing_team] run scoreboard players enable @s options.crusade.starting_kit

## crusade.respawn_as_kit
# Crusade Mode kit select signs functionality.
execute if predicate game:match_components/main_item/crusade_kit_dependent if predicate custom:team/any_playing_team if score @s crusade.respawn_as_kit = @s crusade.respawn_as_kit unless score @s crusade.respawn_as_kit matches 0 run function everytick:trigger_commands/crusade.respawn_as_kit/main
scoreboard players reset @s crusade.respawn_as_kit
execute if predicate game:match_components/main_item/crusade_kit_dependent if predicate custom:team/any_playing_team run scoreboard players enable @s crusade.respawn_as_kit

## sandbox.rocket_nomicon
# Rocket-nomicon functionality.
execute if predicate game:phase/match/play if predicate game:match_components/main_item/rocket_nomicon if predicate custom:team/any_playing_team if score @s sandbox.rocket_nomicon = @s sandbox.rocket_nomicon unless score @s sandbox.rocket_nomicon matches 0 run function everytick:trigger_commands/sandbox.rocket_nomicon/main
scoreboard players reset @s sandbox.rocket_nomicon
execute if predicate game:phase/match/play if predicate game:match_components/main_item/rocket_nomicon if predicate custom:team/any_playing_team run scoreboard players enable @s sandbox.rocket_nomicon

## config.time_of_day
# Time Of Day configuration room sign functionality
execute if predicate game:phase/staging/configuration if predicate rr:has_modification_room if predicate 2811iaj1:in_modification if score @s config.time_of_day = @s config.time_of_day unless score @s config.time_of_day matches 0 run function everytick:trigger_commands/config.time_of_day/main
scoreboard players reset @s config.time_of_day
execute if predicate game:phase/staging/configuration if predicate rr:has_modification_room if predicate 2811iaj1:in_modification run scoreboard players enable @s config.time_of_day

## config.item_delay
# Item Delay configuration room sign functionality
execute if predicate game:phase/staging/configuration if predicate rr:has_modification_room if predicate 2811iaj1:in_modification unless predicate game:game_rules/item_delay/locked if score @s config.item_delay = @s config.item_delay unless score @s config.item_delay matches 0 run function everytick:trigger_commands/config.item_delay/main
scoreboard players reset @s config.item_delay
execute if predicate game:phase/staging/configuration if predicate rr:has_modification_room if predicate 2811iaj1:in_modification unless predicate game:game_rules/item_delay/locked run scoreboard players enable @s config.item_delay



## vote
# Voting Ballot screen functionality
execute if predicate game:phase/staging/configuration if predicate rr:has_voting if score @s vote = @s vote unless score @s vote matches 0 run function everytick:trigger_commands/vote/main
scoreboard players reset @s vote
execute if predicate game:phase/staging/configuration if predicate rr:has_voting run scoreboard players enable @s vote

## parkour
# Teleport to the parkour course
execute unless predicate custom:team/any_arena_team if score @s parkour = @s parkour unless score @s parkour matches 0 run function everytick:trigger_commands/parkour/main
scoreboard players reset @s parkour
execute unless predicate custom:team/any_arena_team run scoreboard players enable @s parkour

## lobby
# Teleporting to locations in the lobby
execute unless predicate custom:team/any_arena_team if score @s lobby = @s lobby unless score @s lobby matches 0 run function everytick:trigger_commands/lobby/main
scoreboard players reset @s lobby
execute unless predicate custom:team/any_arena_team run scoreboard players enable @s lobby

## lobby.edit_settings
# Edit Settings sign and nav book option functionality
execute unless predicate game:phase/staging/configuration if predicate custom:team/lobby if score @s lobby.edit_settings = @s lobby.edit_settings unless score @s lobby.edit_settings matches 0 run function everytick:trigger_commands/lobby.edit_settings/main
scoreboard players reset @s lobby.edit_settings
execute unless predicate game:phase/staging/configuration if predicate custom:team/lobby run scoreboard players enable @s lobby.edit_settings

## leave
execute if predicate custom:team/any_arena_team if score @s leave = @s leave unless score @s leave matches 0 run function everytick:trigger_commands/leave/main
scoreboard players reset @s leave
execute if predicate custom:team/any_arena_team run scoreboard players enable @s leave

## join
execute unless score $freeze_join_trigger global matches 1 unless predicate custom:team/any_playing_team if score @s join = @s join unless score @s join matches 0 run function everytick:trigger_commands/join/main
execute unless score $freeze_join_trigger global matches 1 run scoreboard players reset @s join
execute unless predicate custom:team/any_playing_team run scoreboard players enable @s join

## spectate
execute unless predicate custom:team/spectator if score @s spectate = @s spectate unless score @s spectate matches 0 run function everytick:trigger_commands/spectate/main
scoreboard players reset @s spectate
execute unless predicate custom:team/spectator run scoreboard players enable @s spectate

## close
# Closes server-tracked active dialogs
#execute if score @s active_dialog = @s active_dialog unless score @s active_dialog matches 0 if score @s close matches 1 run function custom:active_dialog/close
#scoreboard players reset @s close
#execute if score @s active_dialog = @s active_dialog unless score @s active_dialog matches 0 run scoreboard players enable @s close

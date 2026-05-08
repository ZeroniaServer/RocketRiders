##############################################
## VOID: How players who fall into the void ##
## are handled by a quick instadeath system ##
##############################################

# Handle Spectators
execute if predicate custom:team/spectator run return run function custom:player/teleport_to_start

# "Cry About It" achievement
execute if predicate game:achievements_can_be_awarded if entity @s[tag=CheckCry] run advancement grant @s only achievements:rr_challenges/cryaboutit

# Handle non-crossers
execute unless entity @s[tag=crosser] run return run damage @s 100.0 out_of_world

# Handle crossers (Rocket Residers)
execute if entity @s[tag=crosser] unless predicate game:game_rules/disable_death_messages/on run tellraw @a[x=0] ["",{selector:"@s"}," tried to leave their base"]
execute if entity @s[tag=crosser] run function custom:player/fake_void_death

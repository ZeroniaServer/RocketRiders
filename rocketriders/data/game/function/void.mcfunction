##############################################
## VOID: How players who fall into the void ##
## are handled by a quick instadeath system ##
##############################################

# Handle Spectators
execute if entity @s[predicate=custom:team/spectator] run return run tp @s 12 100 0.5 90 90


# "Cry About It" achievement
execute if predicate game:achievements_can_be_awarded if entity @s[tag=CheckCry] run advancement grant @s only achievements:rr_challenges/cryaboutit

# Handle non-crossers
execute if entity @s[predicate=!custom:team/spectator,tag=!crosser] run return run damage @s 100.0 out_of_world

# Handle crossers (Rocket Residers)
execute unless predicate game:game_rules/disable_death_messages/on if entity @s[tag=crosser] run tellraw @a[x=0] ["",{"selector":"@s"},{"text":" tried to leave their base"}]
execute if entity @s[tag=crosser] run function custom:fake_void_death

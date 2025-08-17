advancement revoke @s only custom:event/player_punches_punchable_tnt_interaction

tag @s add match_attacker
execute anchored eyes positioned ^ ^ ^ as @e[distance=..10,type=interaction,predicate=entities:type/punchable_tnt/brain] if function custom:match_attacker run function entities:punchable_tnt/actions/punch
tag @s remove match_attacker

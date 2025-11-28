advancement revoke @s only custom:event/player_killed_from_pre_death_projectile

execute if predicate game:achievements_can_be_awarded if predicate game:match_in_play on attacker run advancement grant @s only achievements:rr_challenges/revenge_from_grave

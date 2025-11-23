advancement revoke @s only custom:event/player_killed_from_pre_death_projectile

execute if predicate rr:has_achievements if predicate game:match_in_play on attacker run advancement grant @s only achievements:rr_challenges/revenge_from_grave

execute if predicate game:phase_last/match if function game:set_phase/__exit/game/match run function game:on_phase_end/match
execute if predicate game:phase_last/staging if function game:set_phase/__exit/game/staging run function game:on_phase_end/staging
return 1

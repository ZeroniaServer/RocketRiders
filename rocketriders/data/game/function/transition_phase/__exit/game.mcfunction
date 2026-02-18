execute if predicate game:phase/match if function game:transition_phase/__exit/game/match run function game:on_phase_end/match
execute if predicate game:phase/staging if function game:transition_phase/__exit/game/staging run function game:on_phase_end/staging
return 1

execute if predicate game:phase/match/play if function game:transition_phase/__exit/game/match/play run function game:on_phase_end/match/play
execute if predicate game:phase/match/paused run function game:on_phase_end/match/paused
execute if predicate game:phase/match/over if function game:transition_phase/__exit/game/match/over run function game:on_phase_end/match/over
return 1

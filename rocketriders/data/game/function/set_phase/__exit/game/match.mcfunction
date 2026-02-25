execute if predicate game:phase/match/play if function game:set_phase/__exit/game/match/play run function game:on_phase_end/match/play
execute if predicate game:phase/match/paused run function game:on_phase_end/match/paused
execute if predicate game:phase/match/closing if function game:set_phase/__exit/game/match/closing run function game:on_phase_end/match/closing
return 1

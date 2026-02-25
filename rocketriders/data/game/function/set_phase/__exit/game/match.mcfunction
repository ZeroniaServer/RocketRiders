execute if predicate game:phase_last/match/play if function game:set_phase/__exit/game/match/play run function game:on_phase_end/match/play
execute if predicate game:phase_last/match/pause run function game:on_phase_end/match/pause
execute if predicate game:phase_last/match/closing if function game:set_phase/__exit/game/match/closing run function game:on_phase_end/match/closing
return 1

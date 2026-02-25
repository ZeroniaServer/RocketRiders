execute if predicate game:phase_last/match/closing/tie_window run function game:on_phase_end/match/closing/tie_window
execute if predicate game:phase_last/match/closing/outcome if function game:set_phase/__exit/game/match/closing/outcome run function game:on_phase_end/match/closing/outcome
return 1

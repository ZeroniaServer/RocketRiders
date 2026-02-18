execute if predicate game:phase/match/over/tie_window run function game:on_phase_end/match/over/tie_window
execute if predicate game:phase/match/over/outcome run function game:on_phase_end/match/over/outcome
return 1

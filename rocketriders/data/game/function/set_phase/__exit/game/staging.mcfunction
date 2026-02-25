execute if predicate game:phase_last/staging/configuration run function game:on_phase_end/staging/configuration
execute if predicate game:phase_last/staging/queue if function game:set_phase/__exit/game/staging/queue run function game:on_phase_end/staging/queue
return 1

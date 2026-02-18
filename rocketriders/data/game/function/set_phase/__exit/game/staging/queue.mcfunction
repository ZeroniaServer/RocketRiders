execute if predicate game:phase/staging/queue/waiting run function game:on_phase_end/staging/queue/waiting
execute if predicate game:phase/staging/queue/countdown run function game:on_phase_end/staging/queue/countdown
return 1

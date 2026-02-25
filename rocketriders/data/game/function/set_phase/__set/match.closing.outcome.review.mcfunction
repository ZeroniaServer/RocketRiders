function game:set_phase/__set/__reset

scoreboard players set $phase/game global 1
scoreboard players set $phase/game.match global 2
scoreboard players set $phase/game.match.closing global 1
scoreboard players set $phase/game.match.closing.outcome global 1

return 1

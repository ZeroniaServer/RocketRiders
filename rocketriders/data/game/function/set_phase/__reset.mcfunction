# Set last phase
scoreboard players reset $phase_last/game global
scoreboard players reset $phase_last/game.staging global
scoreboard players reset $phase_last/game.staging.queue global
scoreboard players reset $phase_last/game.match global
scoreboard players reset $phase_last/game.match.play global
scoreboard players reset $phase_last/game.match.closing global
scoreboard players reset $phase_last/game.match.closing.outcome global

execute if score $phase/game global matches 0.. run scoreboard players operation $phase_last/game global = $phase/game global
execute if score $phase/game.staging global matches 0.. run scoreboard players operation $phase_last/game.staging global = $phase/game.staging global
execute if score $phase/game.staging.queue global matches 0.. run scoreboard players operation $phase_last/game.staging.queue global = $phase/game.staging.queue global
execute if score $phase/game.match global matches 0.. run scoreboard players operation $phase_last/game.match global = $phase/game.match global
execute if score $phase/game.match.play global matches 0.. run scoreboard players operation $phase_last/game.match.play global = $phase/game.match.play global
execute if score $phase/game.match.closing global matches 0.. run scoreboard players operation $phase_last/game.match.closing global = $phase/game.match.closing global
execute if score $phase/game.match.closing.outcome global matches 0.. run scoreboard players operation $phase_last/game.match.closing.outcome global = $phase/game.match.closing.outcome global

# Reset current phase
scoreboard players reset $phase/game global
scoreboard players reset $phase/game.staging global
scoreboard players reset $phase/game.staging.queue global
scoreboard players reset $phase/game.match global
scoreboard players reset $phase/game.match.play global
scoreboard players reset $phase/game.match.closing global
scoreboard players reset $phase/game.match.closing.outcome global

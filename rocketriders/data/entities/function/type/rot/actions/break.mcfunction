# Immediately wake adjacent dormant rot when a player breaks the block. This means they know immediately that they've gotten all of it without having to wait up to 2 seconds.
execute as @e[distance=..1.8,type=marker,predicate=entities:type/rot/dormant] run function entities:type/rot/actions/wake_up

# Kill entity stack.
function entities:type/rot/actions/die

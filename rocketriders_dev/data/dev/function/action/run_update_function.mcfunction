# Do this to be absolutely safe
function game:forcestop

# Run the latest update function
schedule function dev:__impl__/run_update_function/step_2 1t
reload

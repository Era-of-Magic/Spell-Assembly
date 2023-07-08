
title @a times 0t 10t 0t

# Fix animations
function spell_assembly:_util/z_never_execute_this/stop_all_animations
schedule function #spell_assembly:schedules/continuous_animations 1s replace

# Other
function #spell_assembly:schedules

# msg
tellraw @a {"translate": "auto.load.datapack","color": "gray"}


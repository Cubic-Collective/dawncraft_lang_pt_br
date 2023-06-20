execute at @e[distance=..2] run particle happy_villager ~ ~ ~ 1 1 1 0 10
particle happy_villager ~ ~ ~ 0 0 0 1 1
execute if block ~ ~ ~ air positioned ^ ^ ^1 run function quirks:raycast
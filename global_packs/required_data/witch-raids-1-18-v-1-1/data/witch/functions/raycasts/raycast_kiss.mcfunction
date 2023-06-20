particle heart ~ ~ ~ 0 0 0 0.02 1
execute at @a[distance=..2] run particle heart ~ ~ ~ 1 1 1 0.02 10
execute unless entity @a[distance=0.01..2] if entity @a[scores={quirk=5},distance=..3] if block ~ ~ ~ #quirks:air positioned ^ ^ ^1 run function quirks:raycasts/raycast_kiss


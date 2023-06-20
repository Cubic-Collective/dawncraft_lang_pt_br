particle smoke ~ ~ ~ 0 0 0 0 3
execute at @a[distance=..2] run particle smoke ~ ~ ~ 1 1 1 0.02 10
effect give @a[distance=..2] blindness 10 0
execute as @a[distance=..2] at @s run playsound minecraft:entity.vex.charge ambient @s ~ ~ ~ 2 2
execute unless entity @a[distance=..2] if entity @e[type=bat,tag=pitcherVampire,distance=..20] if block ~ ~ ~ #quirks:air positioned ^ ^-0.3 ^1 run function quirks:raycasts/raycast_vampire

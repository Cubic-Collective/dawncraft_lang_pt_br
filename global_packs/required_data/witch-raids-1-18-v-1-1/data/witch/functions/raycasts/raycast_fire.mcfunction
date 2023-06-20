particle flame ~ ~ ~ 0 0 0 0.02 3
playsound minecraft:entity.blaze.shoot ambient @a ~ ~ ~ 0.5 1.2
execute at @a[distance=..2] run particle flame ~ ~ ~ 1 1 1 0.02 10
execute at @a[distance=..2] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 fire replace air
execute unless block ~ ~ ~ #quirks:air positioned ^ ^ ^1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 fire replace #quirks:air
execute unless entity @a[distance=..2] if entity @e[type=witch,distance=..50] if block ~ ~ ~ #quirks:air positioned ^ ^ ^1 run function quirks:raycasts/raycast_fire


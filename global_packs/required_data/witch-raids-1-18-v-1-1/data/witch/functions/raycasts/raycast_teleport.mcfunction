particle witch ~ ~ ~ 0 0 0 0 3
playsound minecraft:entity.illusioner.mirror_move ambient @a ~ ~ ~ 0.3 2
execute at @a[distance=..2] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 fire replace air
execute unless block ~ ~ ~ #quirks:air positioned ^ ^ ^1 run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 fire replace #quirks:air
execute unless entity @a[distance=..2] if entity @e[type=zombie,tag=villain,distance=..30] if block ~ ~ ~ #quirks:air positioned ^ ^ ^1 run function quirks:raycasts/raycast_fire

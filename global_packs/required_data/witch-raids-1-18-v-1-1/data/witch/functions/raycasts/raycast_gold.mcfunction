particle minecraft:wax_on ~ ~ ~ 0.1 0.1 0.1 1 10
playsound minecraft:entity.illusioner.cast_spell ambient @a ~ ~ ~ 0.3 2
playsound minecraft:entity.puffer_fish.blow_out ambient @a ~ ~ ~ 0.5 0
playsound minecraft:entity.illusioner.mirror_move ambient @a ~ ~ ~ 0.3 0
#playsound minecraft:entity.arrow.shoot ambient @a ~ ~ ~ 0.5 1.3
execute at @a[distance=..2] run summon area_effect_cloud ~ ~ ~ {Radius:3f,Duration:120,Color:16759552,Effects:[{Id:7b,Amplifier:1b,Duration:20}]}
execute unless block ~ ~ ~ #quirks:air positioned ^ ^ ^1 run summon area_effect_cloud ~ ~ ~ {Radius:3f,Duration:120,Color:16759552,Effects:[{Id:7b,Amplifier:1b,Duration:20}]}
execute unless entity @a[distance=..2] if entity @e[type=zombie,tag=villain,distance=..30] if block ~ ~ ~ #quirks:air positioned ^ ^-0.1 ^1 run function quirks:raycasts/raycast_gold

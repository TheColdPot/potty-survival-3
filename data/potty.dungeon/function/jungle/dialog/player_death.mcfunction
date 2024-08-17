execute store result score dialog_number var run random value 1..4
execute if score dialog_number var matches 1 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": Isn't death enough for you to understand your weakness?"]
execute if score dialog_number var matches 2 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": Give up."]
execute if score dialog_number var matches 3 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": There's no way you can win me!"]
execute if score dialog_number var matches 4 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": Did you hear that? It's the sweet, sweet sound of the eternal silence!"]

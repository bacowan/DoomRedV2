
local obj={}

obj.chars = {
    ["A"]=0xBB,
    ["B"]=0xBC,
    ["C"]=0xBD,
    ["D"]=0xBE,
    ["E"]=0xBF,
    ["F"]=0xC0,
    ["G"]=0xC1,
    ["H"]=0xC2,
    ["I"]=0xC3,
    ["J"]=0xC4,
    ["K"]=0xC5,
    ["L"]=0xC6,
    ["M"]=0xC7,
    ["N"]=0xC8,
    ["O"]=0xC9,
    ["P"]=0xCA,
    ["Q"]=0xCB,
    ["R"]=0xCC,
    ["S"]=0xCD,
    ["T"]=0xCE,
    ["U"]=0xCF,
    ["V"]=0xD0,
    ["W"]=0xD1,
    ["X"]=0xD2,
    ["Y"]=0xD3,
    ["Z"]=0xD4,
    ["a"]=0xD5,
    ["b"]=0xD6,
    ["c"]=0xD7,
    ["d"]=0xD8,
    ["e"]=0xD9,
    ["f"]=0xDA,
    ["g"]=0xDB,
    ["h"]=0xDC,
    ["i"]=0xDD,
    ["j"]=0xDE,
    ["k"]=0xDF,
    ["l"]=0xE0,
    ["m"]=0xE1,
    ["n"]=0xE2,
    ["o"]=0xE3,
    ["p"]=0xE4,
    ["q"]=0xE5,
    ["r"]=0xE6,
    ["s"]=0xE7,
    ["t"]=0xE8,
    ["u"]=0xE9,
    ["v"]=0xEA,
    ["w"]=0xEB,
    ["x"]=0xEC,
    ["y"]=0xED,
    ["z"]=0xEE,
    ["0"]=0xA1,
    ["1"]=0xA2,
    ["2"]=0xA3,
    ["3"]=0xA4,
    ["4"]=0xA5,
    ["5"]=0xA6,
    ["6"]=0xA7,
    ["7"]=0xA8,
    ["8"]=0xA9,
    ["9"]=0xAA
}

-- pokemon data structure http://bulbapedia.bulbagarden.net/wiki/Pok%C3%A9mon_data_substructures_in_Generation_III
G = 1
A = 2
E = 3
M = 4
obj.G = G
obj.A = A
obj.E = E
obj.M = M
obj.substructureOrders = {
    [0] = {G,A,E,M},
    [1] = {G,A,M,E},
    [2] = {G,E,A,M},
    [3] = {G,E,M,A},
    [4] = {G,M,A,E},
    [5] = {G,M,E,A},
    [6] = {A,G,E,M},
    [7] = {A,G,M,E},
    [8] = {A,E,G,M},
    [9] = {A,E,M,G},
    [10] = {A,M,G,E},
    [11] = {A,M,E,G},
    [12] = {E,G,A,M},
    [13] = {E,G,M,A},
    [14] = {E,A,G,M},
    [15] = {E,A,M,G},
    [16] = {E,M,G,A},
    [17] = {E,M,A,G},
    [18] = {M,G,A,E},
    [19] = {M,G,E,A},
    [20] = {M,A,G,E},
    [21] = {M,A,E,G},
    [22] = {M,E,G,A},
    [23] = {M,E,A,G}
}

obj.fileName = '\\\\.\\pipe\\doomred'

obj.battleTypes = {
    ["none"]=28,
    ["wild"]=0,
    ["trainer"]=8
}

obj.pokemonNameLength = 10
obj.pokemonNameSize = 10
obj.substructureSize = 12

-- pointer offsets
obj.otIdOffset = 4
obj.dataStructureOffset = 32
obj.levelOffset = 84
obj.checksumOffset = 28
obj.pokemonNicknameOffset = 8

-- pointers
obj.pokemonNamesPointer = 0x08245F50
obj.wildPokemonBattleFunction = 0x08010672
obj.enemyPokemonPointers = {
    0x0202402C, 0x02024090, 0x020240F4, 0x02024158, 0x020241BC, 0x02024220
}
obj.pokemonNicknameOffset = 8
obj.baseStatsPointer = 0x08254810
obj.movesetPointers = 0x0825D824
obj.frontSpritePointer = 0x0823511C
obj.backSpritePointer = 0x082365BC
obj.palettePointer = 0x0823737C
obj.iconPointers = 0x083D3810

obj.romStartAddress = 0x08000000
obj.romEndAddress = 0x09FC03FF
obj.surroundingBlankSpace = 0

return obj
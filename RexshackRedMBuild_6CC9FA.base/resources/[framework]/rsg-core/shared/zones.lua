Zones = {
    Config = {
        debug = false,
        minScore = 10
    },

    Territories = {

        [1] = {
            center = vector3(-1643.0493, -1359.0187, 84.4027),
            radius = 90.0,
            winner = "cursedbandits",
            occupants = {
                ["cursedbandits"] = {
                    label = "cursedbandits",
                    score = 60,
                },
            },
            blip = 437
        },

        [2] = {
            center = vector3(1898.0948, -1870.4153, 43.1314),
            radius = 90.0,
            winner = "gang2",
            occupants = {},
            blip = 437
        },

        [3] = {
            center = vector3(2234.7581, -143.7646, 47.6217),
            radius = 90.0,
            winner = "gang3",
            occupants = {},
            blip = 437
        },

        [4] = {
            center = vector3(-4180.8921, -3438.1851, 37.0325),
            radius = 120.0,
            winner = "gang4",
            occupants = {},
            blip = 437
        }
    },

    Colors = {
        cursedbandits = 4,
        vagos = 5,
    },

    Gangs = {
        cursedbandits = {
            color = 4,
            name = "cursedbandits",
        },
        gang2 =  {
            color = 32,
            name = "gang2",
        },
        gang3 = {
            color = 27,
            name = "gang3",
        },
        gang4 = {
            color = 5,
            name = "gang4",
        },
        neutral = {
            color = 0,
            name = "",
        },
    }
}

local Translations = {
    info = {
        search = 'Search trough for loot',
    },
    error = {
        cooldown = 'You have to wait %{time} seconds to search again',
        hasBeenSearched = "This has been already searched!",
        nothingFound = "You didn't find anything!",
    },
    progressbar = {
        searching = "Searching through for loot",
    },
    reward = {
        money = "You have found %{amount}$",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
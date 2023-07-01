local Translations = {
    info = {
        search = 'Search trough barrels',
    },
    error = {
        cooldown = 'You have to wait %{time} seconds to search again',
        hasBeenSearched = "This barrel has been already searched!",
        nothingFound = "You didn't find anything!",
    },
    progressbar = {
        searching = "Searching through barrels",
    },
    reward = {
        money = "You have found %{amount}$",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
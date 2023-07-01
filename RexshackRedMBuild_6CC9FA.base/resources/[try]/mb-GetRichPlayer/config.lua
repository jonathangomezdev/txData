Config = {}

----------------------
-- Log discord setup--
----------------------

--Webhook of your channel (tutorial: https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks)
Config.WebHook = "https://discord.com/api/webhooks/1117011291039617096/ljK36rpiSOySfggWWLfUi4cnqp6VClDegGTXvVmlieFhA3Mr-mzTJUG8I5sU__Ol4yqM"

--What information do you want the log to include? (Refer to README.md for more information)
Config.LogMessageType = "short" --Only choose 1: "standard", "short" or "full"

--Avater for your log (optional)
Config.AvatarURL = "https://cdn.discordapp.com/attachments/1075306421287133274/1104248542979178566/mylogo.png"

--Name for your log (optional)
Config.ServerName = "Dutton County Rich List"

--Title for your log (optional)
Config.LogTitle = "Top Richest Players"

--Color for your log (optional). Default: green
Config.LogColour = 65352

--Do you want the log to be automatically sent after a certain time?
--By the default, you need to use an admin command to trigger event
Config.SendLogByTime = {
    enable = true, --Enable/disable this feature
    time = 60, --How long do you want the log to be sent (default: 60 minutes)
}

--Do you want only top richest to be sent?
--Or you want to send money log of all players in database?
--I added this because for larger server, you might be over 200 players and it might cause lag when log details of all of them
--So I recommend to leave this as true
Config.OnlyTopRichest = {
    enable = true, --Enable/disable this feature
    top = 10, --How many top players you want to log? (By default: Top 10 richest players)
}

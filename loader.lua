-- no obfuscation needed right? :P
local script_key = script_key or ""

if script_key == "" then
    if setclipboard then setclipboard("discord.gg/makalhub") end
    game.Players.LocalPlayer:Kick("You have been kicked for not having a key or your key has expired. A new key has been copied. Please join the Discord to proceed. Thank you!")
    return
end

local PlaceScripts = {
    [109983668079237] = "https://api.luarmor.net/files/v3/loaders/e4234626eb098c730fbd8f16d3e26d47.lua",
    [128762245270197] = "https://api.luarmor.net/files/v3/loaders/e4234626eb098c730fbd8f16d3e26d47.lua",
    [96342491571673]  = "https://api.luarmor.net/files/v3/loaders/e4234626eb098c730fbd8f16d3e26d47.lua",
    [286090429]       = "https://api.luarmor.net/files/v3/loaders/487e6b3fb53b505fd1209d284b8534bf.lua",
    [72212564918217]  = "https://api.luarmor.net/files/v3/loaders/7a31017616dd9ad65e9d791e971c1bcc.lua",
    [636649648]       = "https://api.luarmor.net/files/v3/loaders/05c97315391c815cc9461d6a3ba201e1.lua",
    [335132309]       = "https://api.luarmor.net/files/v3/loaders/05c97315391c815cc9461d6a3ba201e1.lua",
    [142823291]       = "https://api.luarmor.net/files/v3/loaders/05c97315391c815cc9461d6a3ba201e1.lua"
}

local url = PlaceScripts[tonumber(game.PlaceId)]
if url then
    loadstring(game:HttpGet(url))()
end

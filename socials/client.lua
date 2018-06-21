RegisterCommand('lv', function(source, args)
    
    local name = GetPlayerName(_source)
    local username = args[1] .. ' ' .. args[2]

    table.remove(args, 1)
    table.remove(args, 1)

    local message = table.concat(args, " ")
    
    TriggerServerEvent('webhook:lifeinvader', name, message)
    
    TriggerEvent('chatMessage', "^0[^1Life^0invader] ^0(" .. name .. ") ^3" .. username .. '^0: ' .. message)
end, false)

RegisterCommand('tweet', function(source, args)
    local name = GetPlayerName(_source)
    local username = args[1] .. ' ' .. args[2]

    table.remove(args, 1)
    table.remove(args, 1)

    local message = table.concat(args, " ")

    TriggerServerEvent('webhook:twitter', name, message)
    
    TriggerEvent('chatMessage', "^0[^4Twitter^0] ^0(" .. name .. ") ^3" .. username .. '^0: ' .. message)
end, false)

RegisterCommand('snapmatic', function(source, args)
    local name = GetPlayerName(_source)
    local username = args[1] .. ' ' .. args[2]

    table.remove(args, 1)
    table.remove(args, 1)

    local message = table.concat(args, " ")

    TriggerServerEvent('webhook:snapmatic', name, message)
    
    TriggerEvent('chatMessage', "^0[^6Snapmatic^0] ^0(" .. name .. ") ^3" .. username .. '^0: ' .. message)
end, false)

-- Shows the help information
RegisterCommand('social-help', function(source, args)
    TriggerEvent('socialHelp')
end, false)

RegisterNetEvent('socialHelp')

AddEventHandler('socialHelp', function() -- adds an event handler so it can be registered
    drawNotification("~y~Socials~w~: Created by ~y~JackD")
    drawNotification("~r~Lifeinvader~w~: /lv (first name) (last name) (message)")
    drawNotification("~b~Twitter~w~: /tweet (first name) (last name) (message)")
    drawNotification("~p~Snapmatic~w~: /snapmatic (first name) (last name) (message)")
end)

function drawNotification(text) --Just Don't Edit!
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end
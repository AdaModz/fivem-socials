local discord_webhook_enabled = 1
local discord_webhook_url = "https://discordapp.com/api/webhooks/460187757265027107/9V3_yhBuEJXTtlPKN8eo6KlPywZg2sXwuem4rUeV7MQZB8uQvyGxCVuAMf8guoI6eRPD" 
 
AddEventHandler('chatMessage', function(source, name, args) 
  sm = stringsplit(args, " "); 
  
    if sm[1] == "/lv" then 
        CancelEvent()
        if tablelength(sm) < 4 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'lv')
        else
            local username = sm[2] .. ' ' .. sm[3] 

            table.remove(sm, 1) 
            table.remove(sm, 1) 
            table.remove(sm, 1) 

            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = "**Lifeinvader** " ..name.. " used Lifeinvader command: **" .. message .. "**" 
                --PerformHttpRequest(lifeinvader_webhook, process, "POST", "content=".. lv_wh_content) 
                local image = "https://vignette.wikia.nocookie.net/gtawiki/images/6/6d/Logo-lifeinvader.jpg/revision/latest?cb=20141231082643"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'Lifeinvader', content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^1Life^0invader] ^0(" .. name .. ") ^3" .. username, { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/tweet" then 
        CancelEvent() 
        if tablelength(sm) < 4 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'tweet')
        else
            local username = sm[2] .. ' ' .. sm[3] 

            table.remove(sm, 1) 
            table.remove(sm, 1) 
            table.remove(sm, 1) 

            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = "**Twitter** " ..name.. " used Twitter command: **" .. message .. "**" 
                --PerformHttpRequest(tweet_webhook, process, "POST", "content=".. tw_wh_content) 
                local image = "http://www.stickpng.com/assets/images/580b57fcd9996e24bc43c53e.png"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'Twitter', content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^4Twitter^0] ^0(" .. name .. ") ^3" .. username, { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/snapmatic" then 
        CancelEvent() 
        if tablelength(sm) < 4 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'snapmatic')
        else
            local username = sm[2] .. ' ' .. sm[3] 

            table.remove(sm, 1) 
            table.remove(sm, 1) 
            table.remove(sm, 1) 

            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = "**Scapmatic** " ..name.. " used Snapmatic command: **" .. message .. "**" 
                --PerformHttpRequest(snapmatic_webhook, process, "POST", "content=".. sm_wh_content) 
                local image = "https://drh1.img.digitalriver.com/DRHM/Storefront/Company/tk2rstar/images/screenshots/2_Snapmatic_Tee_600.jpg"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'Snapmatic', content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^6Snapmatic^0] ^0(" .. name .. ") ^3" .. username, { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/uber" then 
        CancelEvent() 
        if tablelength(sm) < 2 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'snapmatic')
        else
            table.remove(sm, 1) 

            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = "**Uber** " ..name.. " used Uber command: **" .. message .. "**" 
                --PerformHttpRequest(uber_webhook, process, "POST", "content=".. sm_wh_content) 
                local image = "https://images-na.ssl-images-amazon.com/images/I/41kQPEy5nZL._SY355_.jpg"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'Uber', content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^8Uber^0] ^0(" .. name .. ") ^3", { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/social-help" then 
        CancelEvent() 
        TriggerClientEvent('socialHelp', source) 
    end
end) 

function stringsplit(inputstr, sep) 
    if sep == nil then 
        sep = "%s" 
    end 
    local t={} ; i=1 
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do 
        t[i] = str 
        i = i + 1 
    end 
    return t 
end

function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end
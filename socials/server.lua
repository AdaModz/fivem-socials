local lifeinvader_webhook_enabled = 0
local lifeinvader_webhook = "REPLACE ME IF ABOVE IS 1" 
local tweet_webhook_enabled = 0
local tweet_webhook = "REPLACE ME IF ABOVE IS 1" 
local snapmatic_webhook_enabled = 0
local snapmatic_webhook = "REPLACE ME IF ABOVE IS 1" 
 
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
            
            if lifeinvader_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                lv_wh_content = "**Lifeinvader** " ..name.. " used Lifeinvader command: **" .. message .. "**" 
                PerformHttpRequest(lifeinvader_webhook, process, "POST", "content=".. lv_wh_content) 
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
            
            if tweet_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                tw_wh_content = "**Twitter** " ..name.. " used Twitter command: **" .. message .. "**" 
                PerformHttpRequest(tweet_webhook, process, "POST", "content=".. tw_wh_content) 
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
            
            if snapmatic_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                sm_wh_content = "**Scapmatic** " ..name.. " used Snapmatic command: **" .. message .. "**" 
                PerformHttpRequest(snapmatic_webhook, process, "POST", "content=".. sm_wh_content) 
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^6Snapmatic^0] ^0(" .. name .. ") ^3" .. username, { 128, 128, 128 }, message) 
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
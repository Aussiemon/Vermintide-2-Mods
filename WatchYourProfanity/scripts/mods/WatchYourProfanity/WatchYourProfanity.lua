--[[
	author: Aussiemon
	
	-----
 
	Copyright 2018 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
	-----
	
	This mod censors common profanity in lobby messages.
--]]

local mod = get_mod("WatchYourProfanity")

-- ##########################################################
-- ################## Variables #############################

local ChatManager = ChatManager
local math = math
local string = string

-- ##########################################################
-- ################## Functions #############################

mod.censorify = function(self, chat_message, profanity_index)
	if profanity_index > #self.profanity_list then
		return chat_message
	else
		local profanity = self.profanity_list[profanity_index]
		local censor = self.censor[math.min(math.ceil(string.len(profanity)/4.0), #self.censor)]
		return self:censorify(string.gsub(chat_message, profanity, censor), profanity_index + 1)
	end
end

-- ##########################################################
-- #################### Hooks ###############################

mod:hook("ChatManager", "send_chat_message", function (func, self, channel_id, local_player_id, message, ...)
	
	-- Censor profanity
	message = mod:censorify(message, 1, 1)
	
	-- Original function
	local result = func(self, channel_id, local_player_id, message, ...)
	return result
end)

mod:hook("ChatManager", "rpc_chat_message", function (func, self, sender, channel_id, message_sender, local_player_id, message, ...)
	
	-- Censor profanity
	message = mod:censorify(message, 1, 1)
	
	-- Original function
	local result = func(self, sender, channel_id, message_sender, local_player_id, message, ...)
	return result
end)

-- ##########################################################
-- ################### Callback #############################

-- ##########################################################
-- ################### Script ###############################

-- ##########################################################

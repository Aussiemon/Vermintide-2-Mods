--[[
	author: Aussiemon
	
	-----
 
	Copyright 2020 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local mod = get_mod("MoreHats")

-- ##########################################################
-- ################### Commands #############################

local TRANSITIONS = {
  [1] = "more_hats_selection_view_open",
  [2] = "more_hats_selection_view_close",
}
mod:command("more_hats_selection_view_transition", nil, function(transition_number)
  local transition_name = TRANSITIONS[tonumber(transition_number)]
  if transition_name then
    mod:echo("Attempt to call transition: %s", transition_name)
    mod:handle_transition(transition_name, true)
  else
    mod:echo("Wrong transition number.")
  end
end)

-- ##########################################################
-- ################## View Class ############################

-- ##########################################################
-- ################## View Data #############################

local view_data = {

  -- System view name. The view instance will be stored inside `ingame_ui.views[view_name]`
  view_name = "more_hats_selection_view",
  view_settings = {

    -- This function should return view instance. It is called when Ingame UI creates other views
    -- (every time a level is loaded). You don't have to recreate a view instance every time this function is called,
    -- like in this example. You can just create it once somewhere outside of this function and just pass new
    -- `ingame_ui_context` to it. The advantage of not recreating your view every time is it will always remember
    -- its state between levels.
    init_view_function = function(ingame_ui_context)
      return MoreHatsInventory:new(ingame_ui_context)
    end,

    -- Defines when players will be able to use this view (also, when init_view_function will be called)
    active = {
      inn = true, -- in inn/keep
      ingame = true -- during a map run
    },

    -- Forbids certain transitions
    blocked_transitions = {
      inn = { -- in the inn/keep
      },
      ingame = { -- during a map run
        more_hats_selection_view_open = true,
        more_hats_selection_view_close = true
      }
    }
  },

  -- You can define different transitions for your view in here, so later you will be able to call
  -- `mod:handle_transition(transition_name, ...)` for different occasions and also use them for your
  -- 'view_toggle' keybinds.
  view_transitions = {

    -- This transition shows mouse cursor if it's not shown already, blocks all input services except the one
    -- named 'more_hats_selection_view' and switches current view to 'more_hats_selection_view'.
    more_hats_selection_view_open = function(ingame_ui, transition_params)
      if ShowCursorStack.stack_depth == 0 then
        ShowCursorStack.push()
      end

      ingame_ui.input_manager:block_device_except_service("more_hats_selection_view", "keyboard", 1)
      ingame_ui.input_manager:block_device_except_service("more_hats_selection_view", "mouse", 1)
      ingame_ui.input_manager:block_device_except_service("more_hats_selection_view", "gamepad", 1)

      ingame_ui.menu_active = true
      ingame_ui.current_view = "more_hats_selection_view"
    end,

    -- This transition hides mouse cursor, unblocks all input services and sets current view to nil.
    more_hats_selection_view_close = function(ingame_ui, transition_params)
      ShowCursorStack.pop()

      ingame_ui.input_manager:device_unblock_all_services("keyboard", 1)
      ingame_ui.input_manager:device_unblock_all_services("mouse", 1)
      ingame_ui.input_manager:device_unblock_all_services("gamepad", 1)

      ingame_ui.menu_active = false
      ingame_ui.current_view = nil
    end
  }
}

mod:register_view(view_data)

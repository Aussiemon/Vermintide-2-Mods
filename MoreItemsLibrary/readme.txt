
Author: Aussiemon
Version: 1.0

Description: A library of functions to simplify working with mod items.
	
	Usage:
	
		- If the item is completely new, and does not yet have an ItemMasterList entry:
		
			1. Create a new table
			
			2. Fill that table with the relevant regular fields of an ItemMasterList entry
			
			3. Insert your new entry into an array
			
			4. Pass that array to mod.add_mod_items_to_masterlist()
			
			Your item now has an ItemMasterList and NetworkLookup entry. ANY COMPLETELY NEW ITEM WILL CURRENTLY CRASH LOBBY PLAYERS WHO DO NOT HAVE MATCHING ITEM LISTS.
			
		- When an item has an ItemMasterList entry, it can be added to your inventory:
		
			1. Use table.clone to copy the ItemMasterList entry
			
			2. Add a mod_data table to your entry copy (entry.mod_data = {})
			
			3. To this mod_data table, add any of the fields listed below in the backend_template for your item's slot_type. To look at your existing items for reference material, call the Vermintide Mod Framework's 'dtf' function on the return result of PlayFabMirror.get_all_inventory_items().
					
			4. Insert your new entry into an array
			
			5. Pass that array to mod.add_mod_items_to_local_backend() with your mod's name
			
			For example:
				local entry = table.clone(ItemMasterList["ring_06"])
				entry.mod_data = {
					backend_id = "something_unique",
					ItemInstanceId = "same as backend_id",
					CustomData = {
						traits = "[\"ring_potion_duration\"]",
						power_level = "300",
						properties = "{\"power_vs_skaven\":1,\"power_vs_unarmoured\":1}"
					},
					traits = {
						"ring_potion_duration"
					},
					power_level = 300,
					properties = {
						power_vs_unarmoured = 1,
						power_vs_skaven = 1,
					},
				}
				mod:add_mod_items_to_local_backend({entry}, "your mod name")
			
			Your item is now 'owned' for the game session, and will appear in item menus.
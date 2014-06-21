//Created By JayF8514 For UKG Community.
		
		_Weight = call INV_GetOwnWeight;
		
		if (_Weight > 99) exitwith { player groupchat localize "STRS_inv_buyitems_get_zuschwer"; };
		
		['Oil', +(6)] call INV_AddInvItem;
		
		groupchat "You Collected 10 Oil!";
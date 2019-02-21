--[[
	author: Aussiemon
	
	-----
 
	Copyright 2019 Aussiemon

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

local mod = get_mod("WatchYourProfanity")

local mod_data = {
	name = "Watch Your Profanity",
	description = "Censor common profanity in lobby messages.",
	is_togglable = true,
	is_mutator = false,
	mutator_settings = {}
}

mod.profanity_list = {
	"[dD][aA][mM][nN]",
	"[wW][hH][oO][rR][eE]",
	"[wW][eE][tT][bB][aA][cC][kK]",
	"[tT][rR][yY][hH][aA][rR][dD]",
	"[tT][iI][tT][sS]",
	"[sS][uU][cC][kK]",
	"[sS][oO][nN] [oO][fF] [aA] [bB][iI][tT][cC][hH]",
	"[sS][lL][uU][tT]",
	"[sS][hH][iI][tT]",
	"[sS][eE][xX][yY]",
	"[sS][eE][xX]",
	"[sS][aA][dD][iI][sS][tT]",
	"[rR][eE][tT][aA][rR][dD]",
	"[pP][uU][sS][sS][yY]",
	"[pP][oO][rR][nN][oO][gG][rR][aA][pP][hH][yY]",
	"[pP][oO][rR][nN][oO]",
	"[pP][oO][rR][nN]",
	"[pP][iI][sS][sS]",
	"[pP][iI][sS][sS] [oO][fF][fF]",
	"[pP][eE][nN][iI][sS][fF][uU][cC][kK][eE][rR]",
	"[pP][eE][nN][iI][sS]",
	"[oO][rR][gG][aA][sS][mM]",
	"[oO][rR][gG][aA][sS][iI][mM]",
	"[nN][oO][oO][bB]",
	"[nN][iI][gG][gG][eE][rR]",
	"[nN][eE][gG][rR][oO]",
	"[mM][oO][tT][hH][eE][rR][fF][uU][cC][kK][eE][rR]",
	"[mM][oO][tT][hH][eE][rR][fF][uU][cC][kK]",
	"[mM][oO][tT][hH][eE][rR] [fF][uU][cC][kK][eE][rR]",
	"[hH][oO][rR][eE]",
	"[gG][oO][oO][kK]",
	"[gG][oO][dD][dD][aA][mM][nN]",
	"[gG][oO][dD] [dD][aA][mM][nN]",
	"[fF][uU][uU][uU][uU][cC][kK]",
	"[fF][uU][uU][uU][cC][kK]",
	"[fF][uU][uU][cC][kK]",
	"[fF][uU][kK]",
	"[fF][uU][cC][kK][hH][oO][lL][eE]",
	"[fF][uU][cC][kK][aA][sS][sS]",
	"[fF][uU][cC][kK]",
	"[fF][uU][cC][kK] [yY][oO][uU]",
	"[fF][uU][cC][kK] [oO][fF][fF]",
	"[fF][uU][cC][cC][kK]",
	"[fF][uU][cC][cC][cC][kK]",
	"[fF][uU][cC][cC][cC][cC][kK]",
	"[fF][aA][gG][gG][oO][tT]",
	"[fF][aA][gG]",
	"[eE][rR][eE][cC][tT][iI][oO][nN]",
	"[eE][rR][eE][cC][tT]",
	"[dD][oO][uU][cC][hH][eE]",
	"[dD][iI][cC][kK]",
	"[cC][uU][nN][tT]",
	"[cC][oO][oO][nN][nN][aA][sS][sS]",
	"[cC][oO][oO][nN]",
	"[cC][oO][cC][kK][sS][uU][cC][kK][eE][rR]",
	"[cC][oO][cC][kK][sS][uU][cC][kK]",
	"[cC][oO][cC][kK][fF][uU][cC][kK][eE][rR]",
	"[cC][oO][cC][kK]",
	"[cC][hH][iI][nN][kK]",
	"[cC][eE][nN][sS][oO][rR]",
	"[bB][oO][oO][nN][gG]",
	"[bB][iI][tT][cC][hH]",
	"[bB][aA][sS][tT][aA][rR][dD]",
	"[aA][sS][sS][sS][hH][oO][lL][eE]",
	"[aA][sS][sS][hH][oO][lL][eE]",
	"[aA][sS][sS][fF][uU][cC][kK][eE][rR]",
	"[aA][sS][sS]",
	"[aA][sS][sS] [hH][oO][lL][eE]",
	"[aA][sS][sS] [fF][uU][cC][kK]",
	"[aA][rR][sS][eE]",
	"[aA][nN][uU][sS]",
	"[aA][nN][aA][lL]"
}

mod.censor = {
	"*",
	"**",
	"***",
	"****",
	"*****",
	"******",
	"*******",
	"********",
	"*********",
	"**********",
	"***********",
	"************",
	"*************",
	"**************",
	"***************",
	"****************",
	"*****************",
	"******************",
	"*******************",
	"********************",
}

return mod_data

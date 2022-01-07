if BoostMeNot_Enabled == nill then
	BoostMeNot_Enabled = true
end

if BoostMeNot_DeveloperMode == nill then
	BoostMeNot_DeveloperMode = false
end

if BoostMeNot_Threshhold == nill then
	BoostMeNot_Threshhold = 1
end

local function BoostMeNot_ChatFilter(self, event, msg, author, ...)
	if BoostMeNot_Enabled then
		local rating = 0
		local flagMsg = msg
		local count = 0
		for key,value in pairs(BoostMeNot_Blacklist) do
			_, count = string.gsub(msg, key, '|cFFFF0000' .. key ..  '|cFFFFFFFF')
			flagMsg = flagMsg.gsub(flagMsg, key, '|cFFFF0000' .. key ..  '|cFFFFFFFF')
			rating = rating + (count * value)
		end
		local uppercount = 0
		local charcount = 0
		for c in msg:gmatch"%a" do
			charcount = charcount + 1
			if string.match(c, "%u") then
				uppercount = uppercount + 1
			end
		end
		if uppercount >= (charcount * 0.75) then
			rating = rating + 0.5
		end
		
		if BoostMeNot_DeveloperMode then
			if BoostMeNot_DeveloperModeOnlyShowPass then
				if rating >= BoostMeNot_Threshhold then
					return true
				else
					if ChatFrame_ContainsChannel(self, "Trade") then
						local r, g, b, id, sticky = ChatTypeInfo["CHANNEL2"]
						if uppercount >= (charcount * 0.75) then
							self:AddMessage("[2] [" .. author .. "][".. uppercount .."/".. charcount.."][CAPS][".. rating .."]: " .. flagMsg, r, g, b, GetChatTypeIndex("CHANNEL2"));
						else
							self:AddMessage("[2] [" .. author .. "][".. uppercount .."/".. charcount.."][".. rating .."]: " .. flagMsg, r, g, b, GetChatTypeIndex("CHANNEL2"));
						end
					end
					return true
				end
			else
				if ChatFrame_ContainsChannel(self, "Trade") then
					local r, g, b, id, sticky = ChatTypeInfo["CHANNEL2"]
						if uppercount >= (charcount * 0.75) then
							self:AddMessage("[2] [" .. author .. "][".. uppercount .."/".. charcount.."][CAPS][".. rating .."]: " .. flagMsg, r, g, b, GetChatTypeIndex("CHANNEL2"));
						else
							self:AddMessage("[2] [" .. author .. "][".. uppercount .."/".. charcount.."][".. rating .."]: " .. flagMsg, r, g, b, GetChatTypeIndex("CHANNEL2"));
						end
				end
				return true
			end
		else
			return rating >= BoostMeNot_Threshhold
		end
	else 
		return false
	end
end

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", BoostMeNot_ChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", BoostMeNot_ChatFilter)
ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", BoostMeNot_ChatFilter)

BoostMeNot = {}
BoostMeNot.panel = CreateFrame("Frame", "MyAddonPanel", UIParent)
BoostMeNot.panel.name = "BoostMeNot"

BoostMeNot.title = BoostMeNot.panel:CreateFontString("BoostMeNot_TitleLabel", 'ARTWORK', 'GameFontGreenLarge')
BoostMeNot.title:SetPoint("TOPLEFT", 10, -10)
BoostMeNot.title:SetText("BoostMeNot")
BoostMeNot.title:SetTextHeight(40)

BoostMeNot.enable_checkbox_label = BoostMeNot.panel:CreateFontString("BoostMeNot_EnableCheckboxLabel", 'ARTWORK', 'GameFontNormal')
BoostMeNot.enable_checkbox_label:SetPoint("TOPLEFT", 20, -56)
BoostMeNot.enable_checkbox_label:SetText("Enabled")

BoostMeNot.dev_checkbox_label = BoostMeNot.panel:CreateFontString("BoostMeNot_DevCheckboxLabel", 'ARTWORK', 'GameFontNormal')
BoostMeNot.dev_checkbox_label:SetPoint("TOPLEFT", 20, -146)
BoostMeNot.dev_checkbox_label:SetText("Developer Mode")

BoostMeNot.dev_mode_checkbox_label = BoostMeNot.panel:CreateFontString("BoostMeNot_DevModeCheckboxLabel", 'ARTWORK', 'GameFontNormal')
BoostMeNot.dev_mode_checkbox_label:SetPoint("TOPLEFT", 20, -166)
BoostMeNot.dev_mode_checkbox_label:SetText("Only Passed Messages")

BoostMeNot.dev_mode_checkbox = CreateFrame("CheckButton", "BoostMeNot_DevModeCheckbox", BoostMeNot.panel, "OptionsCheckButtonTemplate")
BoostMeNot.dev_mode_checkbox:SetPoint("TOPLEFT", 20 + BoostMeNot_DevModeCheckboxLabel:GetStringWidth() + 2, -162)
BoostMeNot.dev_mode_checkbox.tooltip = "Enables the filtering of messages"
BoostMeNot_DevModeCheckbox:SetText("Only Passed Messages")
BoostMeNot_DevModeCheckbox:SetChecked(BoostMeNot_DeveloperModeOnlyShowPass)
BoostMeNot.dev_mode_checkbox:SetScript("OnClick", 
	function()
		BoostMeNot_DeveloperModeOnlyShowPass = BoostMeNot_DevModeCheckbox:GetChecked();
	end
)

if BoostMeNot_Enabled then
	BoostMeNot_DevModeCheckbox:Enable()
else
	BoostMeNot_DevModeCheckbox:Disable()
end

BoostMeNot.enable_checkbox = CreateFrame("CheckButton", "BoostMeNot_EnableCheckbox", BoostMeNot.panel, "OptionsCheckButtonTemplate")
BoostMeNot.enable_checkbox:SetPoint("TOPLEFT", 20 + BoostMeNot_EnableCheckboxLabel:GetStringWidth() + 2, -48)
BoostMeNot.enable_checkbox.tooltip = "Enables the filtering of messages"
BoostMeNot_EnableCheckbox:SetText("Enabled")
BoostMeNot_EnableCheckbox:SetChecked(BoostMeNot_Enabled)
BoostMeNot.enable_checkbox:SetScript("OnClick", 
	function()
		BoostMeNot_Enabled = BoostMeNot_EnableCheckbox:GetChecked();
		if BoostMeNot_Enabled then
			BoostMeNot_DevModeCheckbox:Enable()
		else
			BoostMeNot_DevModeCheckbox:Disable()
		end
	end
)

BoostMeNot.dev_checkbox = CreateFrame("CheckButton", "BoostMeNot_DevCheckbox", BoostMeNot.panel, "OptionsCheckButtonTemplate")
BoostMeNot.dev_checkbox:SetPoint("TOPLEFT", 20 + BoostMeNot_DevModeCheckboxLabel:GetStringWidth() + 2, -140)
BoostMeNot.dev_checkbox.tooltip = "Enables the filtering of messages"
BoostMeNot_DevCheckbox:SetText("Developer Mode")
BoostMeNot_DevCheckbox:SetChecked(BoostMeNot_DeveloperMode)
BoostMeNot.dev_checkbox:SetScript("OnClick", 
	function()
		BoostMeNot_DeveloperMode = BoostMeNot_DevCheckbox:GetChecked();
	end
)

BoostMeNot.threshold_slider = CreateFrame("Slider", "BoostMeNot_ThreshholdSlider", BoostMeNot.panel, "OptionsSliderTemplate")
BoostMeNot.threshold_slider:SetPoint("TOPLEFT", 20, -105)
BoostMeNot_ThreshholdSliderText:SetText("Threshold")
BoostMeNot_ThreshholdSliderLow:SetText("0.1")
BoostMeNot_ThreshholdSliderHigh:SetText("5")
BoostMeNot.threshold_slider:SetWidth(150)
BoostMeNot.threshold_slider:SetHeight(20)
BoostMeNot.threshold_slider:SetMinMaxValues(0.1, 5)
BoostMeNot.threshold_slider:SetOrientation('HORIZONTAL')
BoostMeNot_ThreshholdSlider:SetValueStep(0.1)
BoostMeNot_ThreshholdSlider:SetObeyStepOnDrag(true)
BoostMeNot.threshold_slider:SetValue(BoostMeNot_Threshhold)
BoostMeNot_ThreshholdSliderText:SetFormattedText("Threshold: %.1f", BoostMeNot_Threshhold)

BoostMeNot.threshold_slider:SetScript("OnValueChanged",  function(self, value)
	BoostMeNot_Threshhold = round(value, 1)
	BoostMeNot_ThreshholdSliderText:SetFormattedText("Threshold: %.2f", value)
	BoostMeNot.threshold_slider:SetValue(BoostMeNot_Threshhold)
end)

InterfaceOptions_AddCategory(BoostMeNot.panel)

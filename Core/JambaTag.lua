-- ================================================================================ --
--				Jamba EE - ( The Awesome MultiBoxing Assistant Ebony's Edition )    --
--				Current Author: Jennifer Cally (Ebony)								--
--				Copyright 2015 - 2018 Jennifer Cally "Ebony"						--
--																					--
--				License: The MIT License (MIT)										--
--				Copyright (c) 2008-2015  Michael "Jafula" Miller					--
--																					--
-- ================================================================================ --

-- Create the addon using AceAddon-3.0 and embed some libraries.
local AJM = LibStub( "AceAddon-3.0" ):NewAddon( 
	"JambaTag",
	"JambaModule-1.0", 
	"AceConsole-3.0", 
	"AceEvent-3.0",
	"AceHook-3.0"
)

-- Load libraries.
local JambaUtilities = LibStub:GetLibrary( "JambaUtilities-1.0" )
local JambaHelperSettings = LibStub:GetLibrary( "JambaHelperSettings-1.0" )
local AceGUI = LibStub( "AceGUI-3.0" )

-- Constants required by JambaModule and Locale for this module.
AJM.moduleName = "Jamba-Tag"
AJM.settingsDatabaseName = "JambaTagProfileDB"
AJM.chatCommand = "jamba-group"
local L = LibStub( "AceLocale-3.0" ):GetLocale( "Core" )
AJM.parentDisplayName = L["TEAM"]
AJM.moduleDisplayName = L["GROUP_LIST"]
-- Icon 
AJM.moduleIcon = "Interface\\Addons\\Jamba\\Media\\GroupIcon.tga"
-- order
AJM.moduleOrder = 10

-- Settings - the values to store and their defaults for the settings database.
AJM.settings = {
	profile = {
        tagList = {},
		groupList = {}
	},
}

-- Configuration.
function AJM:GetConfiguration()
	local configuration = {
		name = AJM.moduleDisplayName,
		handler = AJM,
		type = "group",
		get = "JambaConfigurationGetSetting",
		set = "JambaConfigurationSetSetting",
		args = {	
			add = {
				type = "input",
				name = L["ADD"],
				desc = L["ADD_TAG_HELP"],
				usage = "/jamba-group add <NewGroupName>",
				get = false,
				set = "AddTagCommand",
			},					
			remove = {
				type = "input",
				name = L["REMOVE"],
				desc = L["REMMOVE_TAG_HELP"],
				usage = "/jamba-group remove <NewGroupName>",
				get = false,
				set = "RemoveTagCommand",
			},						
			addtogroup = {
				type = "input",
				name = L["ADD_TO_GROUP"],
				desc = L["ADD_TO_GROUP_HELP"],
				usage = "/jamba-group addtogroup <characterName> <GroupName>",
				get = false,
				set = "AddToGroupCommand",
			},					
			removefromgroup = {
				type = "input",
				name = L["REMOVE_FROM_GROUP"],
				desc = L["REMOVE_FROM_GROUP_HELP"],
				usage = "/jamba-group removefromgroup <characterName> <NewGroupName>",
				get = false,
				set = "RemovefromGroupCommand",
			},				
			push = {
				type = "input",
				name = L["PUSH_ALL_SETTINGS"],
				desc = L["PUSH_SETTINGS_INFO"],
				usage = "/jamba-tag push",
				get = false,
				set = "JambaSendSettings",
			},	
		},
	}
	return configuration
end

-------------------------------------------------------------------------------------------------------------
-- Command this module sends.
-------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
-- Messages module sends.
-------------------------------------------------------------------------------------------------------------
AJM.GROUP_LIST_CHANGED = "JambaMessageGroupListChanged"
-------------------------------------------------------------------------------------------------------------
-- Constants used by module.
-------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------
-- Settings Dialogs.
-------------------------------------------------------------------------------------------------------------

local function SettingsCreateGroupList()
	-- Position and size constants.
	local top = JambaHelperSettings:TopOfSettings()
	local left = JambaHelperSettings:LeftOfSettings()
	local buttonHeight = JambaHelperSettings:GetButtonHeight()
	local headingHeight = JambaHelperSettings:HeadingHeight()
	local headingWidth = JambaHelperSettings:HeadingWidth( false )
	local horizontalSpacing = JambaHelperSettings:GetHorizontalSpacing()
	local verticalSpacing = JambaHelperSettings:GetVerticalSpacing()
	local iconSize = 30
	local iconHight = iconSize + 10
	local lefticon =  left + iconSize
	local teamListWidth = headingWidth - 90
	local topOfList = top - headingHeight
	-- Team list internal variables (do not change).
	AJM.settingsControl.teamListHighlightRow = 1
	AJM.settingsControl.teamListOffset = 1
	-- A blank to get layout to show right?
	JambaHelperSettings:CreateHeading( AJM.settingsControl, L[""], movingTop, false )
	topOfList = topOfList - headingHeight
	--Main Heading	
	JambaHelperSettings:CreateHeading( AJM.settingsControl, L["GROUP_LIST"], top, false )
	-- Create a team list frame.
	
	local list = {}
	list.listFrameName = "JambaTagSettingsGroupListFrame"
	list.parentFrame = AJM.settingsControl.widgetSettings.content
	list.listTop = topOfList
	list.listLeft = lefticon
	list.listWidth = teamListWidth
	list.rowHeight = 20
	list.rowsToDisplay = 15
	list.columnsToDisplay = 1
	list.columnInformation = {}
	list.columnInformation[1] = {}
	list.columnInformation[1].width = 100
	list.columnInformation[1].alignment = "LEFT"
	list.scrollRefreshCallback = AJM.SettingsGroupListScrollRefresh
	list.rowClickCallback = AJM.SettingsGroupListRowClick
	AJM.settingsControl.groupList = list
	JambaHelperSettings:CreateScrollList( AJM.settingsControl.groupList )
	-- Position and size constants (once list height is known).
	local bottomOfList = topOfList - list.listHeight - verticalSpacing

	AJM.settingsControl.tagListButtonAdd = JambaHelperSettings:Icon( 
		AJM.settingsControl, 
		iconSize,
		iconSize,
		"Interface\\Addons\\Jamba\\Media\\CharAddParty.tga", --icon Image
		left - iconSize - 11, 
		topOfList - verticalSpacing ,
		L[""], 
		AJM.SettingsAddClick,
		L["BUTTON_TAG_ADD_HELP"]
	)		
	AJM.settingsControl.groupListButtonRemove = JambaHelperSettings:Icon( 
		AJM.settingsControl, 
		iconSize,
		iconSize,
		"Interface\\Addons\\Jamba\\Media\\CharRemoveParty.tga", --icon Image
		left - iconSize - 11, 
		topOfList - verticalSpacing - iconHight,
		L[""], 
		AJM.SettingsRemoveClick,
		L["BUTTON_TAG_REMOVE_HELP"]
	)
	local bottomOfSection = bottomOfList -  buttonHeight - verticalSpacing

	return bottomOfSection
end

local function SettingsCreate()
	AJM.settingsControl = {}
	-- Create the settings panel.
	JambaHelperSettings:CreateSettings( 
		AJM.settingsControl, 
		AJM.moduleDisplayName, 
		AJM.parentDisplayName, 
		AJM.SettingsPushSettingsClick,
		AJM.moduleIcon,
		AJM.moduleOrder
	)
	-- Create the team list controls.
	local bottomOfGroupList = SettingsCreateGroupList()
	local helpTable = {}
	JambaHelperSettings:CreateHelp( AJM.settingsControl, helpTable, AJM:GetConfiguration() )		
end

-------------------------------------------------------------------------------------------------------------
-- Settings Populate.
-------------------------------------------------------------------------------------------------------------

function AJM:BeforeJambaProfileChanged()	
end

function AJM:OnJambaProfileChanged()	
	AJM:SettingsRefresh()
end

function AJM:SettingsRefresh()
	-- Update the settings team list.
	AJM:SettingsGroupListScrollRefresh()
	--AJM:SettingsTagListScrollRefresh()
end

-- Settings received.
function AJM:JambaOnSettingsReceived( characterName, settings )	
	characterName = JambaUtilities:AddRealmToNameIfMissing( characterName )
	if characterName ~= AJM.characterName then
		-- Update the settings.
		AJM.db.tagList = JambaUtilities:CopyTable( settings.tagList )
		AJM.db.groupList = JambaUtilities:CopyTable( settings.groupList )
		AJM:InitializeAllTagsList()
		-- New team and tag lists coming up, highlight first item in each list.
		AJM.settingsControl.groupListHighlightRow = 1
		-- Refresh the settings.
		AJM:SettingsRefresh()
		AJM:SettingsGroupListRowClick( 1, 1 )
		AJM:SendMessage( AJM.GROUP_LIST_CHANGED )
		JambaApi.refreshDropDownList()
		-- Tell the player.
		AJM:Print( L["SETTINGS_RECEIVED_FROM_A"]( characterName ) )
	end
end

-------------------------------------------------------------------------------------------------------------
-- Popup Dialogs.
-------------------------------------------------------------------------------------------------------------

-- Initialize Popup Dialogs.
local function InitializePopupDialogs()
   -- Ask the name of the tag to add as to the character.
   StaticPopupDialogs["JAMBATAG_ASK_TAG_NAME"] = {
        text = L["NEW_GROUP_NAME"],
        button1 = ACCEPT,
        button2 = CANCEL,
        hasEditBox = 1,
        timeout = 0,
		whileDead = 1,
		hideOnEscape = 1,
		OnShow = function( self )
			self.editBox:SetText("")
            self.button1:Disable()
            self.editBox:SetFocus()
        end,
		OnAccept = function( self )
			AJM:AddTagGUI( self.editBox:GetText() )
		end,
		EditBoxOnTextChanged = function( self )
            if not self:GetText() or self:GetText():trim() == "" then
				self:GetParent().button1:Disable()
            else
                self:GetParent().button1:Enable()
            end
        end,		
		EditBoxOnEnterPressed = function( self )
            if self:GetParent().button1:IsEnabled() then
				AJM:AddTagGUI( self:GetText() )
            end
            self:GetParent():Hide()
        end,				
    }
   -- Confirm removing characters from member list.
   StaticPopupDialogs["JAMBATAG_CONFIRM_REMOVE_TAG"] = {
        text = L["REMOVE_FROM_TAG_LIST"],
		button1 = ACCEPT,
        button2 = CANCEL,
        timeout = 0,
		whileDead = 1,
		hideOnEscape = 1,
        OnAccept = function( self )
			AJM:RemoveTagGUI()
		end,
    }        
end

-------------------------------------------------------------------------------------------------------------
-- Group Management.
-------------------------------------------------------------------------------------------------------------

local function AllTag()
	return L["ALL_LOWER"]
end

local function MasterTag()
	return L["MASTER_LOWER"]
end

local function MinionTag()
	return L["MINION_LOWER"]
end

local function GroupList()
	return AJM.db.groupList
end	

-- Does the Group list have this tag?
local function DoesGroupExist( group )
	local tag = JambaUtilities:Lowercase(group)
	local haveTag = false
	for index, findTag in ipairs( AJM.db.groupList ) do
		--AJM:Print("find", findTag, index )
		if findTag == tag then
			haveTag = true
			break
		end
	end
	return haveTag
end

local function AddGroup( group )
	if group ~= nil then
		if DoesGroupExist( group ) == false then
			table.insert( AJM.db.groupList, group )
			table.sort( AJM.db.groupList )
			JambaApi.refreshDropDownList()
			AJM:SendMessage( AJM.GROUP_LIST_CHANGED )
		end
	end	
end

-- If Calling to Remove a group we should Use JambaApi.RemoveGroup( Groupname ) or RemoveGroup then using This
local function RemoveFromGroupList( tag )
	if DoesGroupExist( tag ) == true then
		for index, group in pairs( AJM.db.groupList ) do
			if group == tag then
			table.remove( AJM.db.groupList, index )
			table.sort( AJM.db.groupList )
			end	
		end
	AJM:SettingsGroupListScrollRefresh()
	JambaApi.refreshDropDownList()
	AJM:SendMessage( AJM.GROUP_LIST_CHANGED )
	end	
end

local function RemoveGroup( tag )
	--  We don't Want to Tag to be part of the character Groups as it has been removed!
	for characterName, tagList in pairs( AJM.db.tagList ) do
		for index, tagIterated in ipairs( tagList ) do
			if tagIterated == tag then
				--AJM:Print("Remove tag:", tag, "from character:", characterName )
				JambaApi.RemoveGroupFromCharacter( characterName, tag )	
			end
		end
	end	
	RemoveFromGroupList( tag )
	AJM:SettingsGroupListScrollRefresh()
	JambaPrivate.Team.RefreshGroupList()
	AJM:SendMessage( AJM.GROUP_LIST_CHANGED )
end

-- We Do Not Want To Remove "System" Groups!
local function IsASystemGroup( tag )
	if tag == MasterTag() or tag == MinionTag() or tag == AllTag() then
		return true
	end
	--[[
	for id, apiClass in pairs( CLASS_SORT_ORDER ) do
		if tag == JambaUtilities:Lowercase(apiClass) then
			return true
		end	
	end
	]]
	return false
end

local function GetGroupListMaximumOrder()
	local largestPosition = 0 
	for groupId, tag in pairs( AJM.db.groupList ) do
		if groupId > largestPosition then
			largestPosition = groupId
		end	
	end
	return largestPosition
end 

local function GetGroupAtPosition( position )
	--AJM:Print("test", position )
	groupAtPosition = nil
		for groupId, groupName in pairs( AJM.db.groupList ) do
			if groupId == position then
				--AJM:Print("cptest",characterName, groupId, groupName)
				groupAtPosition = groupName
			end
		end
	return groupAtPosition	
end	

-------------------------------------------------------------------------------------------------------------
-- Team Group Management.
-------------------------------------------------------------------------------------------------------------

local function TeamGroupList()
	return AJM.db.groupList
end

local function IsCharacterInGroup( characterName, group )
	local tag = JambaUtilities:Lowercase(group)
	local DoesCharacterHaveTag = false
	for name, tagList in pairs( AJM.db.tagList ) do
		if characterName == name then
			for index, tagIterated in pairs( tagList ) do
				if tag == tagIterated then
					DoesCharacterHaveTag = true
				end
			end
		end	
	end	
	return DoesCharacterHaveTag
end

local function GetGroupListForCharacter( characterName )
	--AJM:Print("getList", characterName)
	characterName = JambaUtilities:AddRealmToNameIfMissing( characterName )
	if AJM.db.tagList[characterName] ~= nil then
		return AJM.db.tagList[characterName]
	end	
end

local function CharacterMaxGroups()
	--return AJM.characterTagList
	local maxOrder = 0
	for characterName, tagList in pairs( AJM.db.tagList ) do
		for index, tag in pairs( tagList ) do
			if index >= maxOrder then
				maxOrder = index
			end
		end	
	end
	return maxOrder
end	

local function DisplayGroupsForCharacter( characterName )
	AJM.characterTagList = GetGroupListForCharacter( characterName )
	table.sort( AJM.characterTagList )
	AJM:SettingsGroupListScrollRefresh()
end

local function CharacterAlreadyInGroup( characterName, tag )
	local canAdd = false
	for name, tagList in pairs( AJM.db.tagList ) do
		if characterName == name then
			for index, tagIterated in pairs( tagList ) do
				if tag == tagIterated then
					canAdd = true
				end	
			end		
		end
	return canAdd	
	end
end	

local function AddCharacterToGroup( characterName, tag )
	if characterName == nil or tag == nil then
		return
	end	
	-- We Add The GroupName To The characterName in the list!
	for name, tagList in pairs( AJM.db.tagList ) do
		if characterName == name then
			local allReadyInGroup = CharacterAlreadyInGroup( characterName, tag )
			--AJM:Print("hereWeAddTOTagList", characterName, tag, allReadyInGroup)
			if allReadyInGroup == false then
				table.insert(  tagList, tag )
				table.sort ( tagList )
			end	
		end
	end
end	

local function RemoveGroupFromCharacter( characterName, tag )
	if characterName == nil or tag == nil then
		return
	end	
	-- We Remove a GroupName From the characterName in the list!
	for name, tagList in pairs( AJM.db.tagList ) do
		if characterName == name then
			for index, tagIterated in pairs( tagList ) do
				if tag == tagIterated then
					--AJM:Print("timetoRemovetag")
					table.remove( tagList, index )
					table.sort( tagList )
				end	
			end
		end
	end
end	

-- This should abeble to be removed now.
-- this can be used to add a character that you already know the name of the table. [characterTable] [GroupName/Tag]
local function AddTag( tagList, tag )
	table.insert( tagList, tag )	
	AddGroup( tag )
	AJM:SettingsGroupListScrollRefresh()
	JambaPrivate.Team.RefreshGroupList()
end

--TODO ADD CLASS TO LIST
local function CheckSystemTagsAreCorrect()
	for characterName, characterPosition in JambaPrivate.Team.TeamList() do
		--AJM:Print("CHeckTags", characterName)
		local characterTagList = GetGroupListForCharacter( characterName )
		-- Do we have a tagList for this character? if not make one!
		if characterTagList == nil then
			AJM.db.tagList[characterName] = {}
		end	
		-- Make sure all characters have the "all" tag.
		if IsCharacterInGroup ( characterName, AllTag() ) == false then
			AddCharacterToGroup( characterName, AllTag() )
		end
		-- Find Class and add If Known.
		
		
		
		-- Master or minion?
		if JambaPrivate.Team.IsCharacterTheMaster( characterName ) == true then
			--AJM:Print("Master", characterName, characterTagList)
			if IsCharacterInGroup ( characterName, MasterTag() ) == false then	
				AddCharacterToGroup( characterName, MasterTag() )
			end
			if IsCharacterInGroup ( characterName, MinionTag() ) == true then	
				RemoveGroupFromCharacter( characterName, MinionTag() )
			end
		else
			-- Make sure minions have the minion tag and not the master tag.
			if IsCharacterInGroup ( characterName, MasterTag() ) == true then	
				RemoveGroupFromCharacter( characterName, MasterTag() )
			end
			if IsCharacterInGroup ( characterName, MinionTag() ) == false then
				AddCharacterToGroup( characterName, MinionTag() )
			end
		end
	end
end

-- Initialise the The Group list.
function AJM:InitializeAllTagsList()
	-- Add system tags to the list.
	AddGroup( AllTag() )
	AddGroup( MasterTag() )
	AddGroup( MinionTag() )
	for id, class in pairs( CLASS_SORT_ORDER ) do
		AddGroup( JambaUtilities:Lowercase(class) )
	end
end

-------------------------------------------------------------------------------------------------------------
-- GUI & Command Lines & Other Addons Acess.
-------------------------------------------------------------------------------------------------------------

function AJM:AddTagGUI( group )
	local tag = JambaUtilities:Lowercase( group )
	-- Cannot add a system tag.
	if IsASystemGroup( tag ) == false then
		-- Cannot add a tag that already exists.
		if DoesGroupExist( tag ) == false then
			-- Add tag, resort and display.
			AddGroup( tag ) 
			AJM:SettingsGroupListScrollRefresh()	
		end
	end
end

function AJM:RemoveTagGUI()
	local tag = GetGroupAtPosition( AJM.settingsControl.groupListHighlightRow )
	-- Cannot remove a system tag.
	if IsASystemGroup( tag ) == false then
		RemoveGroup( tag )	
	end
end

-- Add Group to group list from the command line.
function AJM:AddTagCommand( info, parameters )
	local tag = JambaUtilities:Lowercase( parameters )
	--local characterName, tag = strsplit( " ", inputText )
	if IsASystemGroup( tag ) == false then
		-- Cannot add a tag that already exists.
		if DoesGroupExist( tag ) == false then
			AddGroup( tag ) 
			AJM:SettingsGroupListScrollRefresh()	
		end
	end
end

-- Add Group to group list from the command line.
function AJM:AddToGroupCommand( info, parameters )
	--local inputText = JambaUtilities:Lowercase( parameters )
	local characterName, tag = strsplit( " ", parameters )
	AJM:Print("test", characterName, tag )
	if characterName ~= nil or tag ~= nil then
		if DoesGroupExist( tag ) == false then
			AJM:SettingsGroupListScrollRefresh()
		end	
	else
	AJM:Print("[PH]"..L["WRONG_TEXT_INPUT_GROUP"] )
	end
end


-- Remove tag from character from the command line.
function AJM:RemoveTagCommand( info, parameters )
	local inputText = JambaUtilities:Lowercase( parameters )
	local characterName, tag = strsplit( " ", inputText )
	

end

function AJM:OnMasterChanged( message, characterName )
	CheckSystemTagsAreCorrect()
	AJM:SettingsRefresh()
end

function AJM:OnCharacterAdded( message, characterName )
	CheckSystemTagsAreCorrect()
	AJM:SettingsRefresh()
end

function AJM:OnCharacterRemoved( message, characterName )
	AJM.db.tagList[characterName] = nil
	AJM:SettingsRefresh()
end

-------------------------------------------------------------------------------------------------------------
-- Settings Callbacks.
-------------------------------------------------------------------------------------------------------------

function AJM:SettingsGroupListScrollRefresh()
	FauxScrollFrame_Update(
		AJM.settingsControl.groupList.listScrollFrame, 
		GetGroupListMaximumOrder(),
		AJM.settingsControl.groupList.rowsToDisplay, 
		AJM.settingsControl.groupList.rowHeight
	)
	
	AJM.settingsControl.groupListOffset = FauxScrollFrame_GetOffset( AJM.settingsControl.groupList.listScrollFrame )
	for iterateDisplayRows = 1, AJM.settingsControl.groupList.rowsToDisplay do
		-- Reset.
		AJM.settingsControl.groupList.rows[iterateDisplayRows].columns[1].textString:SetText( "" )
		AJM.settingsControl.groupList.rows[iterateDisplayRows].columns[1].textString:SetTextColor( 1.0, 1.0, 1.0, 1.0 )
		AJM.settingsControl.groupList.rows[iterateDisplayRows].highlight:SetColorTexture( 0.0, 0.0, 0.0, 0.0 )
		-- Get data.
		local dataRowNumber = iterateDisplayRows + AJM.settingsControl.groupListOffset
		if dataRowNumber <= GetGroupListMaximumOrder() then
			-- Put character name into columns.
			local group = GetGroupAtPosition( dataRowNumber )
			local groupName = JambaUtilities:Capitalise( group )
			AJM.settingsControl.groupList.rows[iterateDisplayRows].columns[1].textString:SetText( groupName )
			-- System tags are Yellow.
			if IsASystemGroup( group ) == true then
				AJM.settingsControl.groupList.rows[iterateDisplayRows].columns[1].textString:SetTextColor( 1.0, 0.96, 0.41, 1.0 )
			end
			-- Highlight the selected row.
			if dataRowNumber == AJM.settingsControl.groupListHighlightRow then
				AJM.settingsControl.groupList.rows[iterateDisplayRows].highlight:SetColorTexture( 1.0, 1.0, 0.0, 0.5 )
			end
		end
	end
end

function AJM:SettingsGroupListRowClick( rowNumber, columnNumber )		
	if AJM.settingsControl.groupListOffset + rowNumber <= GetGroupListMaximumOrder() then
		AJM.settingsControl.groupListHighlightRow = AJM.settingsControl.groupListOffset + rowNumber
		AJM:SettingsGroupListScrollRefresh()
	end
end

function AJM:SettingsPushSettingsClick( event )
	AJM:JambaSendSettings()
end

function AJM:SettingsAddClick( event )
	StaticPopup_Show( "JAMBATAG_ASK_TAG_NAME" )
end

function AJM:SettingsRemoveClick( event )
	local group = GetGroupAtPosition( AJM.settingsControl.groupListHighlightRow )
	StaticPopup_Show( "JAMBATAG_CONFIRM_REMOVE_TAG", group )
end

-------------------------------------------------------------------------------------------------------------
-- Addon initialization, enabling and disabling.
-------------------------------------------------------------------------------------------------------------

-- Initialise the module.
function AJM:OnInitialize()
	-- Current character tag list. 
	AJM.characterTagList = {}
	-- Create the settings control.
	SettingsCreate()
	-- Initialise the JambaModule part of this module.
	AJM:JambaModuleInitialize( AJM.settingsControl.widgetSettings.frame )
	-- Populate the settings.
	AJM:SettingsRefresh()	
	-- Initialise the popup dialogs.
	InitializePopupDialogs()
	-- Initialise the all tags list.
	AJM:InitializeAllTagsList()
end

-- Called when the addon is enabled.
function AJM:OnEnable()
	-- Make sure all the system tags are correct.
	CheckSystemTagsAreCorrect()
	AJM:RegisterMessage( JambaPrivate.Team.MESSAGE_TEAM_MASTER_CHANGED, "OnMasterChanged" )
	AJM:RegisterMessage( JambaPrivate.Team.MESSAGE_TEAM_CHARACTER_ADDED, "OnCharacterAdded" )
	AJM:RegisterMessage( JambaPrivate.Team.MESSAGE_TEAM_CHARACTER_REMOVED, "OnCharacterRemoved" )
	-- Kickstart the settings team and tag list scroll frame.
	AJM:SettingsGroupListScrollRefresh()
	-- Click the first row in the team list table to populate the tag list table.
	AJM:SettingsGroupListRowClick( 1, 1 )
end

-- Called when the addon is disabled.
function AJM:OnDisable()
end
	
-------------------------------------------------------------------------------------------------------------
-- Commands.
-------------------------------------------------------------------------------------------------------------

function AJM:JambaOnCommandReceived( sender, commandName, ... )
end

-- Functions available for other addons Jamba-EE > v8 
-- Group List API
JambaApi.GroupList = GroupList
JambaApi.GROUP_LIST_CHANGED = AJM.GROUP_LIST_CHANGED
JambaApi.DoesGroupExist = DoesGroupExist
JambaApi.IsASystemGroup = IsASystemGroup
JambaApi.GetGroupListMaximumOrder = GetGroupListMaximumOrder
JambaApi.GetGroupAtPosition = GetGroupAtPosition
JambaApi.AddGroup = AddGroup
JambaApi.RemoveGroup = RemoveGroup

--Character Group API
JambaApi.TeamGroupList = TeamGroupList
JambaApi.IsCharacterInGroup = IsCharacterInGroup
JambaApi.GetGroupListForCharacter = GetGroupListForCharacter
JambaApi.CharacterMaxGroups = CharacterMaxGroups
JambaApi.AddCharacterToGroup = AddCharacterToGroup
JambaApi.RemoveGroupFromCharacter = RemoveGroupFromCharacter
JambaApi.CharacterAlreadyInGroup = CharacterAlreadyInGroup
JambaApi.PushGroupSettings = AJM.SettingsPushSettingsClick

-- SystemTags API
JambaApi.AllGroup = AllTag
JambaApi.MasterGroup = MasterTag 
JambaApi.MinionGroup = MinionTag

-- Old Way, most modules need to be rewiren/udated to support the new API 
-- but for now we should keep this here incase we Mass Up Somewhere -- Ebony
JambaPrivate.Tag.MasterTag = MasterTag
JambaPrivate.Tag.MinionTag = MinionTag
JambaPrivate.Tag.AllTag = AllTag
JambaPrivate.Tag.DoesCharacterHaveTag = IsCharacterInGroup
JambaApi.DoesCharacterHaveTag = IsCharacterInGroup
JambaApi.AllTag = AllTag

-- ================================================================================ --
--				Jamba EE - ( The Awesome MultiBoxing Assistant Ebony's Edition )    --
--				Current Author: Jennifer Cally (Ebony)								--
--				Copyright 2015 - 2018 Jennifer Cally "Ebony"						--
--																					--
--				License: The MIT License (MIT)										--
--				Copyright (c) 2008-2015  Michael "Jafula" Miller					--
--																					--
-- ================================================================================ --

local L = LibStub("AceLocale-3.0"):NewLocale( "Core", "enUS", true )
-- NewLocales

--PreCoded ALL
L["JAMBA"] = "Jamba"
L["JAMBA EE"] = "Jamba EE"
L[""] = true
L[" "] = true
L[": "] = true
L["("] = true
L[")"] = true
L[" / "] = true
L["%"] = true
L["N/A"] = true
L["PUSH_SETTINGS"] = "Push Settings"
L["PUSH_ALL_SETTINGS"] = "Push All Settings"
L["PUSH_SETTINGS_INFO"] = "Push Settings To Team Members" 
L["MINION"] = "Minion"
L["NAME"] = "Name"
L["MASTER"] = "Master"
L["ALL"] = "All"
L["MESSAGES_HEADER"] = "Messages"
L["MESSAGE_AREA"]  = "Message Area"
L["SEND_WARNING_AREA"] = "Warning Area"
L["PH"] = "PH"
L["GUILD"] = "Guild"
L["CTRL"] = "Ctrl"
L["SHIFT"] = "Shift"
L["ALT"] = "Alt"
L["UPDATE"] = "Update"


-- Display Options
L["APPEARANCE_LAYOUT_HEALDER"] = "Appearance & Layout"
L["BLIZZARD"] = "Blizzard"
L["BLIZZARD_TOOLTIP"] = "Blizzard Tooltip"
L["BLIZZARD_DIALOG_BACKGROUND"] = "Blizzard Dialog Background"
L["ARIAL_NARROW"] = "Arial Narrow"
L["NUMBER_OF_ROWS"] = "Number Of Rows"
L["SCALE"] = "Scale"
L["TRANSPARENCY"] = "Transparency"
L["BORDER_STYLE"] = "Border Style" 
L["BORDER COLOUR"] = "Border Colour"
L["BACKGROUND"] = "Background"
L["BG_COLOUR"] = "Background Colour"
L["FONT"] = "Font"
L["FONT_SIZE"] = "Font Size"
L["BAR_TEXTURES"] = "Status Bar Textures"
L["WIDTH"] = "Width"
L["HEIGHT"] = "Hight"

-- Numbers
L["1"] = "One"
L["2"] = "Two"
L["3"] = "Three"
L["4"] = "Four"
L["5"] = "Five"
L["6"] = "Six"
L["7"] = "Seven"
L["8"] = "Eight"
L["9"] = "Nine"
L["10"] = "Ten"
L["11"] = "Eleven"
L["12"] = "Twelve"
L["13"] = "Thirteen"
L["14"] = "Fourteen"
L["15"] = "Fifteen"
L["16"] = "Sixteen"
L["17"] = "Sventeen"
L["18"] = "Eighteen"
L["19"] = "Nineteen"
L["20"] = "Twenty"

--------------------------
-- Modules Locale
L["NEWS"] = "News"
L["OPTIONS"] = "Options"
L["SETUP"] = "Setup" 
L["PROFILES"] = "Profiles"
L["TEAM"] = "Team"
L["COMMUNICATIONS"] = "Communications"
L["MESSAGE_DISPLAY"] = "Message Display"
L["GROUP_LIST"] = "Group List"
L["DISPLAY"] = "Display"
L["ITEM_USE"] = "Item Use"
L["VENDER"] = "Vender"
L["VENDER_LIST_MODULE"] = "Sell List"
L["INTERACTION"] = "Interaction"
L["CURRENCY"] = "Currency"
L["TOON"] = "Toon"
L["FOLLOW"] = "Follow"
L["PURCHASE"] = "Purchase"
-- FUCKED UP!
L["VENDER"] = "Vendor"
L["VENDOR"] = "Vendor"
L["PURCHASE"] = "Purchase"
L["WARNINGS"] = "Warnings"
L["QUEST"] = "Quest"
L["TRADE"] = "Trade"
L["REPAIR"] = "Repair"
L["TALK"] = "Talk"
L["QUEST"] = "Quest" 
L["COMPLETION"] = "Completion"
L["TRACKER"] = "Tracker"

--------------------------
-- Pecoded String Formats
L["SETTINGS_RECEIVED_FROM_A"] = function( characterName )
	return string.format("Settings Received From %s", characterName )
end

L["A_IS_NOT_IN_TEAM"] = function( characterName )
	return string.format("%s Is Not In My Team List. I Can Not Set Them To Be My Master.", characterName )
end
--------------------------
-- Core Locale
L["STATUSTEXT"] = "The Awesome MultiBoxing Assistant Ebony's Edition"
L["RESET_SETTINGS_FRAME"] = "Reset Settings Frame"
L["MODULE_NOT_LOADED"] = "Module Not Loaded Or Is Out Of Date"
L["RELEASE_NOTES"] = "Release Notes "
L["COPYING_PROFILE"] = "Copying profile: "
L["CHANGING_PROFILE"] = "Changing profile: "
L["PROFILE_RESET"] = "Profile reset - iterating all modules."
L["RESETTING_PROFILE"] = "Resetting profile: "
L["PROFILE_DELETED"] = "Profile deleted - iterating all modules."
L["DELETING_PROFILE"] = "Deleting profile: "
L["Failed_LOAD_MODULE"] =  "Failed to load Jamba Module: "
L["TEXT1"] = "Jamba Ebony's Edition v8" 
L["TEXT2"] = ""
L["TEXT3"] = "Thanks For Being A Alpha Tester Of This Build"
L["TEXT4"] = ""
L["TEXT5"] = "If you Have any bugs report them to LINK"
L["TEXT6"] = ""
L["TEXT7"] = "Thanks so much for Making Jamba-EE Great!"
L["TEXT8"] = ""
L["TEXT9"] = ""
L["TEXT10"] = ""

L["SPECIAL_THANKS"] = "Special Thanks:"
L["THANKS1"] = "Michael Jafula Miller Untill 2015"
L["THANKS2"] = ""
L["THANKS3"] = ""

L["WEBSITES"] = "Websites"
L["ME"] = "Current Project Manger Jenny (Ebony) Cally" 
L["ME_TWITTER"] = "https://twitter.com/Jenn_Ebony"
L["D-B"] = "http://Dual-boxing.com"
L["ISB"] = "http://IsBoxer.com"
L["TEMP_WEBSITE1"] = ""
L["TEMP_WEBSITE2"] = ""
L["TEMP_WEBSITE3"] = ""


L["COPYRIGHT"] = "Copyright (c) 2015-2018  Jennifer Cally"
L["COPYRIGHTTWO"] = "Released Under License: The MIT License"
L["FRAME_RESET"] = "Frame Reset"

--------------------------
-- Communications Locale

L["A: Failed to deserialize command arguments for B from C."] = function( libraryName, moduleName, sender )
	return libraryName..": Failed to deserialize command arguments for "..moduleName.." from "..sender.."."
end
L["AUTO_SET_TEAM"] = "Auto Set Team Members On and Off Line"
L["BOOST_COMMUNICATIONS"] = "Boost Jamba to Jamba Communications"
L["BOOST_COMMUNICATIONS_HELP"] = "Reload Ui To Take Effect, May Cause Disconnections"
L["USE_GUILD_COMMS"] = "Use Guild Communications"
L["USE_GUILD_COMMS_INFO"] = "Use Guild Communications All Of Team Needs To Be In Same Guild" 

----------------------------
-- Helper Locale
L["COMMANDS"] = "Commands"
L["SLASH_COMMANDS"] = "Slash Commands"

----------------------------
-- Team Locale
L["JAMBA-TEAM"] = "Jamba-Team"
L["INVITE_GROUP"] = "Invite Team To Group"
L["DISBAND_GROUP"] = "Disband Group"
L["ADD"] = "Add"
L["ADD_HELP"] = "Add a member to the team list."
L["REMOVE"] = "Remove"
L["REMOVE_REMOVE"] = "Remove A Member From The Team List."
L["MASTER_HELP"] = "Set The Master Character."
L["I_AM_MASTER"] = "I'm The Master"
L["I_AM_MASTER_HELP"] = "Set this character to be the master character."
L["INVITE"] = "Invite"
L["INVITE_HELP"] = "Invite team members to a party with or without a <Group>."
L["DISBAND"] = "Disband"
L["DISBAND_HELP"] = "Disband All Team Members From Their Parties."
L["ADD_GROUPS_MEMBERS"] = "Add Groups Members"
L["ADD_GROUPS_MEMBERS_HELP"] = "Add Members In The Current Group To The Team."
L["REMOVE_ALL_MEMBERS"] = "Remove All Members"
L["REMOVE_ALL_MEMBERS_HELP"] = "Remove all members from the team."
L["SET_TEAM_OFFLINE"] = "Set Team OffLine"
L["SET_TEAM_OFFLINE_HELP"] = "Set All Team Members OffLine"
L["SET_TEAM_ONLINE"] = "Set Team OnLine"
L["SET_TEAM_ONLINE_HELP"] = "Set All Team Members OnLine"
L["TEAM_HEADER"] = "Team"
L["GROUPS_HEADER"] = "Groups"
L["BUTTON_ADD_HELP"] = "Adds a member to the team list\nYou can Use:\nCharacterName\nCharacterName-realm\n@Target\n@Mouseover"
L["BUTTON_ADDALL_HELP"] = "Adds all Party/Raid members to the team list"
L["BUTTON_UP_HELP"] = "Move The Character Up A Place In The Team List"
L["BUTTON_DOWN_HELP"] = "Move The Character Down A Place In The Team List"
L["BUTTON_REMOVE_HELP"] = "Removes Selected Member From The Team List"
L["BUTTON_MASTER_HELP"] = "Set The Selected Member To Be The Master Of The Group"
L["BUTTON_GROUP_REMOVE_HELP"] = "Removes The Group From The Selected Character"
L["CHECKBOX_ISBOXER_SYNC"] = "Sync With Isboxer"
L["CHECKBOX_ISBOXER_SYNC_HELP"] = "Sync With Isboxer TeamList \nAdd/Remove Characters No Longer In Isboxer Team"
L["MASTER_CONTROL"] = "Master Control"
L["CHECKBOX_MASTER_LEADER"] = "Promote Master To Party Leader."
L["CHECKBOX_MASTER_LEADER_HELP"] = "Master Will Always Be The Party Leader."
L["CHECKBOX_CTM"] = "Sets Click-To-Move On Minions"
L["CHECKBOX_CTM_HELP"] = "Auto Activate Click-To-Move On Minions And Deactivate On Master."
L["PARTY_CONTROLS"] = "Party Invitations Control"
L["CHECKBOX_CONVERT_RAID"] = "Auto Convert To Raid"
L["CHECKBOX_CONVERT_RAID_HELP"] = "Auto Convert To Raid If Team Is Over Five Characters"
L["CHECKBOX_ASSISTANT"] = "Auto Set All Assistant"
L["CHECKBOX_ASSISTANT_HELP"] = "Auto Set all raid Member's to Assistant."
L["CHECKBOX_TEAM"] = "Accept From Team"
L["CHECKBOX_TEAM_HELP"] = "Auto Accept Invites From The Team."
L["CHECKBOX_ACCEPT_FROM_FRIENDS"] = "Accept From Friends"
L["CHECKBOX_ACCEPT_FROM_FRIENDS_HELP"] = "Auto Accept Invites From Your Friends List."
L["CHECKBOX_ACCEPT_FROM_GUILD"] = "Accept From Guild."
L["CHECKBOX_ACCEPT_FROM_GUILD_HELP"] = "Auto Accept Invites From Your Guild."
L["CHECKBOX_DECLINE_STRANGERS"] = "Decline from strangers."
L["CHECKBOX_DECLINE_STRANGERS_HELP"] = "Decline Invites From Anyone Else"
L["NOT_LINKED"] = "(Not Linked)"
L["TEAM_NO_TARGET"] = "No Target Or Target Is Not A Player"
L["UNKNOWN_GROUP"] = "Unknown Group"
L["ONLINE"] = "Online"
L["OFFLINE"] = "Offline"
L["STATICPOPUP_ADD"] = "Enter character to add in name-server format:"
L["STATICPOPUP_REMOVE"] = "Are you sure you wish to remove %s from the team list?"

--------------------------
-- Message Locale
L["DEFAULT_CHAT_WINDOW"] = "Default Chat Window"
L["WHISPER"] = "Whisper"
L["PARTY"] = "Party" 
L["GUILD_OFFICER"] = "Guild Officer"
L["RAID"] = "Raid"
L["RAID_WARNING"] = "Raid Warning"
L["MUTE"] = "MUTE"
L["DEFAULT_MESSAGE"] = "Default Message"
L["DEFAULT_WARNING"] = "Default Warning"
L["MUTE_POFILE"] = "Mute (Default)"
L["ADD_MSG_HELP"] = "Add's New Message Area"
L["REMOVE_MSG_HELP"] = "Remove's Message Area"
L["NAME"] = "Name"
L["PASSWORD"] = "Password"
L["AREA"]  = "Area On Screen"
L["SOUND_TO_PLAY"] = "Sound To Play"
L["SAVE"] = "Save"
L["STATICPOPUP_ADD_MSG"] = "Enter Name Of The Message Area To Add:"
L['Are you sure you wish to remove "%s" from the message area list?'] = true
L["MESSAGE_AREA_LIST"] = "Message Area List"
L["MESSAGE_AREA_CONFIGURATION"] = "Message Area Configuration"
L["ERR_COULD_NOT_FIND_AREA"] = function( areaName )
	return string.format("ERROR: Could not find area: %s", areaName) 
end
--------------------------
-- Tag/Group Locale
L["ADD_TAG_HELP"]= "Add a Group To This Character."
L["REMMOVE_TAG_HELP"] = "Remove A Tag From This Character."
L["GROUP"] =  "Group"
L["BUTTON_TAG_ADD_HELP"] = "Adds A New Group To The List"
L["BUTTON_TAG_REMOVE_HELP"] = "Removes A Group From The List"
L["ADD_TO_GROUP"] = "Add To Group"
L["ADD_TO_GROUP_HELP"] = "Add Character To Group"
L["REMOVE_FROM_GROUP"] = "Remove From Group"
L["REMOVE_FROM_GROUP_HELP"] = "Remove Character From Group"
L["WRONG_TEXT_INPUT_GROUP"] = "Needs To Be In <Character-realm> <Group> Format"
L["NEW_GROUP_NAME"] = "Adds A New Group:"
L["Are You Sure You Wish To Remove %s From The Tag List?"] = true
--Note This need to be lowercase! 
--If translated Make Sure you keep them as a the lowercase words or you Will breck Group/Tag
--It be a headache i don't need -- Ebony
L["ALL_LOWER"] = "all"
L["MASTER_LOWER"] = "master"
L["MINION_LOWER"] = "minion"

--------------------------
-- Item-Use Locale
L["JAMBA-ITEM-USE"] = "Jamba-Item-Use"
L["ITEM"] = "Item"
L["HIDE_ITEM_BAR"] = "Hide Item Bar"
L["HIDE_ITEM_BAR_HELP"] = "Hide The Item Bar Panel."
L["SHOW_ITEM_BAR"] = "Show Item Bar"
L["SHOW_ITEM_BAR_HELP"] = "Show The Item Bar Panel."
L["CLEAR_ITEM_BAR"] = "Clear Item Bar"
L["CLEAR_ITEM_BAR_HELP"] = "Clear The Item Bar (Remove All Items)."
L["TOOLTIP_SYNCHRONISE"] = "Synchronise The Item-Use Bar"
L["TOOLTIP_NOLONGER_IN_BAGS"] = "Remove Items No Longer In Your Bags, From The Item Bar"
L["NEW_QUEST_ITEM"] = "New Item That Starts A Quest Found!"
L["ITEM_USE_OPTIONS"] = "Item Use Options"
L["SHOW_ITEM_BAR"] = "Shows The ItemBar"
L["SHOW_ITEM_BAR_HELP"] = "Shows The Jamba Item Use Bar"
L["ONLY_ON_MASTER"] = "Only On Master"
L["ONLY_ON_MASTER_HELP"] = "Only Shows On The Master Character"
L["KEEP_BARS_SYNCHRONIZED"] = "Keep Item Bars On Minions Synchronized"
--TODO WORK OUT WHAT THIS DOES AGAIN!
L["KEEP_BARS_SYNCHRONIZED_HELP"] = "Keep Item Bars On Minions Synchronized"
L["ADD_QUEST_ITEMS_TO_BAR"] = "Automatically Add Quest Items To Bar"
L["ADD_QUEST_ITEMS_TO_BAR_HELP"] = "Automatically Add's Useable Quest Items To Bar"
L["ADD_ARTIFACT_ITEMS"] = "Automatically Add ArtifactPower Tokens To Bar"
L["ADD_ARTIFACT_ITEMS_HELP"] = "Automatically Add ArtifactPower Tokens To Bar (Legion)"
L["ADD_SATCHEL_ITEMS"] = "Automatically Add Satchel Items To Bar"
L["ADD_SATCHEL_ITEMS_HELP"] = "Automatically Add Satchel Items To Bar ( Lootable Bags/Box's )"
L["HIDE_BUTTONS"] = "Hide Buttons"
L["HIDE_BUTTONS_HELP"] = "Hides The Top Buttons (Clear)"
L["HIDE_IN_COMBAT"] = "Hide In Combat" 
L["HIDE_IN_COMBAT_HELP_IU"] = "Hide Item Bar In Combat"
L["NUMBER_OF_ITEMS"] = "Number Of Items"
L["CLEAR_BUTT"] = "Clear"
L["SYNC_BUTT"] = "Sync"
L["ITEM_BAR_CLEARED"] = "Item Bar Cleared"
L["TEAM_BAGS"] = "Items In Team Bags"
L["BAG_BANK"] = "Bag (Banks)"

--------------------------
-- Jamba-Sell Locale
L["SELL"] = "Sell"
L["SELL_LIST"] = "Sell/Delete Item's List"
L["SELL_ALL"] = "Sell or Delete If Not Sell Price All Item's In This List"
L["ALT_SELL_ALL"] = "Hold [Alt] While Selling An Item, To Sell On All Toons"
L["ALT_SELL_ALL_HELP"] = "Hold [Alt] Key While Selling An Item To The Vender, To Sell That Item On All Toons"
L["AUTO_SELL_ITEMS"] = "Automatically Sell Items"
L["AUTO_SELL_ITEMS_HELP"] = "Automatically Sell Items Below"
L["ONLY_SB"] = "Only SoulBound"
L["ONLY_SB_HELP"] = "Only Sell SoulBound Items"
L["iLVL"] = "Item Level"
L["iLVL_HELP"] = "Sell Items Below The Item Level"
L["SELL_GRAY"] = "Sell Gray Items"
L["SELL_GRAY_HELP"] = "Sell All Gray Items"
L["SELL_GREEN"] = "Sell Uncommon Items"
L["SELL_GREEN_HELP"] = "Sell All Uncommon(Green) Items"
L["SELL_RARE"] = "Sell Rare Items"
L["SELL_RARE_HELP"] = "Sell All Rare(Blue) Items"
L["SELL_EPIC"] = "Sell Epic Items"
L["SELL_EPIC_HELP"]	= "Sell All Epic(Purple) Items"
L["SELL_LIST_DROP_ITEM"] = "Sell Other Item (DRAG ITEM TO BOX)"
L["ITEM_TAG_ERR"] = "Item Tags Must Only Be Made Up Of Letters And Numbers."
L["POPUP_REMOVE_ITEM"] = "Are You Sure You Wish To Remove The Selected Item From The Auto Sell: Items List?"
L["ADD_TO_LIST"] = "Adds Item To List"
L["SELL_ITEMS"] = "Sell Items"
L["POPUP_DELETE_ITEM"] = "What You like to delete?"
L["I_HAVE_SOLD_X"] = function( temLink )
	return string.format("I Have Sold: %s", temLink )
end
L["I_SOLD_ITEMS_PLUS_GOLD"] = function( count )
	return string.format( "I have sold: %s Items And Made: ", count )
end	
L["DELETE_ITEM"] = function( bagItemLink )
	return string.format( "I Have DELETED: %s", bagItemLink )
end

--------------------------
-- Interaction Locale
L["TAXI"] = "Taxi"
L["TAXI_OPTIONS"] = "Taxi Options"
L["TAKE_TEAMS_TAXI"] = "Take Teams Taxi"
L["TAKE_TEAMS_TAXI_HELP"] = "Take The Same Flight As The Any Team Member \n(Other Team Members Must Have Npc Flight Master Window Open)."
L["REQUEST_TAXI_STOP"] = "Request Taxi Stop With Team"
L["REQUEST_TAXI_STOP_HELP"] = "[PH] REQUEST_TAXI_STOP_HELP"
L["CLONES_TO_TAKE_TAXI_AFTER"] = "Clones To Take Taxi After Leader"
--Mount Locale
L["MOUNT"] = "Mount"
L["MOUNT_OPTIONS"] = "Mount Options"
L["MOUNT_WITH_TEAM"] = "Mount With Team"
L["MOUNT_WITH_TEAM_HELP"] = "[PH] MOUNT_WITH_TEAM_HELP"
L["DISMOUNT_WITH_TEAM"] = "Dismount With Team"
L["DISMOUNT_WITH_TEAM_HELP"] = "Dismount When Any Team Dismount's"
L["ONLY_DISMOUNT_WITH_MASTER"] = "Only Dismount's With Master"
L["ONLY_DISMOUNT_WITH_MASTER_HELP"] = "ONLY DISMOUNT'S WHEM MASTER CHARACTER DISMONTS."
L["ONLY_MOUNT_WHEN_IN_RANGE"] = "Only Mount When In Range"
L["ONLY_MOUNT_WHEN_IN_RANGE_HELP"] = "Dismounts Olny When The Team Is In Range /nOnly Works In A Party!"
L["I_AM_UNABLE_TO_MOUNT"] = "I Am Unable To Mount."
-- Loot Locale
L["LOOT_OPTIONS"] = "Loot v2 Options"
L["DISMOUNT_WITH_CHARACTER"] = "Dismount With Character That Dismount"
L["ENABLE_AUTO_LOOT"] = "Enable Auto"
L["ENABLE_AUTO_LOOT_HELP"] = "Old Jambas Advanced Loot \Nbut Better"
L["TELL_TEAM_BOE_RARE"] = "Tell Team BoE Rare"
L["TELL_TEAM_BOE_RARE_HELP"] = "Tell The Team If I Loot A Boe Rare"
L["TELL_TEAM_BOE_EPIC"] = "Tell Team Boe Epic"
L["TELL_TEAM_BOE_EPIC_HELP"] = "Tell The Team If I Loot A Boe Epic"
L["I_HAVE_LOOTED_X_Y_ITEM"] = function( rarity, itemName )
	return string.format( "I Have Looted A %q BoE Item: %s", rarity, itemName )
end
L["EPIC"] = "Epic"
L["RARE"] = "Rare"
L["REQUESTED_STOP_X"] = function( sender )
	return string.format( "I Have Requested a Stop From %s", sender )
end
L["SETTINGS_RECEIVED_FROM_A"] = function( characterName )
	return string.format( "Settings Received From %s.", characterName )
end
L["I_AM_UNABLE_TO_FLY_TO_A"] = function( nodename )
	return string.format( "I Am Unable To Fly To %s.", nodename )
end
--------------------------
-- Currency Locale
L["JAMBA_CURRENCY"] = "Jamba Currency"
L["SHOW_CURRENCY"] = "Show Currency"
L["SHOW_CURRENCY_HELP"] = "Show The Currency Frame Window."
L["HIDE_CURRENCY"] = "Hide Currency"
L["HIDE_CURRENCY_HELP"] = "Hide The Currency Values For All Members In The Team."
L["CURRENCY_HEADER"] = "Currency Selection To Show On Frame"
L["GOLD"] = "Gold"
L["GOLD_HELP"] = "Shows The Minions Gold"
L["GOLD_GB"] = "Include Gold In Guild Bank"
L["GOLD_GB_HELP"] = "Show Gold In Guild Bank\n(This Does Not Update Unless You Visit The Guildbank)"
L["CURR_STARTUP"] = "Open Currency List On Start Up"
L["CURR_STARTUP_HELP"] = "Open Currency List On Start Up.\nThe Master Only)"
L["LOCK_CURR_LIST"] = "Lock The Currency List Frame"
L["LOCK_CURR_LIST_HELP"] = "Lock's The Currency List Frame And Enables Mouse Click-Through"
L["SPACE_FOR_NAME"] = "Space For Name"
L["SPACE_FOR_GOLD"] =  "Space For Name"
L["SPACE_FOR_POINTS"] = "Space For Points"
L["SPACE_BETWEEN_VALUES"] = "Space Between Values"
L["TOTAL"] = "Total"
L["CURR"] = "Curr"


--------------------------
-- Display Team Locale
L["JAMBA_TEAM"] = "Jamba Team"
L["HIDE_TEAM_DISPLAY"] = "Hide Team Display"
L["HIDE_TEAM_DISPLAY_HELP"] = "Hide The Display Team Panel."
L["SHOW_TEAM_DISPLAY"] = "Show Team Display"
L["SHOW_TEAM_DISPLAY_HELP"] = "Show The Display Team Panel."
L["DISPLAY_HEADER"] = "Display Team Options"
L["SHOW"] = "Show"
L["SHOW_TEAM_FRAME"] = "Show Team Frame"
L["SHOW_TEAM_FRAME_HELP"] = "Show Jamba Team Frame List"
L["HIDE_IN_COMBAT_HELP_DT"] = "Hides The TeamFrame In Combat"
L["ENABLE_CLIQUE"] = "Enable Clique Support"
L["ENABLE_CLIQUE_HELP"] = "Enable Clique Support\n([/Reload Ui] To Take Effect)"
L["SHOW_PARTY"] = "Only Show Party Members"
L["SHOW_PARTY_HELP"] = "Only Show Party Team Members"
L["HEALTH_POWER_GROUP"] = "Health & Power Out of Group"
L["HEALTH_POWER_GROUP_HELP"] = "Update Health and Power Out Of Groups\nUse Guild Communications!"
L["SHOW_TITLE"] = "Show Title on Frame"
L["SHOW_TITLE_HELP"] = "Show Team List Title on Display Team Frame"
L["STACK_VERTICALLY"] = "Stack Bars Vertically"
L["STACK_VERTICALLY_HELP"] = "Stack Display Team Frame Bars Vertically"
L["CHARACTERS_PER_BAR"] = "Number of Characters Per Row"
L["SHOW_CHARACTER_PORTRAIT"] = "Shows Characters Portraits"
L["SHOW_FOLLOW_BAR"] = "Shows the Follow Bar and Character Name"
L["SHOW_NAME"] = "Show Character Name"
L["SHOW_XP_BAR"] = "Show the Team Experience bar\n\nAnd Artifact XP Bar\nAnd Honor XP Bar\nAnd Reputation Bar"
L["VALUES"] = "Values"
L["VALUES_HELP"] = "Show Values"
L["PERCENTAGE"] = "Percentage"
L["PERCENTAGE_HELP"] = "Show Percentage"
L["SHOW_XP"] = "Experience Bar"
L["SHOW_XP_HELP"] = "Show the Team Experience bar"
L["ARTIFACT_BAR"] = "Artifact Bar"
L["ARTIFACT_BAR_HELP"] = "Show the Team Artifact Experience bar"
L["HONORXP"] = "Show Honor Bar"
L["HONORXP_HELP"] = "Show the Team Honor Experience Bar"
L["REPUTATION_BAR"] = "Show Reputation Bar"
L["REPUTATION_BAR_HELP"] = "Show the Team Reputation Bar" 
L["SHOW_HEALTH"] = "Show the Teams Health Bars"
L["SHOW_CLASS_COLORS"] = "Show Class Colors"
L["SHOW_CLASS_COLORS_HELP"] = "Show class Coulor on Health Bars"
L["POWER_HELP"] = "Show the Team Power Bar\n\nMana, Rage, Etc..."
L["CLASS_POWER"] = "Show the Teams Class Power Bar\n\nComboPoints\nSoulShards\nHoly Power\nRunes"
L["DEAD"] = "Dead"
L["PORTRAIT_HEADER"] = "Portrait"
L["FOLLOW_BAR_HEADER"] = "Follow Status Bar"
L["EXPERIENCE_HEADER"] = "Experience Bars"
L["HEALTH_BAR_HEADER"] = "Health Bar"
L["POWER_BAR_HEADER"] = "Power Bar"
L["CLASS_BAR_HEADER"] = "Class Power Bar"

--------------------------
-- Follow Locale
L["FOLLOW_BROKEN_MSG"] = "Follow Broken!"
L["FOLLOW_MASTER"] = "Follow The Master <Group>"
L["FOLLOW_MASTER_HELP"] = "Follow The Master Currebt Master (Group)"
L["FOLLOW_TARGET"] = "Follow A Target <TargetName>"
L["FOLLOW_TARGET_HELP"] = "Follow The Specified Target (Group)"
L["FOLLOW_AFTER_COMBAT"] = "Auto Folllow After Combat"
L["FOLLOW_AFTER_COMBAT_HELP"] = "Automatically Follow After Combat"
L["DELAY_FOLLOW_AFTER_COMBAT"] = "Delay Follow After Combat (S)"
L["DELAY_FOLLOW_AFTER_COMBAT_HELP"] = "Delay_Follow_After_Combat In Seconds"
L["FOLLOW_STROBING"] = "Begin Follow Strobing <TargetName>"
L["FOLLOW_STROBING_HELP"] = "Begin A Sequence Of Follow Commands That Strobe Every Second (Configurable) A Specified Target."
L["FOLLOW_STROBING_ME"] = "Begin Follow Strobing Me"
L["FOLLOW_STROBING_ME_HELP"] = "Begin A Sequence Of Follow Commands That Strobe Every Second (Configurable) This Character"
L["FOLLOW_STROBING_END"] = "Ends Follow Strobing"
L["FOLLOW_STROBING_END_HELP"] = "Ends Follow Strobing On All Characters" 
L["FOLLOW_SET_MASTER"] = "Sets Follow By Name"
L["FOLLOW_SET_MASTER_HELP"] = "Sets Follow By Name"
L["TRAIN"] = "Makes All Characters Follow In A Train"
L["TRAIN_HELP"] = "Makes All Characters Follow In A Train Behind Each Other"
L["SNW"] = "Snw"
L["SNW_HELP"] = "Suppress Next Warning"
L["TIME_DELAY_FOLLOWING"] = "Seconds To Delay Before Following After Combat"
L["DIFFERENT_TOON_FOLLOW"] = "Use Different Character For Follow"
L["DIFFERENT_TOON_FOLLOW_HELP"] = "Use Different Character Below For Follow"
L["NEW_FOLLOW_MASTER"] = "New Follow Character"
L["FOLLOW_BROKEN_WARNING"] = "Follow Broken Warning"
L["WARN_STOP_FOLLOWING"] = "Warn If I Stop Following"
L["WARN_STOP_FOLLOWING_HELP"] = "Tell The Master If A Character Stops Following"
L["ONLY_IF_OUTSIDE_RANGE"] = "Only Warn If Outside Follow Range"
L["ONLY_IF_OUTSIDE_RANGE_HELP"] = "Only Warn If Character Is Outside Follow Range"
L["FOLLOW_BROKEN_MESSAGE"] = "Follow Broken Custom Message"
L["DO_NOT_WARN"] = "Do Not Warn If"
L["IN_COMBAT"] = "In Combat"
L["ANY_MEMBER_IN_COMBAT"] = "Any Member In Combat"
L["FOLLOW_STROBING"] = "Follow Strobing"
L["FOLLOW_STROBING_AJM_FOLLOW_COMMANDS."] = "Follow Strobing Is Controlled By /Jamba-Follow Commands."
L["USE_MASTER_STROBE_TARGET"] = "Always Use Master As The Strobe Target"
L["PAUSE_FOLLOW_STROBING"] = "Pause Follow Strobing If ...."
L["DRINKING_EATING"] = "Drinking/Eating"
L["IN_A_VEHICLE"] = "In A Vehicle"
L["GROUP_FOLLOW_STROBE"] = "Group For Follow Strobe"
L["FREQUENCY"] = "Frequency (S)"
L["FREQUENCY_COMABT"] = "Frequency In Combat (S)"
L["ON"] = "On"
L["OFF"] = "Off"
L["DRINK"] = "Drink"
L["FOOD"] = "Food"
L["REFRESHMENT"] = "Refreshment"

--------------------------
-- Vender/Purchase Locale.
L["AUTO_BUY_ITEMS"] = "Auto Buy Items"
L["OVERFLOW"] = "Overflow"
L["REMOVE_VENDER_LIST"] = "Remove From Vender List"
L["ITEM_DROP"] = "Item (Drag Item To Box From Your Bags)"
L["PURCHASE_ITEMS"] = "Auto Purchase Items"
L["ADD_ITEM"] = "Add Item"
L["AMOUNT"] = "Amount"
L["PURCHASE_MSG"] = "Purchase Messages"
L["ITEM_ERROR"] = "Item Tags Must Only Be Made Up Of Letters And Numbers."
L["NUM_ERROR"] = "Amount To Buy Must Be A Number."
L["BUY_POPUP_ACCEPT"] = "Are You Sure You Wish To Remove The Selected Item From The Auto Buy Items List?"
L["ERROR_BAGS_FULL"] =  "I Do Not Have Enough Space In My Bags To Complete My Purchases."
L["ERROR_GOLD"] = "I Do Not Have Enough Money To Complete My Purchases." 
L["ERROR_CURR"] = "I Do Not Have Enough Other Currency To Complete My Purchases."

--------------------------
-- Trade Locale
L["REMOVE_TRADE_LIST"] = "Are You Sure You Wish To Remove The Selected Item From The Trade Items List?"
L["TRADE_LIST_HEADER"] = "Trade Item List"
L["TRADE_LIST"] = "Trade The List Of Items With Master"
L["TRADE_LIST_HELP"] = "The List Will Trade With The Current Masster \nGroups Do not Currently Work"
L["TRADE_BOE_ITEMS"] = "Trades Binds When Equipped Items With Master"
L["TRADE_BOE_ITEMS_HELP"] = "Trade All Binds When Equipped Items With The Current Master"
L["TRADE_REAGENTS"] = "Trades Crafting Reagents Items With Master"
L["TRADE_REAGENTS_HELP"] = "Trades All Crafting Reagents Items Current Master"
L["TRADE_OPTIONS"] = "Trade To \"Master\" Options"
L["TRADE_GOLD"] = "Trade Excess Gold To Master From Minion"
L["TRADE_GOLD_HELP"] = "Trade Excess Gold To Master From Minions \nAlways Be Careful When Auto Trading."
L["GOLD_TO_KEEP"] = "Amount of Gold To Keep On Current Minion"
L["TRADE_TAG_ERR"] = "Item Tags Must Only Be Made Up Of Letters And Numbers."
L["ERR_WILL_NOT_TRADE"] = "Is Not A Member Of The Team, Will Not Trade Items."
L["ADD_ITEMS"] = "Add Items"

--------------------------
-- Toon Locale
L["ATTACKED"] = "I'm Attacked!"
L["TARGETING"] = "Not Targeting!"
L["FOCUS"] = "Not Focus!"
L["LOW_HEALTH"] = "Low Health!"
L["LOW_MANA"] = "Low_Mana!"
L["BAGS_FULL"] = "Bags Full!"
L["CCED"] = "I'm"
-- Vendor
L["AUTO_REPAIR"] = "Auto Repair"
L["AUTO_REPAIR_HELP"] = "Auto Repairs Toons Items When You Visit a Repair Merchant"
L["REPAIR_GUILD_FUNDS"] = "Auto Repair With Guild Funds"
L["REPAIR_GUILD_FUNDS_HELP"] = "Trys To Auto Repair With Guild Bank Funds \n Before There Own Gold"
-- Requests
L["REQUESTS"] = "Requests"
L["DENY_DUELS"] = "Auto Deny Duels"
L["DENY_DUELS_HELP"] = "Automatically Deny Duels From Players \n On All Team Members"
L["DENY_GUILD_INVITES"] = "Auto Deny Guild Invites"
L["DENY_GUILD_INVITES_HELP"] = "Automatically Deny All Guild Invites"
L["ACCEPT_RESURRECT"] = "Auto Accept Resurrect Request"
L["ACCEPT_RESURRECT_AUTO"] = "Automatically Accept Resurrect Request \nOn All Team Members"
L["RELEASE_PROMPTS"] = "Display Team Release Prompts"
L["RELEASE_PROMPTS_HELP"] = "Display Jamba Team Release Popup Displays when the Team Dies"
L["SUMMON_REQUEST"] = "Auto Accept Summon Request"
L["SUMMON_REQUEST_HELP"] = "Automatically Accept Summon Requests"
L["GROUPTOOLS_HEADING"] = "Instance Tools"
L["ROLE_CHECKS"] = "Auto Accept Role Checks" 
L["ROLE_CHECKS_HELP"] = "Automatically Accept Role Checks \n\nIf A Role Is Already Set.."
L["READY_CHECKS"] = "Accept Ready Checks With Team"
L["READY_CHECKS_HELP"] = "Accept Ready Checks With Team \n\nIf Team Member Is The One That Does The Ready Check It Is Auto."
L["LFG_Teleport"] = "Instance Teleport With Team"
L["LFG_Teleport_HELP"] = "Minions Will Copy The Teams Instance Telport"
L["ROLL_LOOT"] = "Roll Loot With Team"
L["ROLL_LOOT_HELP"] = "Roll Loot With the Team \nIf Any Instance Has A Roll On A Item"
-- Warnings
L["COMBAT"] = "Combat"
L["WARN_HIT"] = "Warn If Minion Gets Hit"
L["WARN_HIT_HELP"] = "Warn If Hit First Time In Combat (Minion)"
L["TARGET_NOT_MASTER"] = "Warn If Target Not Master"
L["TARGET_NOT_MASTER_HELP"] = "Warn If Target Not Master On Combat (Minion)"
L["FOCUS_NOT_MASTER"] = "Warn If Focus Not Master"
L["FOCUS_NOT_MASTER_HELP"] = "Warn If Focus Not Master On Combat (Minion)"
L["HEALTH_POWER"] = "Health / Mana"
L["HEALTH_DROPS_BELOW"] = "Warn If My Health Drops Below"
L["HEALTH_DROPS_BELOW_HELP"] = "Warn If All Minions Health Drops Below A Certain Percent"
L["HEALTH_PERCENTAGE"] = "Health Amount - Percentage Allowed Before Warning"
L["MANA_DROPS_BELOW"] = "Warn If My Mana Drops Below"
L["MANA_DROPS_BELOW_HELP"] = "Warn If All Minions Mana Drops Below A Certain Percent"
L["MANA_PERCENTAGE"] = "Mana Amount - Percentage Allowed Before Warning"
L["BAGS_FULL"] = "Warn If Bags Are Full"
L["BAGS_FULL_HELP"] = "Warn If All Regular Bags Are Full"
L["BAG_SPACE"] = "Bag Space"
L["OTHER"] = "Other"
L["WARN_IF_CC"] = "Warn If Toon Gets Crowd Controled"
L["WARN_IF_CC_HELP"] = "Warn If any Team Member Gets Crowd Control"

L["RELEASE_TEAM_Q"] = "Release All Team?"
L["RELEASE_TEAM"] = "Release Team"
L["RECOVER_CORPSES"] = "Recover All Team Corpses?"
L["ERR_GOLD_TO_REPAIR"] = "I Do Not Have Enough Money To Repair All My Items"
L["RELEASE_CORPSE_FOR_X"] = function( delay )
	return string.format( "I can not release to my Corpse for: %s seconds", delay )
end
L["I_REFUSED_A_DUEL_FROM_X"] = function( challenger )
	return string.format( "I Refused A Duel From: %s", challenger )
end
L["REFUSED_GUILD_INVITE"] = function( guild, inviter )
	return string.format( "I Refused A Guild Invite To: %s From: %s", guild, inviter )
end
L["SUMMON_FROM_X_TO_Y"] = function( sender, location )
	return string.format( "I Accepted Summon From: %s To: %s", sender, location )
end
L["REPAIRING_COST_ME_X"] = function( costString )
    return string.format( "Repairing Cost Me: %s", costString )
end

--------------------------
-- Talk Locale

L["TALK_OPTIONS"] = "Talk Options"
L["FORWARD_WHISPERS_MASTER_RELAY"] = "Forward Whispers To Master And Relay Back"
L["FORWARD_WHISPERS_MASTER_RELAY_HELP"] = "Forward Whispers To Master And \nRelay Back To The Character That Whispered You"
L["DO_NOT_BATTENET_WHISPERS"] = "Do Not Forward Batte.Net Whispers"
L["DO_NOT_BATTENET_WHISPERS_HELP"] = "Do Not Forward BatteTag Or RealID Whispers"

L["FORWARD_FAKE_WHISPERS"] = "Forward Via Fake Whispers For Clickable Links And Players"
L["FORWARD_FAKE_WHISPERS_HELP"] = "Forward Via Fake Whispers To Use As Clickable Links And Players"
L["FAKE_WHISPERS_CHANNEL"]  = "Send Fake Whispers To"
L["FORWARDER_REPLY_QUEUE"] = "Add Forwarder To Reply Queue On Master"
L["FORWARDER_REPLY_QUEUE_HELP"] = "Add Forwarder To Reply Queue On Master"
L["ORIGINATOR_REPLY_QUEUE"] = "Add Originator To Reply Queue On Master"
L["ORIGINATOR_REPLY_QUEUE_HELP"] = "Add Originator To Reply Queue On Master" 
L["MESSAGES_WITH_LINKS"] = "Only Show Messages With Links"
L["MESSAGES_WITH_LINKS_HELP"] = "Only Show Messages With Links"
-- TOBEREMOVED
L["CHAT_SNIPPETS"] = "Chat Snippets"
L["ENABLE_CHAT_SNIPPETS"] = "Enable Chat Snippets"
L["ENABLE_CHAT_SNIPPETS_HELP"] = "Chat Snippets Auto Send Messages To Players That Wispers Your Minions"
L["SNIPPET_TEXT"] = "Snippet Text"
L["CHAT_SNIPPET_POPUP"] = "Enter The Shortcut Text For This Chat Snippet:"
L["REMOVE_CHAT_SNIPPET"] = "Are You Sure You Wish To Remove The Selected Chat Snippet?"
--END
L["GM"] = "GM"
L["TALK_VIA"] = " (via "
L["BATTLE_NET"] = "<BatteTag>"
L["<GM>"] = "<GameMaster>"
L["WHISPERS"] = " Whispers: "
L["WHISPERED_YOU"] = "Whispered You."

------------------------
-- Quest Locale

L["ABANDON_QUESTS_TEAM"] = "Would you like to Abandon \"%s\" On All Toons?"
L["JUST_ME"] = "Just Me"
L["ALL_TEAM"] = "All Team"
L["TRACK_QUEST_ON_TEAM"] = "Would you like to Track \"%s\" On All Toons?"
L["UNTRACK_QUEST_ON_TEAM"] = "Would you like to Untrack \"%s\" On All Toons?"
L["ABANDON_ALL_QUESTS"] = "This will abandon ALL quests ON every toon!  Yes, this means you will end up with ZERO quests in your quest log! \nAre you sure?"
L["YES_IAM_SURE"] = "Yes I'm Sure"
L["INFORMATION"] = "Information"
L["QUESTINFORMATIONONE"] = "Jamba-Quest treats any team member as the Master."
L["QUESTINFORMATIONTWO"] = "Quest actions by one character will be actioned by the other"
L["QUESTINFORMATIONTHREE"] = "characters regardless of who the Master is."
L["QUEST_HEADER"] = "Toon Select & Decline Quest With Team"
L["MIRROR_QUEST"] = "Quest Selection & Acceptance"
L["MIRROR_QUEST_HELP"] = "Mirror Quest Selection With All Team"
L["AUTO_SELECT_QUESTS"] = "All Auto Select Quests"
L["AUTO_SELECT_QUESTS_HELP"] = "Automatically Pick Up Quest \nWhen You Talk To A Quest Giving NPC"
L["ACCEPT_QUESTS"] = "Accept Quests"
L["ACCEPT_QUESTS_HELP"] = "Accept Quests"
L["ACCEPT_QUEST_WITH_TEAM"] = "Accept Quest With Team"
L["ACCEPT_QUEST_WITH_TEAM_HELP"] = "Accept Quest With Team Members"
L["QUEST_INFORMATION_AUTO"] = "Automatically: Accept Quests Regardless of the Team Selection"
L["DONOT_AUTO_ACCEPT_QUESTS"] = "Do Not Auto Accept Quests" 
L["DONOT_AUTO_ACCEPT_QUESTS_HELP"] = "Nerver Auto Accept Quests From Anyone"
L["AUTO_ACCEPT_QUESTS"] = "All Auto Accept ANY Quest"
L["AUTO_ACCEPT_QUESTS_HELP"] = "All Auto Accept ANY Quest From Anyone"
L["AUTO_ACCEPT_QUESTS_LIST"] = "Only Auto Accept Quests From:"
L["AUTO_ACCEPT_QUESTS_LIST_HELP"] = "Only Auto Accept Quests From The Following  List"
L["TEAM_QUEST_HELP"] = "Any Jamba-EE Team Member"
L["NPC"] = "NPC"
L["NPC_HELP"] = "Any Non-Player Character"
L["FRIENDS"] = "Friends"
L["FRIENDS_HELP"] = "Anyone On Your Friends List Or BattleTag Friends List"
-- Quest
L["QUEST_GROUP_HELP"] = "Anyone In Your Party Group"
L["GUILD_HELP"] = "Anyone In Your Guild"
L["PH_RAID"] = "[PH] Raid" 
L["PH_RAID_HELP"] = "[PH] Raid" 
L["MASTER_SHARE_QUESTS"] = "Master Auto Share Quests When Accepted"
L["MASTER_SHARE_QUESTS_HELP"] = "Master Will Try And Share Quests When Accepted"
L["ACCEPT_ESCORT_QUEST"] = "Toon Auto Accept Escort Quest From Team"
L["ACCEPT_ESCORT_QUEST_HELP"] = "Automatically Accept Escort Quests When A Team Picks One Up"
L["HOLD_SHIFT_TO_OVERRIDE"] = "Hold Shift To Override Auto Select/Auto Complete"
L["HOLD_SHIFT_TO_OVERRIDE_HELP"] = "Hold Shift Key To Override Auto Select/Auto Complete"
L["SHOW_PANEL_UNDER_QUESTLOG"] = "Show Extra Buttons Panel Under WorldMap Quest Log"
L["SHOW_PANEL_UNDER_QUESTLOG_HELP"] = "Show Extra Buttons Panel Under World Map Quest Log \nEG: TrackALL AbandonALL"
-- Completion
L["QUEST_COMPLETION"] = "Quest Completion"
L["ENABLE_QUEST_COMPLETION"] = "Enable Auto Quest Completion"
L["ENABLE_QUEST_COMPLETION_HELP"] = "Enable Automatically Handing In Quest's"
L["NOREWARDS_OR_ONEREWARD"] = "Quest Has No Rewards Or One Reward:"
L["QUEST_DO_NOTHING"] = "Toon Do Nothing"
L["QUEST_DO_NOTHING_HELP"] = "Do Not Automatically Hand In Quest"
L["COMPLETE_QUEST_WITH_TEAM"] = "Toon Complete Quest With Team"
L["COMPLETE_QUEST_WITH_TEAM_HELP"] = "Complete Quest With Team Jamba-EE Members"
L["AUTO_COMPLETE_QUEST"] = "Automatically Complete Quest"
L["AUTO_COMPLETE_QUEST_HELP"] = "Automatically Complete/Turn In The Quest"
L["MORE_THEN_ONE_REWARD"] = "Quest Has More Than One Reward:"
L["MUST_CHOOSE_OWN_REWARD"] = "Toon Must Choose Own Reward"
L["MUST_CHOOSE_OWN_REWARD_HELP"] = "Toon Must Select Own Quest Reward"
L["CHOOSE_SAME_REWARD"] = "Toon Choose Same Reward As Team"
L["CHOOSE_SAME_REWARD_HELP"] = "Toon Will Choose Same Reward As Jamba-Ee Team Members \n\nOnly Use If All Team Members Class"
L["MODIFIER_CHOOSE_SAME_REWARD"] = "If Modifier Keys Pressed, Toon Choose Same Reward"
L["MODIFIER_CHOOSE_SAME_REWARD_HELP"] = "If Modifier Key Below Is Pressed, Minion Can Choose Same Reward"
L["OVERRIDE_REWARD_SELECTED"] = "Override: If Minion Already Has Reward Selected, Choose That Reward"
L["OVERRIDE_REWARD_SELECTED_HELP"] = "Override: If Minion Already Has Reward Selected, Choose That Reward \nAnd Not Use The Current Toons Reward"
L["SHARING_QUEST_TO_ALLMINIONS"] = "Sharing Quest's To All Minions"
L["TRACKING_QUEST_TO_ALLMINIONS"] = "Tracking Quest's To All Minions"
L["UNTRACKING_QUESTS_ALLMINIONS"] = "Untracking Quest's To All Minions"
L["TOGGLE"] = "Toggle"
L["ABANDON_ALL"] = "Abandon All Quests"
L["ABANDON_ALL_TOOLTIP"] = "Aabandon All Quests On All Minions"
L["SHARE_ALL"] = "Share ALL"
L["SHARE_ALL_TOOLTIP"] = "Share All Quests To All Minions"
L["TRACK_ALL"] = "Track All"
L["TRACK_ALL_TOOLTIP"] = "Track All Quests On All Minions"
L["UNTRACK_ALL"] = "Untrack All"
L["UNTRACK_ALL_TOOLTIP"] = "Untrack All Quests on all Minions"
L["ABANDONING_ALLQUEST"] = "Abandoning Quest's To All Toons"

-- Quest Strings
L["AUTOMATICALLY_ACCEPTED_ESCORT_QUEST"] = function( questName )
	return string.format( "Automatically Accepted Escort Quest: %s", questName )
end
L["INVENTORY_IS_FULL_CAN_NOT_HAND_IN_QUEST"] = function( questName )
	return string.format( "Inventory Is Full Can Not Hand In Quest: %s", questName )
end
L["ACCEPTED_QUEST_QN"] = function( questName )
	return string.format( "Accepted Quest: %s", questName )
end
L["AUTO_ACCEPTED_PICKUPQUEST_QN"] = function( questName )
	return string.format( "Automatically Accepted PickupQuest: %s", questName )
end
L["AUTOMATICALLY_ACCEPTED_QUEST"] = function( questName )
	return string.format( "Automatically Accepted Quest: %s", questName )
end
L["JAMBA_QUESTLOG_DONOT_HAVE_QUEST"] = function( questName )
	return string.format( "I Do Not Have The Quest: %s", questName )
end
L["JAMBA_QUESTLOG_Have_Abandoned_Quest"] = function( questName )
	return string.format( "I Have Abandoned The Quest: %s", questName )
end

------------------------
-- QuestTracker Locale

L["SHOW_QUEST_WATCHER"] = "Show Objective Tracker"
L["SHOW_QUEST_WATCHER_HELP"] = "Show The Objective/Quest Jamba Tracker Window."
L["HIDE_QUEST_WATCHER"] = "Hide Objective Tracker"
L["HIDE_QUEST_WATCHER_HELP"] = "Hides The Objective/Quest Jamba Tracker Window."
L["QUEST_TRACKER_HEADER"] = "Quest Tracker Settings"
L["ENABLE_TRACKER"] = "Enable Objective Tracker"
L["ENABLE_TRACKER_HELP"] = "Enables The Jamba Objective/Quest Tracker"
L["UNLOCK_TRACKER"] = "Unlocks The Objective Tracker"
L["UNLOCK_TRACKER_HELP"] = "Unlocks The Objective/Quest Tracker \n\nHold Alt key To Move It\nLock to Click Through"
L["HIDE_BLIZZ_OBJ_TRACKER"] = "Hide Blizzard's Objectives Tracker" 
L["HIDE_BLIZZ_OBJ_TRACKER_HELP"] = "Hides Defualt Blizzard Objective\Quest Tracker"
L["SHOW_JOT_ON_MASTER"] = "Show The JOT On Master Toon"
L["SHOW_JOT_ON_MASTER_HELP"] = "Only show (Jamba Objective Tracker) On Master Character Only"
L["HIDE_JOT_IN_COMBAT"] = "Hide JOT In Combat"
L["HIDE_JOT_IN_COMBAT_HELP"] = "Hide Jamba Objective/Quest Tracker in Combat"
L["SHOW_COMPLETED_OBJ_DONE"] = "Show Completed Objectives As 'DONE'"
L["SHOW_COMPLETED_OBJ_DONE_HELP"] = "Show Completed Objectives/Quests As 'DONE'"
L["HIDE_OBJ_COMPLETED"] = "Hide Objectives Completed"
L["HIDE_OBJ_COMPLETED_HELP"] = "Hide Objectives/Quests Completed By The Team"
L["SEND_PROGRESS_MESSAGES"] = "Send Progress Messages"
L["SEND_PROGRESS_MESSAGES_HELP"] = "Send Progress Messages To Message Area Box Below"
L["LINES_TO_DISPLAY"] = "Lines Of Information To Display"
L["TRACKER_WIDTH"] = "Tracker Width"
L["DONE"] = "Done"
L["TRACKER_TITLE_NAME"] = "Jamba Objectives Tracker"

------------------------
-- Guild Locale
L["GUILDTAB"] = ""
L["GUILD_LIST_HEADER"] = "Guild Bank List"
L["GUILD_LIST"] = "Put Listed Items In The Guild Bank"
L["GUILD_LIST_HELP"] = "Automatically Put Listed Items Below In The Guild Bank"
L["GB_TAB_LIST"] = "Guild Bank Number Tab"
L["GUILD_BOE_ITEMS"] = "Places All Binds When Equipped Items In The GuildBank" 
L["GUILD_BOE_ITEMS_HELP"] = "Places All Binds When Equipped Items In The GuildBank"
L["GUILD_REAGENTS"] =  "Places All Crafting Reagents Items In The GuildBank"
L["GUILD_REAGENTS_HELP"] = "Places All Crafting Reagents Items In The GuildBank"
L["GB_OPTIONS"] = "Guild Bank Options"
L["GB_GOLD"] = "Adjust Characters Money While Visiting A Guild Bank"
L["GB_GOLD_HELP"] = "Adjust Characters Money While Visiting A Guild Bank"
L["REMOVE_GUILD_LIST"] = "Are You Sure You Wish To Remove The Selected Item From The Guild Items List?"

------------------------
-- X Locale
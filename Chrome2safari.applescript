set theFile to (choose file with prompt "Select the CSV file")
set f to read theFile
set recs to paragraphs of f
tell application "System Events"
	tell application process "Safari"
		set frontmost to true
		keystroke "," using command down
		tell window 1		
			click button "Passwords" of toolbar 1 of it					
			repeat until (exists button "Add" of group 1 of group 1 of it)				
				if not (exists button "Add" of group 1 of group 1 of it) then
					display dialog "To begin importing, unlock Safari passwords then click OK. Please do not use your computer until the process has completed." with title "CSV to iCloud Keychain"
				end if
			end repeat
		end tell
	end tell
end tell

set vals to {}
set AppleScript's text item delimiters to ","
repeat with i from 1 to length of recs
	set end of vals to text items of (item i of recs)
	set kcURL to text item 1 of (item i of recs)
	set kcUsername to text item 2 of (item i of recs)
	set kcPassword to text item 3 of (item i of recs)
	
	tell application "System Events"
		tell application process "Safari"
			set frontmost to true
			tell window 1
				click button "Add" of group 1 of group 1 of it
				tell application "System Events" to keystroke kcURL
				keystroke tab
				tell application "System Events" to keystroke kcUsername
				keystroke tab
				tell application "System Events" to keystroke kcPassword
				keystroke tab
				click button "Add Password" of sheet of it
			end tell
		end tell
	end tell
end repeat


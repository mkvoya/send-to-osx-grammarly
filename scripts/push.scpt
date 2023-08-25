tell application "System Events"
	tell application "Safari Technology Preview"
                repeat with t in tabs of windows
                    set tabName to name of t
                    if tabName is "Emacs - Grammarly" then
                        set current tab of (windows whose tabs contains t) to t
                        set index of (windows whose tabs contains t) to 1 
                        activate
                        tell application "System Events" to keystroke "a" using command down
                        tell application "System Events" to keystroke "v" using command down
                        display notification "" with title "Emacs Grammarly" subtitle "Pushed" sound name "Pop"
                        exit repeat
                    end if
                end repeat
	end tell
end tell
delay 0.1

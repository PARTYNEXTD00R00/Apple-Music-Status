#!/bin/bash
osascript <<EOF
tell application "Music"
    if player state is playing then
        set trackName to name of current track
        set trackArtist to artist of current track
        set pos to player position as integer
        set dur to duration of current track as integer

        set posMin to pos div 60
        set posSec to pos mod 60

        set durMin to dur div 60
        set durSec to dur mod 60

        return trackName & " - " & trackArtist & " (" & posMin & ":" & text -2 thru -1 of ("0" & posSec) & " / " & durMin & ":" & text -2 thru -1 of ("0" & durSec) & ")"
    else
        return "아무것도 안 듣는중"
    end if
end tell
EOF

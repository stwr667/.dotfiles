#!/usr/bin/osascript
# Format: {left_side_x_coord, top_y_coord, right_side_x_coord, bottom_y_coord}
# NOTE: these are triggers by keyboard shortcuts defined in BetterTouchTool

# try
# tell application "Notes"
# #    activate  # Don't start it if it's already quit.
#     set the bounds of the first window to {-890, -331, 0, 450}
#     #get the bounds of the first window
# end tell
# end try

try
tell application "TextEdit"
    activate
    set the bounds of the first window to {-1190, 719, 0, 1200}  # 1
    set the bounds of the second window to {-1190, 619, 0, 1100} # 2
    set the bounds of the third window to {-1190, 519, 0, 1000} # 3
    # set the bounds of the second window to {-690, 873, 0, 1180}   # 3
end tell
end try

try
tell application "Chrome"
    activate
    set the bounds of the first window to {-2560, -331, -590, 1440}
    set the bounds of the second window to {-2560, -331, -590, 1440}
    set the bounds of the third window to {-2560, -331, -590, 1440}
    # set the bounds of the third window to {-2560, -331, -1190, 1440} # When wanting iTerm LHS to align with Chrome RHS
end tell
end try

try
tell application "iTerm"
    activate
    # Note that for iTerm, it's worth getting coords exact so that manual resizing doesn't snap to a different size.
    set the bounds of the first window to {-1590, -331, 0, 605}
    # set the bounds of the first window to {-1390, -331, 0, 605} # When wanting iTerm LHS to align with Chrome RHS
end tell
end try

# Example of windows within application:
# try
# tell application "Adium"
#     activate
#     tell window "contacts"
#         set the bounds to {1281, 200, 1460, 850}
#     end tell
#     tell chat windows
#         set the bounds to {1281, 800, 1800, 1200}
#     end tell
#
# end tell
# end try


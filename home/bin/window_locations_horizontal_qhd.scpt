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
    set the bounds of the first window to {-1190, 732, 0, 1204}  # 1
    set the bounds of the second window to {-1190, 632, 0, 1104} # 2
    set the bounds of the third window to {-1190, 532, 0, 1004} # 3
    # set the bounds of the second window to {-690, 873, 0, 1180}   # 3
end tell
end try

try
tell application "Chrome"
    activate
    set the bounds of the first window to {-2560, -331, -1190, 1440}
    set the bounds of the second window to {-2560, -331, -1190, 1440}
    set the bounds of the third window to {-2560, -331, -1190, 1440}
end tell
end try

try
tell application "iTerm"
    activate
    # Note that for iTerm, it's worth getting coords exact so that manual resizing doesn't snap to a different size.
    set the bounds of the first window to {-1390, -331, 0, 614}
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


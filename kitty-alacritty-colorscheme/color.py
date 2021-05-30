# TODO
# Parse alacritty colorscheme file and save normal: and bright: colors in something like a dictionary
# Then convert these to a text string in the kitty format where
# black = color0 and color8
# red = color1, color9
# green ... and so on and so forth.
# An example of this conversion can be seen in sonokai_default.conf that I ported from alacritty to kitty
if __name__ ==  "__main__":
    print("Converting colorscheme from alacritty format to kitty format")

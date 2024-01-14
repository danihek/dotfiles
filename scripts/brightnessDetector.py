from PIL import Image

def is_color_close_to(color, threshold=100):
    brightness = (0.299 * color[0] + 0.587 * color[1] + 0.114 * color[2])
    return brightness < threshold  

image_path = '/home/venth/.cache/current_wallpaper.jpg'
img = Image.open(image_path)
img = img.convert('RGB')

width, height = img.size

black_count = 0
white_count = 0

for y in range(round(height/10)):
    for x in range(round(width/10)):
        pixel = img.getpixel((x, y))
        if is_color_close_to(pixel):
            black_count += 1
        else:
            white_count += 1
        x=x+10
    y=y+10

if black_count > white_count:
    dominant_color = 'black'
else:
    dominant_color = 'white'

css_content = f"""/* CSS file to detect if image is more black or white */
@define-color blackvar {'#6b5c5a' if dominant_color == 'black' else '#cfbebc'};
@define-color whitevar {'#cfbebc' if dominant_color == 'black' else '#6b5c5a'};
@define-color archborder {'#161320'if dominant_color == 'black' else '#89DCEB'};
@define-color archinside {'#89DCEB'if dominant_color == 'black' else '#161320'};
"""

css_file_path = '/home/venth/dotfiles/waybar/blackwhite.css'  # Replace with your desired CSS file path
with open(css_file_path, 'w') as css_file:
    css_file.write(css_content)

print(f"B: {black_count}\nW: {white_count}\n")


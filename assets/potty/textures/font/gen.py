from PIL import Image, ImageDraw

rows = 100
# rows = int(input())

image = Image.new('RGBA', (rows, rows * 12), (0, 0, 0, 0))

draw = ImageDraw.Draw(image)

for i in range(rows):
    draw.rectangle((i, 0, i, (rows - i) * 12 - 1), fill=(255, 255, 255))


image = image.transpose(Image.FLIP_TOP_BOTTOM)
image.save('fill.png')

for j in range(rows):
    image.paste((0, 0, 0, 0), (0, j * 12, rows, j * 12 + 2))

image.save('lowered_fill.png')

# image = Image.new('RGBA', (rows, rows * 12), (0, 0, 0, 0))

# draw = ImageDraw.Draw(image)

# for i in range(rows):
#     for j in range(rows - i):
#         draw.rectangle((i, j + 1, i, j + 11), fill=(255, 255, 255))

# image.transpose(Image.FLIP_TOP_BOTTOM).save('lowed_fill.png')





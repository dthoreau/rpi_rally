from flask import jsonify
import unicornhat as UH

def all_pixels_get() -> str:
    return 'do some magic!'

def dot_x_put(colour, x, y) -> str:
    paint_dot(x, y, colour.red, colour.green, colour.blue)

def monoframe_pixelmap_put(pixelmap, colour) -> str:
    return 'do some magic!'

def monoline_put(colour, line, pixelmap) -> str:
    paint_monoline(line, pixelmap, colour)
    UH.show()
    return 'do some magic!'

def show_get() -> str:
    UH.show()
    return 'Make it happen, captain!'

def paint_dot(x,y,red,green,blue):
    UH.set_pixel(int(x), int(y),red,green,blue)

def paint_monoline(line, details, colour):
    index = [7,6,5,4,3,2,1,0]
    mappings = int(details, 16)
    for x in range(8):
        testx = 2**index[x]
        if mappings >= testx:
             mappings  = mappings - testx
             paint_dot(x, line, colour["red"], colour["green"], colour["blue"])
        else:
             paint_dot(x, line, 0,0,0)

def sp_string(line, n):
    nn = int(n)
    return [line[i:i+nn] for i in range(0, len(line), nn)]

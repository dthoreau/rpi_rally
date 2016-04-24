from flask import jsonify
import unicornhat as UH

def all_pixels_get() -> str:
    return 'do some magic!'

def dot_x_put(colour, x, y) -> str:
    paint_dot(x, y, colour.red, colour.green, colour.blue)

def monoframe_pixelmap_put(pixelmap, colour) -> str:
    return 'do some magic!'

def monoline_put(colour, line, pixelmap) -> str:
    paint_monoline(line, pixelmap, colour.red, colour.green, colour.blue)
    return 200
    return({},undef, 200)

def show_get() -> str:
    paint_monoline(2, 'CC', 40,40,40)
    UH.show()
    return 'Make it happen, captain!'

def paint_dot(x,y,red,green,blue):
    UH.set_pixel(x,y,red,green,blue)

def paint_monoline(line, details, red, green, blue):
    index = [7,6,5,4,3,2,1,0]
    mappings = int(details, 16)
    for x in range(8):
        testx = 2**index[x]
        if mappings >= testx:
             mappings  = mappings - testx
             paint_dot(x, line, red,green,blue)
        else:
             paint_dot(x, line, 0,0,0)

def sp_string(line, n):
        return [line[i:i+n] for i in range(0, len(line), n)]

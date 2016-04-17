#!/usr/bin/env python 
import web 
import time
 
import unicornhat as UH 
 
urls = (
	'/dot/(.*)', 'dot',
	'/show', 'show',
	'/monoframe/(.*)', 'monoframe',
	'/monoline/(.*)', 'monoline'
)

index = [7,6,5,4,3,2,1,0]
app = web.application(urls, globals()) 

class show:
    def PUT(self):
       UH.show()

class dot:
    def PUT(self, input):
       param = input.split(';')
       paint_dot(int(param[0]),int(param[1]),int(param[2]), int(param[3]), int(param[4]))
       return
              
class monoline:
    def PUT(self, input):
        chunks = sp_string(input, 2)
        red = int(chunks[0],16)
        green = int(chunks[1], 16)
        blue = int(chunks[2],16)
        
        cv = int(chunks[3], 16)
        line = int(chunks[4],16)
        
        paint_monoline(line, cv, red,green,blue)
        UH.show()
        
def paint_monoline(line, details, red, green, blue):
	for x in range(8):
		testx = 2**index[x]
		if details >= testx:
			details = details - testx
			paint_dot(x, line, red,green,blue)
		else:
			paint_dot(x, line, 0,0,0)
	

class monoframe:
	def PUT(self, input):
		chunks = sp_string(input,2)
		red   = int(chunks[0], 16)
		green = int(chunks[1], 16)
		blue  = int(chunks[2], 16)
		index = [3,4,5,6,7,8,9,10]
		for cell_index in range(8):
			chunk = chunks[index[cell_index]]
			cv = int(chunk, 16)
			print "%s - %s" % (cv, cell_index)
			paint_monoline(cell_index,cv,red,green,blue)
		UH.show()
	       
def sp_string(line, n):
	return [line[i:i+n] for i in range(0, len(line), n)]	
	
def paint_dot(x,y,red,green,blue):
	UH.set_pixel(x,y,red,green,blue)
	return       

if __name__ == "__main__": 
    app.run()  


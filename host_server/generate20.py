#! /usr/bin/python
'''
File Name: image2coe.py
Author: Jesse Millwood
Python Version: 2.7
Date: March 12 2014

*** Partially modified by ECE532 G1 to fit our testing purposes ***

Description:
	This script loads in an image defined by the user and converts it to a
	Xilinx Coefficients File (.coe)
	The majority of this code is just adapted from a MATLAB script, "IMG2coe8.m",
	that was found in an on-line example at: 
	http://www.lbebooks.com/downloads.htm#vhdlnexys
	The specific example is at:
	http://www.lbebooks.com/downloads/exportal/VHDL_NEXYS_Example24.pdf

TO USE:
	The easiest way to use this script is to copy this module to the directory
	that contains the image that you want to convert. Then  start and instance 
	or your terminal emulator or command prompt in that same directory. Run this 
	module with the python command from the terminal emulator or command prompt
	text editor and change the contents of the string named ImageName. 
	Then run the script from a command line.
'''
# Imported Standard Modules
import sys
from PIL import Image 




def Convert (ImageName):
	"""
		This converts the given image into a Xilinx Coefficients (.coe) file.
		Pass it the name of the image including the file suffix.
		The file must reside in the directory from which this function is called
		or provide the absolute path. 
	"""

	width 	= 640  
	height	= 480
	# Create a .coe file and open it.
	# Write the header to the file, where lines that start with ';' 
	# are commented
        img = Image.new('RGB', (640,480), "black")
        pixels = img.load()
	filename = 'output20.coe'
	imgcoe	= open(filename,'w')
	imgcoe.write(';	VGA Memory Map\n')
	imgcoe.write('; .COE file with hex coefficients\n')
	imgcoe.write('; Height: {0}, Width: {1}\n'.format(height,width))
	imgcoe.write('memory_initialization_radix = 16;\n')
	imgcoe.write('memory_initialization_vector =\n')
	

	cnt = 0
	line_cnt = 0
        value_tracked = 1
        y20_cnt = 1

	for r in range(0, height):
                x20_cnt = 1
                value_to_write = value_tracked
		for c in range(0, width):
			
			Rb = bin(0)[2:].zfill(8)
			Gb = bin(0)[2:].zfill(8)
			Bb = bin(value_to_write)[2:].zfill(8)
                        pixels[c,r] = (0, 0, value_to_write)
			Outbyte = Rb+Gb+Bb
			# Check for Value Error, happened when the case of the pixel being 
			# zero was not handled properly	
		        try:
				#imgcoe.write('%2.2X'%int(Outbyte,2))
				imgcoe.write('%2.2X'%int(Rb,2))
                                cnt += 1
                                if cnt%32 == 0:
				        imgcoe.write(',\n')
				        line_cnt+=1
                                elif cnt%4 == 0:
                                        imgcoe.write(',')
				imgcoe.write('%2.2X'%int(Gb,2))
                                cnt += 1
                                if cnt%32 == 0:
				        imgcoe.write(',\n')
				        line_cnt+=1
                                elif cnt%4 == 0:
                                        imgcoe.write(',')
                                cnt += 1
				imgcoe.write('%2.2X'%int(Bb,2))
			except ValueError:
				print ('Value Error Occurred At:')
				print ('Contents of Outbyte: {0} at r:{1} c:{2}'.format(Outbyte,r,c))
				print ('R:{0} G:{1} B{2}'.format(R,G,B))
				print ('Rb:{0} Gb:{1} Bb:{2}'.format(Rb,Gb,Bb))
				sys.exit()
			# Write correct punctuation depending on line end, byte end,
			# or file end
			if c==width-1 and r==height-1:
				imgcoe.write(';')
			else:
				if cnt%32 == 0:
					imgcoe.write(',\n')
					line_cnt+=1
				elif cnt%4 == 0:
					imgcoe.write(',')
                        x20_cnt += 1
                        if x20_cnt > 20:
                            x20_cnt = 1
                            value_to_write += 1
                            if value_to_write > 20:
                                value_to_write = 1
                            if y20_cnt == 20:
                                value_tracked += 1
                                if value_tracked > 20:
                                    value_tracked = 1
                y20_cnt += 1
                if y20_cnt > 20:
                    y20_cnt = 1

	imgcoe.close()
	print ('Xilinx Coefficients File:{} DONE'.format(filename))
	print ('Size: h:{} pixels w:{} pixels'.format(height,width))
	print ('COE file is 32 bits wide and {} bits deep'.format(line_cnt))
	print ('Total addresses: {}'.format(32*(line_cnt+1)))
        img.show()


if __name__ == '__main__':
	#ImageName = input('Enter the name of your image: ')
	Convert('20')

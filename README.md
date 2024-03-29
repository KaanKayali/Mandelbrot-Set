# Mandelbrot-Set
The Mandelbrot-Set visualised in a YYC file using imaginary numbers.

## Explanation
The Mandelbrot set is a fascinating mathematical concept and a visual representation of complex numbers. The Mandelbrot set is defined in the context of complex numbers, which are numbers of the form:  


where **a** and **b** are real numbers, and **i** is the imaginary unit:  
  
![Alt text](/AplusBImage.jpg)  
![Alt text](/ImaginarynumberImage.jpg)  

The Mandelbrot set is created by iterating a specific mathematical operation on complex numbers. The iteration involves repeatedly applying the function  
  
![Alt text](/functionImage.jpg)  

where **z** is the current complex number, and **c** is a constant complex number. The process is carried out over and over, and the outcome of each iteration becomes the input for the next one.

Here's how the process works:

1. Start with a complex number **c**. This could be any point in the complex plane.

2. Initialize **z** to 0.

3. Iterate the function **f(z)=z^2+c**
using the current **z** as the input.

4. Replace **z** with the result of the iteration.

5. Repeat steps 3 and 4 for a predetermined number of iterations or until **∣z∣** (the magnitude of **z**) becomes larger than a certain threshold.

6. If **∣z∣** remains bounded (i.e., it doesn't become infinitely large) after the specified number of iterations, then the point **c** is considered to be part of the Mandelbrot set. If **∣z∣** becomes larger than the threshold, the point is not part of the set.

7. Repeat this process for every point **c** in the complex plane.

8. Assign colors to the points based on how quickly they escape to infinity. Points that escape quickly are assigned one color, while points that take longer to escape are assigned another color.

When you visualize the points in the complex plane that belong to the Mandelbrot set, you get a beautiful and intricate fractal pattern:  
  
![Alt text](/MandelbrotsetImage.jpg)  

The Set runs on the GPU in realtime, so there is a limited precision. 
The loading time of the fractal depends on your pcs performance.

## How the code works
Every pixel on the display has a coordinate on the imaginary coordinate system and goes through those calculations above. The value **n** counts how many times the pixel gets measured and checked:  
  
![Alt text](/DisplayImage.jpg)  
![Alt text](/FormulaofCImage.jpg)  

A value that isnt in the mandelbrot set explodes in the loop to a bigger value than 16. The count **n** decides which color the pixel has. The **n** of a pixel in the set contains infinity. It switches in the calculation back and forth between the same values. The pixel that is in the set gets colored completly black.  
  
![Alt text](/ColorinSetImage.jpg)  

Checking a loop to infinity is impossible in general and so in code. It needs a maximum value of iterations set. The higher the maxiterations is the precisier the pixel is.
Thats another reason why the level of detail is limited.

## Displaying coordinate system
The width of the coordinate system needs to be scaled to the actual Width of the display.  
Final display of mandelbrotset:  
  
![Alt text](/Mandelbrotset2Image.jpg)  

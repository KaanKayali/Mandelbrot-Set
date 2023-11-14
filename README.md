# Mandelbrot-Set
The Mandelbrot-Set visualised in a YYC file using imaginary numbers.

## Explanation
The Mandelbrot set is a fascinating mathematical concept and a visual representation of complex numbers. The Mandelbrot set is defined in the context of complex numbers, which are numbers of the form:
<img src=”/AplusBImage.jpg” alt=”a+b” />
where **a** and **b** are real numbers, and **i** is the imaginary unit:
<img src=”/ImaginarynumberImage.jpg” alt=”i=sqrt(-1)” />

The Mandelbrot set is created by iterating a specific mathematical operation on complex numbers. The iteration involves repeatedly applying the function
<img src=”/ImaginarynumberImage.jpg” alt=”i=sqrt(-1)” />
where **z** is the current complex number, and **c** is a constant complex number. The process is carried out over and over, and the outcome of each iteration becomes the input for the next one.

Here's how the process works:

1. Start with a complex number **c**. This could be any point in the complex plane.

2. Initialize **z** to 0.

3. Iterate the function:
<img src=”/ImaginarynumberImage.jpg” alt=”i=sqrt(-1)” />
using the current **z** as the input.

4. Replace zz with the result of the iteration.

5. Repeat steps 3 and 4 for a predetermined number of iterations or until **∣z∣** (the magnitude of **z**) becomes larger than a certain threshold.

6. If **∣z∣** remains bounded (i.e., it doesn't become infinitely large) after the specified number of iterations, then the point **c** is considered to be part of the Mandelbrot set. If **∣z∣** becomes larger than the threshold, the point is not part of the set.

7. Repeat this process for every point **c** in the complex plane.

8. Assign colors to the points based on how quickly they escape to infinity. Points that escape quickly are assigned one color, while points that take longer to escape are assigned another color.

When you visualize the points in the complex plane that belong to the Mandelbrot set, you get a beautiful and intricate fractal pattern:
<img src=”/MandelbrotsetImage.jpg” alt=”i=sqrt(-1)” />

The Set runs on the GPU in realtime, so there is a limited precision. 
The loading time of the fractal depends on your pcs performance.


# NL-means denoising
Our analysis of an article named "A non-local algorithm for image denoising".
* Authors : Erwan Gautier, Alex Foulon 
* Article : https://www.iro.umontreal.ca/~mignotte/IFT6150/Articles/Buades-NonLocal.pdf

### Implementation

This repository contains experiments realted to the implementation of the NL-Means algorithm.
For more details, read "nlmeansC/README.txt".
* Implementation Author : Antoni Buades <toni.buades@gmail.com>

### Test using our simple script (Linux only)

To test the NLmeans algorithm, simply put your image of choice into the "images" folder and name it "reference.png". Then, execute our script using ./denoise.sh 20 for a noise standard deviation of 20. You can put any value between 0 and 99 as a parameter.

When finished, check the "images" folder and see the results in "noise.png" and "denoise.png".

### Manual testing using original interface

To build the project, you first need to go into ./nlmeansC and execute the "make" command.

When trying to create noise you must use 1 as a "add_noise" parameter
When trying to remove noise you must use 0 instead
The first number is the noise level added or estimated

The first param must be the reference image when noising and the noisy image when denoising
Template if you want to denoise noise.png:
./nlmeansC/nlmeans_ipol ./images/noise.png 60 0 ./images/denoise.png ./images/noise.png

Template if you want to noise reference.png:
./nlmeansC/nlmeans_ipol ./images/reference.png 60 1 ./images/denoise.png ./images/noise.png


#!/bin/bash
sigma=$1

if [ -z "$sigma" ]; then
    echo "Error: No sigma value provided."
    echo "Usage: ./script.sh [sigma]"
    exit 1
fi

cd nlmeansC
make
cd ..
echo "Generating noise..."
./nlmeansC/nlmeans_ipol ./images/reference.png $sigma 1 ./images/denoise.png ./images/noise.png
echo "Denoising original image..."
./nlmeansC/nlmeans_ipol ./images/noise.png $sigma 0 ./images/denoise.png ./images/noise.png
echo "Done !"
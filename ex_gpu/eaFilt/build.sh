#!/bin/bash
nvcc main.cu `pkg-config --libs opencv` -lm -lstdc++ -o main.x -D TX1 -O3 --use_fast_math -arch compute_52 -code sm_53



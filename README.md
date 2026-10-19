# Spectral Decomposition and Analysis of Complex Signals

## Project Overview

This project analyzes a complex signal containing three frequency
components using MATLAB. It demonstrates signal generation, time-domain
analysis, frequency-domain analysis, and dominant frequency detection.

## Subject

Signals and Systems

## Objectives

- Generate a complex signal using exponential functions.
- Analyze the real and imaginary parts of the signal.
- Visualize signal magnitude and phase.
- Apply the Fast Fourier Transform (FFT).
- Analyze positive and negative frequency components.
- Calculate Power Spectral Density (PSD) using Welch's method.
- Identify dominant frequencies using peak detection.

## Tools Used

- MATLAB
- Signal Processing Toolbox functions, where required

## Signal Parameters

| Parameter | Value |
|---|---:|
| Sampling frequency | 1000 Hz |
| Frequency component 1 | 10 Hz |
| Frequency component 2 | 20 Hz |
| Frequency component 3 | 30 Hz |
| Amplitude component 1 | 10 |
| Amplitude component 2 | 5 |
| Amplitude component 3 | 20 |

## Methodology

1. Generate the complex signal.
2. Extract its real part, imaginary part, magnitude, and phase.
3. Calculate the FFT and plot its magnitude spectrum.
4. Apply FFT shifting to visualize positive and negative frequencies.
5. Calculate the Power Spectral Density using Welch's method.
6. Detect dominant frequency components.

## Results

The MATLAB peak-detection output identified the following frequencies:

| Expected Frequency | Detected Frequency |
|---:|---:|
| 10 Hz | 9.9950 Hz |
| 20 Hz | 19.9900 Hz |
| 30 Hz | 29.9850 Hz |

The detected frequencies are close to the original frequency components.

## Learning Outcomes

This project helped me understand complex signal representation,
FFT-based frequency analysis, power spectral density, and dominant
frequency detection using MATLAB.

## Author

Siddardha Jakkam

B.Tech - Electronics and Communication Engineering

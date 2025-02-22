# Planar Inverted-F Antenna (PIFA) for 5G Frequencies

## Overview
This project focuses on the **design, analysis, and optimization of a Planar Inverted-F Antenna (PIFA) for 5G frequencies**. It includes theoretical background, MATLAB-based simulations, and CST Studio Suite simulations to evaluate antenna performance at different frequency bands.

## Repository Structure
```
/
|-- Documentation/
| |-- COLAPIETRA_DE_SIMONE__Design__analysis_and_optimization_of_a_Planar_Inverted_F_Antenna__PIFA__for_5G_frequencies (1).pdf   # Project report
|
|-- MATLAB_Scripts/
| |-- PCR.m   # MATLAB script for data processing
|
|-- Simulations_CST/
| |-- *.cst   # CST Studio Suite simulation files
|
|-- Data/
| |-- *.txt   # Measurement and simulation results
|
|-- Figures/
| |-- *.png   # Plots and results visualization
|
|-- README.md   # Project documentation
```
## Project Details
### **1. Theoretical Background**
- Overview of **patch antennas** and their evolution
- Characteristics and advantages of **Planar Inverted-F Antennas (PIFA)**
- Key design parameters: **impedance, S11, VSWR, directivity, current distribution**

### **2. Design & Simulation**
- **MATLAB Antenna Toolbox** used for initial antenna design
- **CST Studio Suite** simulations for electromagnetic field analysis
- **Optimization process** for improved efficiency and reduced reflection

### **3. Results & Comparisons**
- Performance evaluation based on:
  - **Feed offset variations**
  - **Length and width adjustments**
  - **Ground plane modifications**
- **Final optimized design vs. initial design** comparison

## Requirements
To run the simulations and process the results, you will need:
- **MATLAB** (with Antenna Toolbox & Machine Learning Toolbox)
- **CST Studio Suite** (for electromagnetic simulations)
- Python (optional, for data analysis and plotting)

## Usage
### **MATLAB Processing**
To execute the MATLAB script:
```matlab
run('MATLAB_Scripts/PCR.m') 
```
## CST Simulations

1. Open CST Studio Suite.
2. Load any `.cst` file from the `Simulations_CST/` folder.
3. Run the electromagnetic simulation.

## Contributors

- **Antonio Pio Colapietra**
- **Fabio De Simone**

## Future Work

- Implementation of PIFA with slots for miniaturization.
- Design of PIFA antenna arrays for enhanced gain.
- Exploration of different substrate materials for improved performance.

## License

This project is released under the MIT License. See [LICENSE](LICENSE) for details.

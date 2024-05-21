# System Identification of Fanuc Robotic Arm 

This project investigates the modal properties (natural frequencies and mode shapes) of a Fanuc robot arm using modal testing techniques. Modal testing helps characterize the dynamic behavior of a structure by identifying its natural frequencies and corresponding vibration patterns. 

**Control system design**: Understanding the natural frequencies allows for designing controllers that avoid exciting these resonances, improving robot performance and stability.
**Vibration analysis and mitigation**: Identifying the modes helps diagnose and mitigate excessive vibrations that can impact robot accuracy and lifespan.
**Structural health monitoring**: Changes in modal properties over time can indicate potential damage or fatigue in the robot structure.

## Experimental Setup

The experiment involved setting up the robot in a well-defined pose and mounting a single-axis accelerometer (Dytran 3055D2) at various locations. A modal hammer (PCB 086D20 with a hard tip) was used to excite the robot structure at different points. The data acquisition system (NI DAQ cDAQ-9171) captured the response of the accelerometer to the impact excitation. The collected data was analyzed to determine the natural frequencies of the robot arm.

## Data Collection and Analysis

Multiple modal tests were conducted, and the data was categorized based on the impact location (denoted by H<jk>, where j and k represent the directions of excitation and response, respectively). The collected Frequency Response Functions (FRFs) were analyzed to identify the natural frequencies (Wn) of the robot arm in various directions.

## Key Findings:

The robot arm exhibited multiple natural frequencies across different directions, ranging from approximately 8 Hz to 107 Hz.
Repeatability of the experiments was verified by comparing FRFs from different test sessions. Data for specific directions (Hxx, Hyy, Hzz) showed good repeatability, while others (Hyx, Hxy) required further investigation due to inconsistencies at lower frequencies.
A potential non-linear behavior of the robot structure was observed. The analysis of excitation forces revealed significant variations, leading to changes in the FRFs for some directions (e.g., Hxy). This suggests that the robot's dynamic response may not be entirely linear and might be influenced by the excitation force level.
Reciprocity, a property where the FRFs for opposite impact and response directions (e.g., Hxz and Hzx) are identical, was confirmed for the X and Z directions. However, further testing was deemed necessary to assess reciprocity in other directions due to data limitations.

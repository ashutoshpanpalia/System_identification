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
** Modal Testing Results - Natural Frequencies (Hz)
**
| FRF | Date | Hxx | Hyy | Hzz | Hxy | Hyx | Hzy | Hyz | Hxz | Hzx |
|---|---|---|---|---|---|---|---|---|---|---|
| Natural Frequency (15th May) | 2023 | 13, 37, 55 | 15, 66, 107 | 9, 14, 56 | 13, 34, 57 | 8, 13, 34, 56 | 13, 33, 54 | - | 9, 13, 39, 56 | 12, 38, 56 |
| Natural Frequency (13th May) | 2023 | - | 51, 68, 109 | - | 8, 55, 106 | 56, 74 | - | - | - | - |
| Remarks |  The experiment is repeatable as FRF overlaps| The data for Hyy collected on 15th May is repeatable as FRF coincides. It also shows that the data is coherent with experiments on 13th May at higher frequency (>50Hz). Both data set have Wn at ~66 and 107 Hz. Data not repeatable for low frequency(<10Hz) above that the two sets of Hzz are repeatable|The data for Hxy collected on 15th May is not repeatable at low frequency (<40Hz). It also shows that the data is coherent with experiments on 13th May at higher frequency (>40Hz). Both data set have Wn at ~55 Hz|The Data is not much repeatable as FRF do not coincide for most of the frequency. But the data in all the graphs of Hyx (15th May and 13th May) shows a definitive peaks at 56 Hz.|One set of data collected was noise so repeatability cannot be checked|The FRF do not coincide fully, although following the same patterns showing repeatability of data|The data is not repeatable at low frequency(<8Hz) but repeatable in the region after|The data is not repeatable at low frequency(<10Hz) but repeatable in the region after|The robot arm exhibited multiple natural frequencies across different directions, ranging from approximately 8 Hz to 107 Hz.

Repeatability of the experiments was verified by comparing FRFs from different test sessions. Data for specific directions (Hxx, Hyy, Hzz) showed good repeatability, while others (Hyx, Hxy) required further investigation due to inconsistencies at lower frequencies.

A potential non-linear behavior of the robot structure was observed. The analysis of excitation forces revealed significant variations, leading to changes in the FRFs for some directions (e.g., Hxy). This suggests that the robot's dynamic response may not be entirely linear and might be influenced by the excitation force level.
Reciprocity, a property where the FRFs for opposite impact and response directions (e.g., Hxz and Hzx) are identical, was confirmed for the X and Z directions. However, further testing was deemed necessary to assess reciprocity in other directions due to data limitations.

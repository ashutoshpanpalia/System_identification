# System Identification of Fanuc Robotic Arm 

This project investigates the modal properties (natural frequencies and mode shapes) of a Fanuc robot arm using modal testing techniques. Modal testing helps characterize the dynamic behavior of a structure by identifying its natural frequencies and corresponding vibration patterns. 

**Control system design**: Understanding the natural frequencies allows for designing controllers that avoid exciting these resonances, improving robot performance and stability.
**Vibration analysis and mitigation**: Identifying the modes helps diagnose and mitigate excessive vibrations that can impact robot accuracy and lifespan.
**Structural health monitoring**: Changes in modal properties over time can indicate potential damage or fatigue in the robot structure.

## Experimental Setup
Fanuc Robotic Arm ()

Single-axis accelerometer (Dytran 3055D2) at various locations

Modal hammer (PCB 086D20 with a hard tip) was used to excite the robot structure at different points

The data acquisition system (NI DAQ cDAQ-9171) captured the response of the accelerometer to the impact excitation

High Speed camera to conduct Vision based modal analysis

## Data Collection and Analysis

Two set of experimentation was conducted:

First is collecting data with acclerometers 

Second is collecting data with high speed cameras


Multiple modal tests were conducted, and the data was categorized based on the impact location (denoted by H<jk>, where j and k represent the directions of excitation and response, respectively). The collected Frequency Response Functions (FRFs) were analyzed to identify the natural frequencies (Wn) of the robot arm in various directions.

## Key Findings :



## Modal Testing Results - Natural Frequencies (Hz) using acclerometers
![image](https://github.com/ashutoshpanpalia/System_identification/assets/43078289/d3c2a5b3-38bf-42e7-a2e6-d1abfe62778d)
![image](https://github.com/ashutoshpanpalia/System_identification/assets/43078289/462e1424-5ee6-4c1f-892e-cfc342d180eb)
![image](https://github.com/ashutoshpanpalia/System_identification/assets/43078289/ef4af271-284c-4e69-aa13-f7556864735f)




| Measurement | **Exp-2** | **Exp-1** | **Remarks** |
|---|---|---|---|
| FRF | Natural Frequency (Exp-2) | Natural Frequency (Exp-1) |  |
| Date | 2023 | 2023 |  |
| Hxx | 13, 37, 55 | - | The experiment is repeatable as FRF overlaps |
| Hyy | 15, 66, 107 | 51, 68, 109 | "The data for Hyy collected on 15th May is repeatable as FRF coincides. It also shows that the data is coherent with experiments on 13th May at higher frequency (>50Hz). Both data set have Wn at ~66 and 107 Hz." |
| Hzz | 9, 14, 56 | - | Data not repeatable for low frequency(<10Hz) above that the two sets of Hzz are repeatable |
| Hxy | 13, 34, 57 | 8, 55, 106 | "The data for Hxy collected on 15th May is not repeatable at low frequency (<40Hz). It also shows that the data is coherent with experiments on 13th May at higher frequency (>40Hz). Both data set have Wn at ~55 Hz." |
| Hyx | 8, 13, 34, 56 | 56, 74 | "The Data is not much repeatable as FRF do not coincide for most of the frequency. But the data in all the graphs of Hyx (15th May and 13th May) shows a definitive peaks at 56 Hz" |
| Hzy | 13, 33, 54 | - | One set of data collected was noise so repeatability cannot be checked. |
| Hyz | - | - | The FRF do not coincide fully, although following the same patterns showing repeatability of data|
| Hxz | 9, 13, 39, 56 | - | The data is not repeatable at low frequency(<8Hz) but repeatable in the region after |
| Hzx | 12, 38, 56 | - | The data is not repeatable at low frequency(<10Hz) but repeatable in the region after |
| Overall |  |  | The robot arm exhibited multiple natural frequencies across different directions, ranging from approximately 8 Hz to 107 Hz. |

Repeatability of the experiments was verified by comparing FRFs from different test sessions. Data for specific directions (Hxx, Hyy, Hzz) showed good repeatability, while others (Hyx, Hxy) required further investigation due to inconsistencies at lower frequencies.
A potential non-linear behavior of the robot structure was observed. The analysis of excitation forces revealed significant variations, leading to changes in the FRFs for some directions (e.g., Hxy). This suggests that the robot's dynamic response may not be entirely linear and might be influenced by the excitation force level.
Reciprocity, a property where the FRFs for opposite impact and response directions (e.g., Hxz and Hzx) are identical, was confirmed for the X and Z directions. However, further testing was deemed necessary to assess reciprocity in other directions due to data limitations.


## Modal Testing Results - Natural Frequencies (Hz) using high speed cameras
**Extraction of Displacement data from high speed camera using Image Analysis**
![image](https://github.com/ashutoshpanpalia/System_identification/assets/43078289/d060af97-e2ea-4f91-b569-c041b0568477)

![image](https://github.com/ashutoshpanpalia/System_identification/assets/43078289/ac5856b7-43af-428d-8dd3-b0f1b24da2aa)

![image](https://github.com/ashutoshpanpalia/System_identification/assets/43078289/8394b08e-41be-4782-9bac-d326ba1c9697)
![image](https://github.com/ashutoshpanpalia/System_identification/assets/43078289/927fd215-c632-42b7-b13f-a80f061dea09)




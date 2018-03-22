# Car Emulator Testbed
### Contribute by: Ying Wang, Dinggao Pan

# Incentive
Nowadays, vehicles are not controlled directly by the operateors. Instead, automobiles are controlled by operators via tiny computers inside it - electronic controller units(ECUs). In modern day cars, there are on average around 80 ECUs controlling every aspect of the automobile, from engine to door lock. In advacned luxery cars, there are up to 150 ECUs in sided them. ECUs also collects infomation from sensors connected to them to inform drivers the situation of their cars. With all the ECUs and sensors installed, modern automobiles are prone to be attacked by two ways:
  - Attack the controls command sent by ECUs;
  - Attack the sensor data to affect the control or the judgement of the drivers;
The attacks can be done via two methods:
  - Offline attacks through OBD-II
  - Online attacks through internet connection of the car or wireless sensors attached to the car;
The car emulator testbed is designed to simulate various attacks on the car without having to endanger the driver and provide the actual data collected from uncompromised and attacked sensors. 
# Background
## 1. AutoSAR
AutoSAR starts from 2003 aims at developing a universal cross-brand cross-platform software architecture that will have standardized APIs. We choose to work under this framework to give the most credibility to our simulation results. The architecture of AutoSAR isgiven as following:
 - Basic Sofwares, serves as lower level APIs for application level;
 - Runtime Environment, defines the communication protocol of the inter and intra-ECUS messages;
 - Application, the user defined software running on ECUs.
## 2. ERIKA
Erika is an open sources RTOS that comply with AutoSAR standards. We choose this framework for the potential of extending it onto multicore platform as well as the potential of co-development along with embedded linux. 
# Hardware Choices
Erika supports a variety of hardware platforms. Unfortunetly, more powerful ECUs are not available immediately. After some research into the architectures supported by ERIKA, we decide to go with AVR8 which is implemnted on Arudinos. There are several reasons for this choice: 
 - The ability to extended with CAN bus via Arduino CAN bus Shield;
 - Various supports on sensors and other communication protocol such as SPI, I2C if needed;
 - Immediate Availability;

# ERIKA Integration

OIL file: is a part of real time OS source code, which is generated and compiled together with the application. There are two parts: a set of definitions and a set of declaration part of configuring a specific kernel. The first part mainly defines the data types, constants and kernel objects that need to be provided in the declaration part for configuring a specific kernel, which is similar to C struct declaration. And the declaration part is used to specify which objects are really present in a particular application.

Code.cpp: contains the task functions of each ECU, for example, read the sensor data and send the data through CAN bus protocol.


# Hardware Architecture

The following figure shows the view of hardware architecture. Firstly, we used Arduino boards with various sensors to emulate ECUs of the car. And connected each ECU through CAN bus protocol. More specifically, we have five Arduino boards (or ECUs) in our work, four of them connect with sensors, such as distance sensor, temperature sensor, water depth sensor, and accelerometer sensor. Once it got the data from sensor, it would send the data to CAN bus with a unique ID. The last Arduino boards (or ECUs) is used to receive all the message from the CAN bus.

# Software Architecture

Our testbed system is based on Erika 3. The application of each Arduino (or ECU) is defined at the Code.cpp file, and the corresponding library is included in OIL file.


# Attack Simulation Setup

As for attack simulation, we built a framework of sensor level attack. We used Python to extract the sensor data via Serial before the data sending to CAN bus, and used various type of attack function to change the data. In this way, the data sent to CAN bus is the wrong or attacked data. For example, the ECU with distance sensor, the regular step is getting the duration of sound traveling from, computing the distance based on the time, and sending the data to CAN bus. However, we inject our python code to the application, before the data sending to CAN bus (right after computing the distance), we get the data, change the data with various attack functions, and send it back. The attacked data then was sent to the CAN bus, which mean the CAN bus receiver will miss the original data.


# Future Work

# References

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.

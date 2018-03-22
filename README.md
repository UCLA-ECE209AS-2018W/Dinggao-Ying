# Car Emulator Testbed
### Contribute by: Ying Wang, Dinggao Pan

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

# Incentive

# Background
## 1. AutoSAR
## 2. ERIKA

# Hardware Choices

# ERIKA Integration

OIL file: is a part of real time OS source code, which is generated and compiled together with the application. There are two parts: a set of definitions and a set of declaration part of configuring a specific kernel. The first part mainly defines the data types, constants and kernel objects that need to be provided in the declaration part for configuring a specific kernel, which is similar to C struct declaration. And the declaration part is used to specify which objects are really present in a particular application.

Code.cpp: contains the task functions of each ECU, for example, read the sensor data and send the data through CAN bus protocol.


# Hardware Architecture

The following figure shows the view of hardware architecture. Firstly, we used Arduino boards with various sensors to emulate ECUs of the car. And physically connected each ECU through CAN bus protocol. More specifically, we have five Arduino boards (or ECUs) in our work, four of them connect with sensors, such as distance sensor, temperature sensor, water depth sensor, and accelerometer sensor. Once it got the data from sensor, it would send the data to CAN bus with a unique ID. The last Arduino boards (or ECUs) is used to receive all the message from the CAN bus.

![alt text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/Hardware%20Architecture.png) 


# Software Architecture

The following figure presents the overview of software architecture. Our testbed system is based on Erika 3. The application of each Arduino (or ECU) is defined at the Code.cpp file, and the corresponding library is included in OIL file.

![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/Software%20Architecture.png)

# Attack Simulation Setup

As for attack simulation, we built a framework of sensor level attack, the overview of the attack is shown as the following figure. We used Python to extract the sensor data via Serial before the data sending to CAN bus, and used various type of attack function to change the data. In this way, the data sent to CAN bus is the wrong or attacked data. For example, the ECU with distance sensor, the regular step is getting the duration of sound traveling from, computing the distance based on the time, and sending the data to CAN bus. However, we inject our python code to the application, before the data sending to CAN bus (right after computing the distance), we get the data, change the data with various attack functions, and send it back. The attacked data then was sent to the CAN bus, which mean the CAN bus receiver will miss the original data.

![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/attack%20view.png)



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

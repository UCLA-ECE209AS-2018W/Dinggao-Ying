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

The following figure shows the view of hardware architecture. Firstly, we used Arduino boards with various sensors to emulate ECUs of the car. And physically connected each ECU through CAN bus protocol. More specifically, we have five Arduino boards (or ECUs) in our work, four of them connect with sensors, such as distance sensor, temperature sensor, water depth sensor, and accelerometer sensor. Once it got the data from sensor, it would send the data to CAN bus with a unique ID. The last Arduino boards (or ECUs) is used to receive all the message from the CAN bus.

![alt text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/Hardware%20Architecture.png) 


# Software Architecture

The following figure presents the overview of software architecture. Our testbed system is based on Erika 3. The application of each Arduino (or ECU) is defined at the Code.cpp file, and the corresponding library is included in OIL file. More specifically, the sending ECUs transfer the analog data to digital data, convert the data to 8-byte char array, and send the message to the CAN bus with unique ID. And the receiving ECU will analyze the message and send it to the control system. Currently, we used Serial print line for control system. For example, when the CAN bus got the distance sensor data suddenly decreases, it will result in "gas down".

![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/Software%20Architecture.png)

# Attack Simulation Setup

As for attack simulation, we built a framework of real-time sensor level attack, the overview of the attack is shown as the following figure. We used multi-thread Python to linsten each sensor data via Serial ports and used various types of attack functions to change the data before the data sending to CAN bus. In this way, the data sent to CAN bus is the wrong or in other words is the attacked data. For example, the ECU with distance sensor, the regular step is getting the duration of sound traveling, computing the distance based on the time, and sending the data to CAN bus. However, we inject our multi-thread python code to the application; before the data sending to CAN bus (right after computing the distance), we get the data, change the data with various attack functions, and send it back. The attacked data then was sent to the CAN bus, which mean the CAN bus receiver will not the original data. And the attacked data could lead false control system. 

![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/attack%20view.png)

# Attack Demo Video

The following link shows the video of attacking on sensor level. In the video, we show the attacks on distance sensor and water depth sensor. We assume the distance sensor is for the automonous cruise control (ACC) system, which will follow the front car in a certain range, if the distance gets further, it will send the message to control system to speed up, and vice versa. As for the hacking system, we will change the original data to miss lead the control system. As the video shows, when the distance gets closer, the control system will speed up.

https://youtu.be/KrLcR4p-Xyg

# How it works
1. Download & install Erika 3
   - Download Erika Enterprise, version 3: http://www.erika-enterprise.com/
   - Erika 3 support Linux and Window, the following figures show the examples built on Ubuntu 16.04.
   
2. Import projects 
   - Double-click the **eclipse** application located in the eclipse folder extracted from the RT-Druid Package. Click on the Welcome tab-sheet close button to show the default RT-Druid Eclipse IDE C/C++ perspective as shown in the following figure:
   
   ![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/imgs/1.png)

   - Click on *File->Import*, and then go to *General->Existing Porjects into Workspace* as the following figure. And click *Next*.
   
   ![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/imgs/2.png)
   
   - Choose path of the projects, where you download. Then click *Finish*, as the following figure:
   
   ![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/imgs/3.png)

3. RT-Druid Configuration
   - Click on the *Window->Preferences* menu entry as shown in the following figure:
   
   ![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/imgs/4.png)
   
   - Click the *Generator Properties* entry in the OIL section of the left panel to show the RT-Druid Generator Properties to configure.
   - Double-click on the *Arduino SDK* property to configure the Arduino SDK installation path. Browse the file-system to select the Arduino SDK path
   - Double-click on the *Arduino Serial Port* property to configure the Arduino Serial Port. Type the ttyACM (for Linux)/ COM (for Windows) Port where the Arduino UNO Board is connected.
   - Double-click on the *Arduino Serial Baudrate* Property to configure the Arduino Serial Baudrate to set it to 115200 (the Arduino UNO Bootloader Baudrate).
   - Confirm the configuration properties as shown in the following figure:
   
   ![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/imgs/5.png)
   
4. ERIKA distribution clean
   - Right-Click on the *project* (e.g. distance_sensor) into Eclipse Project Explorer panel and click on *Clean Erika* context-menu entry.
   - The Clean up Erika Files dialog window will appear as shown in the following figure:

   ![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/imgs/6.png)
   
   - Click on the *Yes* button to clean the whole ERIKA distribution.
  
   - NOTE: the distribution folder will be automatically regenerated if the flag *Build Automatically* is enabled.

   ![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/imgs/7.png)
   
5. ERIKA project build
   - If the flag *Build Automatically* isn't enabled, right-click on *project* into Eclipse Project Explorer panel and click on *Build Project* context-menu entry.
   
   - For linux:
     - Go to *out->makefile*, the default generate one should be looks like the following figure:
     
     ![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/imgs/8.png)
     
     - Change it as following:
     
     ```
     export  ARDUINO_PORT        = /dev/ttyACM0
     export  ARDUINO_BAUDRATE    = 11520
     export  ARDUINO_MCU         = atmega328p
     export  ARDUINO_SDK_FILES   = /home/yvonne/Downloads/arduino-1.8.5
     
     upload:
	   @$(ARDUINO_SDK_FILES)/hardware/tools/avr/bin/avrdude \
	   -C$(ARDUINO_SDK_FILES)/hardware/tools/avr/etc/avrdude.conf \
	   -p$(ARDUINO_MCU) -carduino -P$(ARDUINO_PORT) \
	   -b$(ARDUINO_BAUDRATE) -D -Uflash:w:arduino.hex:i
     ```
    
     - Note: if the makefile has been changed, *Build Project* one more time.

6. Add Upload Build Target
   - The upload build target has been created if you download the file from this repo.
   - Right-Click on *project* into Eclipse Project Explorer panel and click on *Build Target -> Create...*. 
   - Uncheck the *Run all project builders* check-box and then click on OK button, as shown in the following figure:
   
   ![alt_text](https://github.com/UCLA-ECE209AS-2018W/Dinggao-Ying/blob/master/imgs/9.png)
   
7. Application Upload on Arduino Board
   - Double-Click on *upload build target* created in the previous section to start the upload process.
   - The upload process ends successfully when *"Project Finished"* shows in console.
   
8. After uploading 4 projects from this repo, you can check the serial port of the *receiver*, which will print the control commands of the car based on the sensor data reading from CAN bus.

9. Sensor level attack
   - The project is build with python3. Install the library:
   
   ```
   pip install pyserial
   ```

   - run the python code:
   
   ```
   python sensor_level_attack.py
   ```

   - The pyhone code get the sensor data from serial port in real-time (before sending the data to CAN bus), change the data in some reasonal way, and send it back. In this way, the data sent to CAN bus is the wrong one, which will lead the unreasonable control system. As the video shows, with attacking code, it results in "gas up" as the block comes closer to the distance sensor.

# Sensor-level attack
1. Distance sensor
   - Assume the distance sensor is for the Autonomous Cruise Control (ACC) system, which let car to keep a certain distance from the front car. The car will automatically speed up a little bit when the front car getting further (the distance getting larger) and slow down when the front car getting closer (the distance getting smaller).
   - Attacking the distance sensor: when the distance gets smaller, we change is to a large data, which may miss up the control system.
   
2. Temperature sensor
   - Assume the temperature sensor is to sense the water temperature of a car. If the temperature is high, fan should speed up.
   - Attacking the temperature sensor: when the temperature is higher to a threshold (e.g 90°C), we will keep it as threshold temperature. In this way, no warning to the driver, and continuously driving under high temperature will lead to engine break.

3. Water depth sensor
   - Assume the water depth sensor is to sense the oil tank. Regularly, when the data of oil tank is low, there is a warning to the driver to add more gas.
   - Attacking the water depth sensor: as the data from water depth sensor get lower to a threshold point, we will keep it high. Without getting warning of low oil, it may result in engine stop.

# Reference

[1] Ishtiaq Roufa, Rob Millerb, et al. "Security and privacy vulnerabilities of in-car wireless networks: A tire pressure monitoring system case study." 19th USENIX Security Symposium, Washington DC. 2010.

[2] Miller, Charlie, and Chris Valasek. "Remote exploitation of an unaltered passenger vehicle." Black Hat USA 2015 (2015).

[3] Miller, C., Valasek, C.: Car Hacking: For Poories

[4] Smith, C.: Car Hacker’s Handbook

[5] Fürst, Simon, et al. "AUTOSAR–A Worldwide Standard is on the Road." 14th International VDI Congress Electronic Systems for Vehicles, Baden-Baden. Vol. 62. 2009.

[6] Ivanov, Radoslav, Miroslav Pajic, and Insup Lee. "Attack-resilient sensor fusion for safety-critical cyber-physical systems." ACM Transactions on Embedded Computing Systems (TECS) 15.1 (2016): 21.

[7] ERIKA Enterprise Manual, Real-time made easy.
http://download.tuxfamily.org/erika/webdownload/manuals_pdf/ee_refman_1_4_5.pdf, 2012.

[8] RT-Druid reference manual, A tool for the design of embedded real-time systems.
http://download.tuxfamily.org/erika/webdownload/manuals_pdf/rtdruid_refman_1_5.0.pdf, 2012.

[9] ERIKA Enterprise Minimal API Manual multithreading on a thumb.
http://download.tuxfamily.org/erika/webdownload/manuals_pdf/ee_minimal_refman_1_1_3.pdf, 2012

[10] System Generation OIL: OSEK Implementation Language.
http://www.irisa.fr/alf/downloads/puaut/TPNXT/images/oil25.pdf, 2004

[11] ERIKA Enterprise, Current limitations and possible solutions.
http://www.erika-enterprise.com/download/pub/erika_new_v7.pdf, 2016

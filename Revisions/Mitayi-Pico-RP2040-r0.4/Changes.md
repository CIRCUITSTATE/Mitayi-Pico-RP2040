

#
### **+05:30 09:54:46 AM 21-09-2022, Wednesday**

  * The r0.3 PCB looks so complicated with its routing. There are 180+ vias for a rather simple board. So I am going to remove all the tracks and start routing afresh. The r0.3 will be saved for reference anyway.

  * Starts 📢 **r0.4**.

#
### **+05:30 05:47:05 PM 05-09-2022, Monday**

  * Added new version info.
  * Added license info.
  * Connected with [CADLAB.io](https://cadlab.io/project/25932). 
  
#
### **+05:30 05:33:45 PM 27-08-2022, Saturday**

  * The crystal I selected was `YIC-12M20P2/XT324-10/10` from YIC. This is a **12MHz** crystal with 20pF required load capacitance. The four pin crystal has signals on the pins `1` and `3`. But unfortunately the r0.2 had the connections to pins `1` and `2`. Not only that, the `GND` pins of the crystals were never connected. I had to apply a jumper-fix on the r0.2 board as a temporary workaround to get the board working.

  * The capacitor value for the crystal has been changed to **20pF** from 25pF. This is because I thought the capacitors were the problem. RP2040 works fine with 20pF. The approximate capacitor value required is 30pF according to the calculations. 

  * Added a second push-button that can be selected between **Reset** (`RUN`) or **GPIO** (`GPIO2`) functions. The Reset function will only be needed rarely (for example, I used it to recover the RP2040 from a *soft-brick* after I changed the clock selection to 300MHz in the Arduino IDE). So in all other cases, the user can use the push-button as a user input button.

  * I also soldered the `R1` (10K) thinking that could have been the issue. Adding it did not change anything and the board works fine with that in place. R1 is only recommended for some versions of the Flash chip.

  * Removed the secondary voltage regulator.

  * Removed `AREF_VDD` jumper. It is now connected to 3.3V.

  * Starts 📢 **r0.3**.

#
### **+05:30 08:46:57 PM 19-08-2022, Friday**

  Added new `Revisions` folder. When a revision is completed, the projected can be saved to this folder using the **Save As** option in KiCad. This is in addition to generating a git revision. The project must be saved with the revision number at the end, for example ***"Mitayi-Pico-RP2040-r0.2"***. KiCad will complain about recursive folders but you can ignore them. Just delete the recursive `Revisions` folder from the the project that was just saved to the new `Revisions` folder.

  I just saved the version **🎯 r0.2**. Revisions, once saved, should not be modified. Make all the modifications on the root project.

#
### **+05:30 07:03:26 PM 26-08-2021, Thursday**

  I made a few mistakes in the v0.1 design. Some of the vias were placed on top of the pads. While this is not a big issue, PCBWay complained about this. They said the solder mask won't be applied on such vias, which is okay. Still, placing vias on pads is not a good idea. So I modified the design and moved all the vias from pads.

  Another issue is, whenever I am trying to run DRC check, KiCad would crash and leave some ghost processes that I can not terminate. I suspect the DRC crashes because the board has filleted tracks. Launching KiCad after crash is not a problem. It works fine after that. But I am not able to run DRC 😟

  Other than that, I added the Diode to VBUS and created the new VSYS signal. The pinouts has been changed. I removed BOOT_SEL from the header. Also, the supply pin side on the header is now compatible with RPi Pico. I am not going to add TVS diodes on the USB lines yet.

  Some of the via drill sizes were less than 0.3mm. I have now changed all of them to 0.5/0.3mm.

  I am going to keep the few filleted tracks and going to generate new Gerbers. Let's see what happens. This will be **🎯 r0.2**

#
### **+05:30 10:41:48 PM 25-08-2021, Wednesday**

  **Mitayi Pico** is an improved version of **Raspberry Pi Pico**. Mitayi Pico is based on the minimal design for **RP2040** published by RPi. Many cost cutting decisions were went into the design of RPi Pico. Lack of USB Type-C and Reset button are some of that. Mitayi Pico address that and many other limitations of RPi Pico. The differences are,

  1. The original Pico PCB design is created using Altium and files are available for download. But a similar design based on any affordable open source software such as KiCad was not available. Only the minimal board design was available.

  2. RPi Pico doesn't break out all the pins. Mitayi Pico does.

  3. RPi Pico uses buck-boost converter, which can be hard to find or costly. I wanted normal LDOs. Mitayi Pico has that + it has dual regulator option.

  4. RPi Pico's components are small (0201), making it harder to hand-solder. Mitayi uses 0402 and larger packages.

  5. RPi Pico only has Micro-USB. Mitayi Pico has both Type-C and Micro-USB options.

  6. Flash memory chip package is small and hard to hand-solder when we want to change the capacity. Mitayi uses SOIC-8 package which is easily solderable.

  7. RPi Pico doesn't have a RESET button. Mitayi does.

  8. RPi Pico and Mitayi Pico have different pinouts.

  9. Debug LED has solder jumper to disconnect it from the GPIO pin.

  10. RPi Pico and Mitayi Pico share the same dimensions of 21 mm x 50 mm, with almost the same positions for mounting holes.

  11. Component references are not present on the silkscreen of RPi Pico. Mitayi Pico has all the reference to help in manual assembly.

  The word "Mitayi" means Confectionary in Malayalam and Hindi. Mitayi will be a series of boards **CIRCUITSTATE Electronics** will develop. I am still not sure whether to name the new board "Pico" because that might create confusion with the original Pico. I have to find a unique name.

  I have finished the **🎯 v0.1** of the Pico. But it needs some changes. I will commit this version to be used as the base. The changes needed are,

  1. I need to add a reverse protection diode MBR120 to the VBUS line. This will create a new signal VSYS. It has to be broken out, replacing V_EN from the header.

  2. Have to add USB data line TVS diodes.


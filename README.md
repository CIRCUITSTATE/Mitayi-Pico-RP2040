
# Mitayi-Pico-D1

[**Mitayi-Pico-D1**](https://github.com/CIRCUITSTATE/Mitayi-Pico-RP2040) is the first development board from **CIRCUITSTATE Electronics**. The board is based on the **RP2040** microcontroller from Raspberry Pi and is designed after the official [**Raspberry Pi Pico**](https://www.raspberrypi.com/products/raspberry-pi-pico/) board, but adds a few improvements over it. **D1** is the first design variant of Mitayi-Pico. Mitayi-Pico is not pin-compatible with the official Raspberry Pi Pico. The schematic and PCB are designed with **KiCad**, an open-source EDA tool. All the design files of Mitayi-Pico are completely open-source and released under the MIT license.

## Features & Differences

- **RP2040** dual-core, 133MHz ARM Cortex M0+ microcontroller.
- Up to 16 MB Flash memory in `SOIC-8` package.
- USB-C for power and communication.
- USB solder pads.
- **MIC5219** LDO with 3.3V, 500 mA output.
- Power indication LED.
- `RESET` button.
- `BOOTSEL` button reconfigurable as GPIO input button.
- Debug LED with GPIO solder jumper.
- Breaks out all MCU GPIO pins.
- **EXP8** expansion connector in 2x4 2.54mm pin header. Breaks out SPI, UART and I2C.
- 3-pin SWD connector.
- Uses 0402 or larger SMD packages.
- **Mitayi-Pico is not pin-compatible with the official Raspberry Pi Pico.**
- Same dimensions of 21 mm x 50 mm, with almost the same positions for mounting holes.
- Completely open-source design made with KiCad 9.

## Design

- **Parent Project:** Mitayi-Pico
- **Variant:** [Mitayi-Pico-D1](https://github.com/CIRCUITSTATE/Mitayi-Pico-RP2040)
- **Author:** Vishnu Mohanan (@vishnumaiea)
- **Latest Revision:** `R0.6`
- **Layer Count:** 2
- **Thickness:** 1.6 mm
- **Dimensions:** 51 x 21 mm
- **EDA Tool:** KiCad V9
- **License:** MIT

## Contributing

If you would like to contribute this project, you are welcome to post issues and feature requests on the **Issues** page. If you fork this project and created a new variant, you can let us know about it and get a unique identifier assigned for your project. The ID takes the following form.

```
Y<digit><letter><digit>
```

`Y` – Constant prefix.

`<digit>` – Digits from 0–9

`<letter>` – Characters from A–Z.

**Examples:**

```
Y1A1
Y1A2
```

## References

- [**Raspberry Pi Pico** - Product Page](https://www.raspberrypi.com/products/raspberry-pi-pico/)
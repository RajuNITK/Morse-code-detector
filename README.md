# Morse Code Detector (using FPGA)

Morse Code Detector on an FPGA using Verilog Hardware description language (Verilog HDL). Course Project of the course "Digital Systems and Microcontrollers (ES 232)".

## Description of the Project:
Morse code comprises of a series of dots and dashes corresponding to a particular character of the alphanumeric characters (alphabets and digits). In this project, the Morse code is inputted using push buttons present on the FPGA. Generally in Morse code, a dot corresponds to one unit and a dash corresponds to three units, space between parts of the same letter is one unit, space between letters is three units and space between different words is seven units. The spaces correspond to low voltage value (or 0 in binary) and the dots and dashes correspond to high voltage value (or 1 in binary).

The basic idea is to set a particular range of time period to interpret the signal as a dot, a dash or different kinds of spaces. At the instant when we start to push the button (positive edge) or leave the button (negative edge), a new clock will start and the time period of each clock will determine the sequence of dots and dashes. Using an asynchronous FSM, we detect the input sequence and the output can be generated using the FPGA and the character(s) can be displayed on the LCD Screen/ 7-Segment display.

There are broadly two parts to this project: 
1. Designing the FSM 
2. Coding the FSM using Verilog and implementing on the FPGA.

## Final Project Demonstration:
In the final working model of the Morse code detector, the user can give the input using the push buttons present on the FPGA. The output on the LCD Screen/ 7-Segment Display will show what is being inputted through the push buttons.

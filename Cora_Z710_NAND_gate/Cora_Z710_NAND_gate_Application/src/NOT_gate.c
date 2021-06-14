/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * NOT_gate.c: simple test application for connectivity between the PL and the PS
 * PL implements a AND gate between the two buttons (btn0 and btn1)
 * and the PS performs the NOT gate of this and sends it to led0_b
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xparameters.h"


int main()
{
    init_platform(); //initializes the platform

    int count = 0;
    char scount[5];
    print("I am a Cora Z710 running simple connectivity test for PS/PL \n\r"); // baud rate 115200

    XGpio input, output; 	// our two AXI GPIO in Vivado

    int y;	//read value coming from the AND gate in PL (AND gate)
    char s_and_gate[5]; // string for y value
    int not_y; // the neg value of y implemented by the PS (NOT gate)
    char s_nand_gate[5]; // string for not_y value

    XGpio_Initialize(&input, XPAR_AXI_GPIO_0_DEVICE_ID); //initialize the AXI GPIO 0 module for input
    XGpio_Initialize(&output, XPAR_AXI_GPIO_1_DEVICE_ID); //initialize the AXI GPIO 0 module for output

    // SetDataDirection Register
    // first arg => XGpio data type which points to Vivado AXI GPIO module
    // second arg => the number of channels (we did not clicked "Dual Channel" thereby we need only 1)
    // thrid arg => Data Direction reg is 0 for output and 1 for input
    XGpio_SetDataDirection(&input, 1, 1);
    XGpio_SetDataDirection(&output, 1, 0); //


    while (1) {
        // just to look it through Serial Port
    	print("Jose: Cora Z710: loop_count = ");
        itoa(count, scount, 10);
        print(scount);
    	count++;

    	// NOT_gate
    	y = XGpio_DiscreteRead(&input, 1); //reads from the AXI GPIO
    	print(" , AND_gate = ");
    	itoa(y, s_and_gate, 10);
        print(s_and_gate);
    	if (y == 1) {
    		not_y = 0;
    	}
    	else {
    		not_y = 1;
    	}
    	print(" , NAND_gate = ");
    	itoa(not_y, s_nand_gate, 10);
        print(s_nand_gate);
        print("\n\r");
    	XGpio_DiscreteWrite(&output, 1, not_y);
    }

    cleanup_platform();
    return 0;
}

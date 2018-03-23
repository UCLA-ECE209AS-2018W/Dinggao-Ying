/* ###*B*###
 * Erika Enterprise, version 3
 * 
 * Copyright (C) 2017 Evidence s.r.l.
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License, version 2, for more details.
 * 
 * You should have received a copy of the GNU General Public License,
 * version 2, along with this program; if not, see
 * <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html >.
 * 
 * This program is distributed to you subject to the following
 * clarifications and special exceptions to the GNU General Public
 * License, version 2.
 * 
 * THIRD PARTIES' MATERIALS
 * 
 * Certain materials included in this library are provided by third
 * parties under licenses other than the GNU General Public License. You
 * may only use, copy, link to, modify and redistribute this library
 * following the terms of license indicated below for third parties'
 * materials.
 * 
 * In case you make modified versions of this library which still include
 * said third parties' materials, you are obligated to grant this special
 * exception.
 * 
 * The complete list of Third party materials allowed with ERIKA
 * Enterprise version 3, together with the terms and conditions of each
 * license, is present in the file THIRDPARTY.TXT in the root of the
 * project.
 * ###*E*### */

/** \file	code.cpp
 *  \brief	Main application.
 *
 *  This file contains the code of main application for Erika Enterprise.
 *
 *  \author	Giuseppe Serano
 *  \date	2017
 */

/* ERIKA Enterprise. */
#include "ee.h"

/* Arduino SDK. */
#include "Arduino.h"

#include "mcp_can.h"

/*
 * Pin 13 has an LED connected on most Arduino boards.
 * give it a name:
 */
int led = 13;
unsigned int volatile TaskL1_count;

const int SPI_CS_PIN = 10;
unsigned char stmp[8] = {0, 0, 0, 0, 0, 0, 0, 0};


boolean   volatile stk_wrong = false;
OsEE_addr volatile old_sp;

extern "C" {
	DeclareTask(TaskL1);
	MCP_CAN CAN(SPI_CS_PIN);

	void idle_hook (void);
}

#if (defined(OSEE_API_DYNAMIC))
TaskType TaskL1;
//TaskType TaskL2;
#endif /* OSEE_API_DYNAMIC */

void loop(void) {
	ActivateTask(TaskL1);
	if ( !stk_wrong ) {
		if (!old_sp) {
		    old_sp = osEE_get_SP();
		}
		else if (old_sp != osEE_get_SP()) {
		    stk_wrong = true;
		    digitalWrite(led, HIGH);
		}
	}
}

void setup(void) {
	/* initialize the digital pin as an output. */
	//pinMode(led, OUTPUT);
	Serial.begin(115200);
	while (CAN_OK != CAN.begin(CAN_500KBPS)) {              // init can bus : baudrate = 500k
	   Serial.println("CAN BUS Shield init fail");
	   Serial.println(" Init CAN BUS Shield again");
	   delay(100);
	}
	Serial.println("CAN BUS Shield init ok!");
	Serial.println("Arduino Water Level Sensor"); //Print a message
}

void idle_hook (void) {
	loop();
	if (serialEventRun) serialEventRun();
}

int main(void) {

	init();

	setup();

#if defined(USBCON)
	USBDevice.attach();
#endif

#if (defined(OSEE_API_DYNAMIC))
	CreateTask(
		&TaskL1,		/* taskIdRef */
		OSEE_TASK_TYPE_BASIC,	/* taskType */
		TASK_FUNC(TaskL1),	/* taskFunc */
		1U,			/* readyPrio */
		1U,			/* dispatchPrio */
		1U,			/* maxNumOfAct */
		OSEE_SYSTEM_STACK		/* stackSize */
	);

	SetIdleHook(idle_hook);
#endif /* OSEE_API_DYNAMIC */

	StartOS(OSDEFAULTAPPMODE);

	return 0;
}

TASK(TaskL1) {
	int level = analogRead(A0);
	if (level < 500){
		level = 0;
	}else{
		level = level - 500;
	}

	stmp[0] = (level >> 56) & 0xFF;
	stmp[1] = (level >> 48) & 0xFF;
	stmp[2] = (level >> 40) & 0xFF;
	stmp[3] = (level >> 32) & 0xFF;
	stmp[4] = (level >> 24) & 0xFF;
	stmp[5] = (level >> 16) & 0xFF;
	stmp[6] = (level >> 8) & 0xFF;
	stmp[7] = level & 0xFF;

	Serial.write(stmp, 8);
	Serial.write("\n");

	while(Serial.read() == 'i') {
		for (int i = 0; i < 8; i++) {
			stmp[i] = Serial.read();
//			Serial.print(stmp[i]);

		}
//		Serial.print(" was send. \n");
	}


	// send data:  id = 0x00, standard frame, data len = 8, stmp: data buf
	CAN.sendMsgBuf(0x02, 0, 8, stmp);
	delay(1000);


	++TaskL1_count;
	TerminateTask();
};

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

/** \file	tasks.cpp
 *  \brief	Tasks.
 *
 *  This file contains the code of application tasks for Erika Enterprise.
 *
 *  \author	Giuseppe Serano
 *  \date	2017
 */

/* ERIKA Enterprise. */
#include "ee.h"

/* Arduino SDK. */
#include "Arduino.h"
#include "mcp_can.h"
#include "SPI.h"

#define DIS_ID 0x00
#define TEMP_ID 0x01
#define DEPTH_ID 0x02
#define BREAK_THRES 50

extern "C" {
//MCP_CAN CAN(10);

DeclareTask(TaskL1);

#if (defined(OSEE_API_DYNAMIC))
extern TaskType TaskL1;
#endif /* OSEE_API_DYNAMIC */

extern int led;

unsigned int volatile TaskL1_count;
unsigned int volatile dis_cur, dis_change, temp, depth;
extern unsigned int volatile dis_prev;
unsigned int volatile result = 0;

extern boolean stk_wrong;

unsigned int volatile isr_cnt;

#define	TIMER1_ISR_DIVISOR	1000
MCP_CAN CAN_rec(10);
TASK(TaskL1)
{
  isr_cnt++;
  unsigned char len = 0;
  unsigned char buf[8];

  if (isr_cnt >= TIMER1_ISR_DIVISOR)
  {
    isr_cnt = 0;
    if(CAN_MSGAVAIL == CAN_rec.checkReceive()) {
    	CAN_rec.readMsgBuf(&len, buf);

		for (int i = 0; i < 8; i++) {
			result = result * 256 + buf[i];
		}
    	unsigned int canId = CAN_rec.getCanId();
    	switch (canId) {
    	  case DIS_ID:
    		  dis_cur = (unsigned int) result;
    	      dis_change = dis_prev - dis_cur;
    		  dis_prev = dis_cur;
    	      if(dis_change > 0) {
    	    	  if(dis_change < BREAK_THRES) {
    	    		  Serial.println("Recommended Control Change: Gas Down");
    	    	  } else {
    	    		  Serial.println("Recommended Control Change: Break");
    	    	  }
    	      } else if(dis_change < 0) {
    	    	  Serial.println("Recommended Control Change: Gas Up");
    	      } else {
    	    	  Serial.println("Recommended Control Change: Keep");
    	      }
    	      break;
    	  case TEMP_ID:
			temp = (unsigned int) result;
			if(temp < 60) {
				Serial.println("Car Temp Status: Cold , Warning");
			} else if(temp >= 60 && temp < 85) {
				Serial.println("Car Temp Status: Cold, Fan Speed Down");
			} else if(temp >= 85 && temp < 95) {
				Serial.println("Car Temp Status: Normal and Balanced");
			} else if(temp >= 95 && temp < 110) {
				Serial.println("Car Temp Status: Hot, Fan Speed Up");
			} else {
				Serial.println("Car Temp Status: Hot, Warning");
			}
			break;
    	  case DEPTH_ID:
    		  depth = (unsigned int) result;
			  if(depth < 20) {
				  Serial.println("Car oil tank Status: low");
			  } else if(depth >= 20 && depth < 100) {
				  Serial.println("Car oil tank Status: mid");
			  } else {
				  Serial.println("Car oil tank Status: high");
			  }
    		  break;
    	  default:
    		  Serial.println("-----------------------------");
			  Serial.print("Get data from ID: ");
			  Serial.println(canId, HEX);

			  for(int i = 0; i<len; i++)    // print the data
			  {
				  Serial.print(buf[i], HEX);
				  Serial.print("\t");
			  }
			  Serial.println();
		}
    }


  }

  ++TaskL1_count;
  TerminateTask();
};

}	/* extern "C" */

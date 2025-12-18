// ov7670_i2c.h
#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#include "xstatus.h"

// Initialiseert I2C en programmeert de OV7670 met de vaste registertabel.
// Retourneert XST_SUCCESS bij succes, anders een foutcode.
int Ov7670_Init(void);

#ifdef __cplusplus
}
#endif

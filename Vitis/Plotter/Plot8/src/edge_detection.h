#pragma once

// Includes
extern "C"{
    #include "xparameters.h"
    #include "xil_io.h"
}

// Registers

class edge_detection{             
    public:
        // Initialisation functions
        edge_detection();

        // Edge detection functions
        static void detectEdge();
    private:
};
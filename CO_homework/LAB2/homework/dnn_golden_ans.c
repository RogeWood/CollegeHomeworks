#include <stdio.h>

// Updated DNN function
void dnn(float v_hidden[3][4], float w_hidden[2][2][4], float b_hidden[2][2], int DIM[3])
{
    int idxi, idxj, idxz;
    float tempVal;

    // DNN operation
    for (idxz = 1; idxz < 3; idxz++) // Loop through hidden and output layers
    {
        for (idxi = 0; idxi < DIM[idxz]; idxi++)
        {
            tempVal = b_hidden[idxz - 1][idxi];
            //printf("%d\n", DIM[idxz - 1]);
            for (idxj = 0; idxj < DIM[idxz - 1]; idxj++)
            {
                tempVal += v_hidden[idxz - 1][idxj] * w_hidden[idxz - 1][idxi][idxj];
                
                //printf("%f+= %f + %f\n", tempVal, v_hidden[idxz - 1][idxj], w_hidden[idxz - 1][idxi][idxj]);
            }

            if(idxz == 0) printf("%d\n", idxi);
            if(idxz == 1) printf("%d\n", idxi+4);
            if(idxz == 2) printf("%d\n", idxi+6);
            if (idxz < 2) // Apply ReLU only to hidden layer
                tempVal = tempVal > 0 ? tempVal : 0;
            v_hidden[idxz][idxi] = tempVal;
        }
    }

    // Print the output layer values
    for(idxz = 0; idxz < 1; idxz++) // Only one output neuron
        printf("%x\n", *(unsigned int*)&v_hidden[2][idxz]);
}

int main(void){
    // Updated v_hidden: 3 layers with sizes 4, 2, 1
    float v_hidden[3][4] = {
        {0.138, -0.42, -0.9835, -0.1827}, // Input layer
        {0.0, 0.0},                        // Hidden layer
        {0.0}                               // Output layer
    };

    // Updated w_hidden: 2 layers of weights (hidden and output)
    float w_hidden[2][2][4] = {
        { // Weights from input (4) to hidden (2)
            {-0.4108, -0.4864, -0.9012, 0.5346},
            {0.6727, -0.9481, -0.8063, -0.0589}
        },
        { // Weights from hidden (2) to output (1)
            {0.9884, -0.9256}
        }
    };

    // Updated b_hidden: 2 bias layers (hidden and output)
    float b_hidden[2][2] = {
        {-0.6899, -0.513}, // Biases for hidden layer
        {0.0604}            // Bias for output layer
    };
    
    // Updated DIM: 3 layers with sizes 4, 2, 1
    int DIM[3] = {4, 2, 1};
    
    dnn(v_hidden, w_hidden, b_hidden, DIM);
    
    return 0;
}

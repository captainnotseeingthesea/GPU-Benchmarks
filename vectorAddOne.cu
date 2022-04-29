/**
 * Copyright 1993-2015 NVIDIA Corporation.  All rights reserved.
 *
 * Please refer to the NVIDIA end user license agreement (EULA) associated
 * with this source code for terms and conditions that govern your use of
 * this software. Any use, reproduction, disclosure, or distribution of
 * this software and related documentation outside the terms of the EULA
 * is strictly prohibited.
 *
 */

/**
 * Vector addition: B = A + 1.
 *
 * This sample is a very basic sample that implements element by element
 * vector addition. It is the same as the sample illustrating Chapter 2
 * of the programming guide with some additions like error checking.
 */

 #include <stdio.h>

 #include "benchmark_common.h"

 // For the CUDA runtime routines (prefixed with "cuda_")
 #include <cuda_runtime.h>
 #include <helper_cuda.h>

 /**
  * CUDA Kernel Device code
  *
  * Computes the vector addition of B and 1 into B
  */
 
 __global__ void
 vectorAddOne(float *A, float *B, int numElements)
 {
     int i = blockDim.x * blockIdx.x + threadIdx.x;
 
     if (i < numElements)
     {
         B[i] = A[i] + 1;
     }
 }
 
 
 /**
  * Host main routine
  */
 int mainVectorAddOne(cudaStream_t stream, pthread_mutex_t *mutexapp, bool flag)
 {
     // Error code to check return values for CUDA calls
     cudaError_t err = cudaSuccess;
 
     // Print the vector length to be used, and compute its size
     int numElements = 50000;
     size_t size = numElements * sizeof(float);
     printf("[Vector addition of %d elements]\n", numElements);
 
     // Allocate the host input vector A
     float *h_A = (float *)malloc(size);
 
     // Allocate the host output vector B
     float *h_B = (float *)malloc(size);
 
     // Verify that allocations succeeded
     if (h_A == NULL || h_B == NULL)
     {
         fprintf(stderr, "Failed to allocate host vectors!\n");
         exit(EXIT_FAILURE);
     }
 
     // Initialize the host input vectors
     for (int i = 0; i < numElements; ++i)
     {
         h_A[i] = rand()/(float)RAND_MAX;
     }
 
     // Allocate the device input vector A
     float *d_A = NULL;
     err = cudaMalloc((void **)&d_A, size);
 
     if (err != cudaSuccess)
     {
         fprintf(stderr, "Failed to allocate device vector A (error code %s)!\n", cudaGetErrorString(err));
         exit(EXIT_FAILURE);
     }
 
     // Allocate the device input vector B
     float *d_B = NULL;
     err = cudaMalloc((void **)&d_B, size);
 
     if (err != cudaSuccess)
     {
         fprintf(stderr, "Failed to allocate device vector B (error code %s)!\n", cudaGetErrorString(err));
         exit(EXIT_FAILURE);
     }
 
     if (err != cudaSuccess)
     {
         fprintf(stderr, "Failed to allocate device vector C (error code %s)!\n", cudaGetErrorString(err));
         exit(EXIT_FAILURE);
     }
 
     // Copy the host input vectors A and B in host memory to the device input vectors in
     // device memory
     printf("Copy input data from the host memory to the CUDA device\n");
     err = cudaMemcpyAsync(d_A, h_A, size, cudaMemcpyHostToDevice, stream);
 
     if (err != cudaSuccess)
     {
         fprintf(stderr, "Failed to copy vector A from host to device (error code %s)!\n", cudaGetErrorString(err));
         exit(EXIT_FAILURE);
     }
 
     // Launch the Vector Add CUDA Kernel
     int threadsPerBlock = 256;
     int blocksPerGrid =(numElements + threadsPerBlock - 1) / threadsPerBlock;
     printf("CUDA kernel launch with %d blocks of %d threads\n", blocksPerGrid, threadsPerBlock);
     vectorAddOne<<<blocksPerGrid, threadsPerBlock, 0, stream>>>(d_A, d_B, numElements);
 
     pthread_mutex_unlock (mutexapp);

     err = cudaGetLastError();
 
     if (err != cudaSuccess)
     {
         fprintf(stderr, "Failed to launch vectorAdd kernel (error code %s)!\n", cudaGetErrorString(err));
         exit(EXIT_FAILURE);
     }
 
     // Copy the device result vector in device memory to the host result vector
     // in host memory.
     printf("Copy output data from the CUDA device to the host memory\n");
     err = cudaMemcpyAsync(h_B, d_B, size, cudaMemcpyDeviceToHost, stream);

     if (err != cudaSuccess)
     {
         fprintf(stderr, "Failed to copy vector B from device to host (error code %s)!\n", cudaGetErrorString(err));
         exit(EXIT_FAILURE);
     }
    if(flag){
        cudaStreamSynchronize(stream);
     }else
        cudaThreadSynchronize();
     // Verify that the result vector is correct
     for (int i = 0; i < numElements; ++i)
     {
         if (fabs(h_A[i] - h_B[i] + 1) > 1e-5)
         {
             fprintf(stderr, "Result verification failed at element %d!\n", i);
             exit(EXIT_FAILURE);
         }
     }
 
     printf("Vector Add One Test PASSED\n");
 
     // Free device global memory
     err = cudaFree(d_A);
 
     if (err != cudaSuccess)
     {
         fprintf(stderr, "Failed to free device vector A (error code %s)!\n", cudaGetErrorString(err));
         exit(EXIT_FAILURE);
     }
 
     err = cudaFree(d_B);
 
     if (err != cudaSuccess)
     {
         fprintf(stderr, "Failed to free device vector B (error code %s)!\n", cudaGetErrorString(err));
         exit(EXIT_FAILURE);
     }
 
     // Free host memory
     free(h_A);
     free(h_B);

     printf("mainVectorAddOne Done\n");
     return 0;
 }
 
 
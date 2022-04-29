#ifndef _BENCHMARK
#define _BENCHMARK
#include <cuda_runtime.h>
#include <pthread.h>


int mainVectorAdd(cudaStream_t stream, pthread_mutex_t *mutexapp, bool flag);
int mainVectorAddOne(cudaStream_t stream, pthread_mutex_t *mutexapp, bool flag);
int main_NW(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_LUD(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_HOTSPOT(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_PATHFINDER(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_KMEANS(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_SRADV1(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_SRADV2(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_BFS2(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_NN(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_SAD(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_threeDS(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_BlackScholes(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_BP(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_cfd(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_CONS(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_fft(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_FWT(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_gups(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_JPEG(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_LPS(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_lib(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_lulesh(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_CN(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_GRU(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_LSTM(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_MUM(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_QTC(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_RED(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_streamcluster(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_scan(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_SRAD(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_TRD(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_BFS(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_mri_q(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_SPMV(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_ATAX(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_BICG(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
int main_3DCONV(cudaStream_t stream_app, pthread_mutex_t *mutexapp, bool flag);
#endif
